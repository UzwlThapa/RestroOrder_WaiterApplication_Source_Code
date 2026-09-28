package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.pdf.PdfDocument;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class PrintPdf {
    private Context context;
    private PrintedPdfDocument mPdfDocument;
    private ArrayList<OrderDetailDb> orderItemList;

    public PrintPdf(Context context, ArrayList<OrderDetailDb> orderItemList) {
        this.context = context;
        this.orderItemList = orderItemList;
    }

    public void doPrint() {
        PrintManager printManager = (PrintManager) this.context.getSystemService("print");
        String jobName = this.context.getString(R.string.app_name) + " Document";
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setMediaSize(PrintAttributes.MediaSize.ISO_A9);
        builder.setMinMargins(PrintAttributes.Margins.NO_MARGINS);
        printManager.print(jobName, new MyPrintDocumentAdapter(), builder.build());
    }

    private class MyPrintDocumentAdapter extends PrintDocumentAdapter {
        private MyPrintDocumentAdapter() {
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(PrintAttributes oldAttributes, PrintAttributes newAttributes, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback callback, Bundle metadata) {
            PrintPdf.this.mPdfDocument = new PrintedPdfDocument(PrintPdf.this.context, newAttributes);
            if (cancellationSignal.isCanceled()) {
                callback.onLayoutCancelled();
                return;
            }
            int pages = computePageCount(newAttributes);
            if (pages > 0) {
                PrintDocumentInfo info = new PrintDocumentInfo.Builder("kot.pdf").setContentType(0).setPageCount(pages).build();
                callback.onLayoutFinished(info, true);
            } else {
                callback.onLayoutFailed("Page count calculation failed.");
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRanges, ParcelFileDescriptor destination, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback callback) {
            for (int i = 0; i < 2; i++) {
                try {
                    PdfDocument.Page page = PrintPdf.this.mPdfDocument.startPage(i);
                    if (cancellationSignal.isCanceled()) {
                        callback.onWriteCancelled();
                        return;
                    } else {
                        drawPage(page);
                        PrintPdf.this.mPdfDocument.finishPage(page);
                    }
                } catch (IOException e) {
                    callback.onWriteFailed(e.toString());
                } finally {
                    PrintPdf.this.mPdfDocument.close();
                    PrintPdf.this.mPdfDocument = null;
                }
            }
            PrintPdf.this.mPdfDocument.writeTo(new FileOutputStream(destination.getFileDescriptor()));
            PrintPdf.this.mPdfDocument.close();
            PrintPdf.this.mPdfDocument = null;
            callback.onWriteFinished(pageRanges);
        }

        private void drawPage(PdfDocument.Page page) {
            Canvas canvas = page.getCanvas();
            Log.e("order to print", String.valueOf(PrintPdf.this.orderItemList));
            Paint paint = new Paint();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            paint.setTextSize(11.0f);
            canvas.drawText("Kot", 10, 72, paint);
            paint.setTextSize(5.0f);
            canvas.drawText(String.valueOf(((OrderDetailDb) PrintPdf.this.orderItemList.get(0)).getId()), 10, 97, paint);
            for (int i = 0; i < PrintPdf.this.orderItemList.size(); i++) {
                paint.setTextSize(5.0f);
                canvas.drawText(String.valueOf(i + 1), 10, 97, paint);
                canvas.drawText(((OrderDetailDb) PrintPdf.this.orderItemList.get(i)).getTitle(), 35, 97, paint);
                canvas.drawText(String.valueOf(((OrderDetailDb) PrintPdf.this.orderItemList.get(i)).getQuantity()), 60, 97, paint);
            }
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawLine(100.0f, 100.0f, 172.0f, 172.0f, paint);
        }

        private int computePageCount(PrintAttributes printAttributes) {
            PrintAttributes.MediaSize pageSize = printAttributes.getMediaSize();
            if (!pageSize.isPortrait()) {
            }
            return (int) Math.ceil(1.0d);
        }
    }
}
