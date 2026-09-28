###### Class com.danfe.restaurantapp1.helper.PrintPdf (com.danfe.restaurantapp1.helper.PrintPdf)
.class public Lcom/danfe/restaurantapp1/helper/PrintPdf;
.super Ljava/lang/Object;
.source "PrintPdf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

.field private orderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "orderItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf;->orderItemList:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/print/pdf/PrintedPdfDocument;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/PrintPdf;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    return-object v0
.end method

.method static synthetic access$102(Lcom/danfe/restaurantapp1/helper/PrintPdf;Landroid/print/pdf/PrintedPdfDocument;)Landroid/print/pdf/PrintedPdfDocument;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/PrintPdf;
    .param p1, "x1"    # Landroid/print/pdf/PrintedPdfDocument;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    return-object p1
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/PrintPdf;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/PrintPdf;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf;->orderItemList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public doPrint()V
    .registers 7

    .prologue
    .line 42
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf;->context:Landroid/content/Context;

    const-string v4, "print"

    .line 43
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintManager;

    .line 45
    .local v2, "printManager":Landroid/print/PrintManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf;->context:Landroid/content/Context;

    const v5, 0x7f080041

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Document"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "jobName":Ljava/lang/String;
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 49
    .local v0, "builder":Landroid/print/PrintAttributes$Builder;
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->ISO_A9:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 50
    sget-object v3, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    .line 51
    new-instance v3, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;-><init>(Lcom/danfe/restaurantapp1/helper/PrintPdf;Lcom/danfe/restaurantapp1/helper/PrintPdf$1;)V

    .line 52
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v4

    .line 51
    invoke-virtual {v2, v1, v3, v4}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 53
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.PrintPdf.AnonymousClass1 (com.danfe.restaurantapp1.helper.PrintPdf$1)
.class synthetic Lcom/danfe/restaurantapp1/helper/PrintPdf$1;
.super Ljava/lang/Object;
.source "PrintPdf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/PrintPdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.danfe.restaurantapp1.helper.PrintPdf.MyPrintDocumentAdapter (com.danfe.restaurantapp1.helper.PrintPdf$MyPrintDocumentAdapter)
.class Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintPdf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/PrintPdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPrintDocumentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;


# direct methods
.method private constructor <init>(Lcom/danfe/restaurantapp1/helper/PrintPdf;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/danfe/restaurantapp1/helper/PrintPdf;Lcom/danfe/restaurantapp1/helper/PrintPdf$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/danfe/restaurantapp1/helper/PrintPdf;
    .param p2, "x1"    # Lcom/danfe/restaurantapp1/helper/PrintPdf$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;-><init>(Lcom/danfe/restaurantapp1/helper/PrintPdf;)V

    return-void
.end method

.method private computePageCount(Landroid/print/PrintAttributes;)I
    .registers 8
    .param p1, "printAttributes"    # Landroid/print/PrintAttributes;

    .prologue
    .line 157
    const/4 v0, 0x4

    .line 159
    .local v0, "itemsPerPage":I
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    .line 160
    .local v1, "pageSize":Landroid/print/PrintAttributes$MediaSize;
    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v3

    if-nez v3, :cond_c

    .line 162
    const/4 v0, 0x6

    .line 166
    :cond_c
    const/16 v2, 0xc

    .line 168
    .local v2, "printItemCount":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    return v3
.end method

.method private drawPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    .registers 15
    .param p1, "page"    # Landroid/graphics/pdf/PdfDocument$Page;

    .prologue
    const/high16 v12, -0x1000000

    const/high16 v3, 0x432c0000    # 172.0f

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/16 v10, 0x61

    .line 134
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 136
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/16 v8, 0x48

    .line 137
    .local v8, "titleBaseLine":I
    const/16 v7, 0xa

    .line 138
    .local v7, "leftMargin":I
    const-string v2, "order to print"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$300(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 140
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    const-string v2, "Kot"

    int-to-float v4, v7

    int-to-float v9, v8

    invoke-virtual {v0, v2, v4, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$300(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v4, v7

    int-to-float v9, v10

    invoke-virtual {v0, v2, v4, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_53
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$300(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_a2

    .line 146
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    add-int/lit8 v2, v6, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v4, v7

    int-to-float v9, v10

    invoke-virtual {v0, v2, v4, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$300(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x23

    int-to-float v4, v4

    int-to-float v9, v10

    invoke-virtual {v0, v2, v4, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 149
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$300(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3c

    int-to-float v4, v4

    int-to-float v9, v10

    invoke-virtual {v0, v2, v4, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 151
    :cond_a2
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    move v2, v1

    move v4, v3

    .line 152
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    new-instance v3, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$200(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$102(Lcom/danfe/restaurantapp1/helper/PrintPdf;Landroid/print/pdf/PrintedPdfDocument;)Landroid/print/pdf/PrintedPdfDocument;

    .line 65
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 66
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 86
    :goto_19
    return-void

    .line 71
    :cond_1a
    invoke-direct {p0, p2}, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->computePageCount(Landroid/print/PrintAttributes;)I

    move-result v1

    .line 73
    .local v1, "pages":I
    if-lez v1, :cond_39

    .line 75
    new-instance v2, Landroid/print/PrintDocumentInfo$Builder;

    const-string v3, "kot.pdf"

    invoke-direct {v2, v3}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 77
    invoke-virtual {v2, v3}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 81
    .local v0, "info":Landroid/print/PrintDocumentInfo;
    const/4 v2, 0x1

    invoke-virtual {p4, v0, v2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    goto :goto_19

    .line 84
    .end local v0    # "info":Landroid/print/PrintDocumentInfo;
    :cond_39
    const-string v2, "Page count calculation failed."

    invoke-virtual {p4, v2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 12
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    const/4 v6, 0x0

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v3, 0x2

    if-ge v1, v3, :cond_36

    .line 101
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$100(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/print/pdf/PrintedPdfDocument;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 103
    .local v2, "page":Landroid/graphics/pdf/PdfDocument$Page;
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 104
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    .line 105
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$100(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/print/pdf/PrintedPdfDocument;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 106
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v3, v6}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$102(Lcom/danfe/restaurantapp1/helper/PrintPdf;Landroid/print/pdf/PrintedPdfDocument;)Landroid/print/pdf/PrintedPdfDocument;

    .line 131
    .end local v2    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :goto_26
    return-void

    .line 110
    .restart local v2    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :cond_27
    invoke-direct {p0, v2}, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->drawPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 112
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$100(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/print/pdf/PrintedPdfDocument;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 118
    .end local v2    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :cond_36
    :try_start_36
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$100(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/print/pdf/PrintedPdfDocument;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    .line 119
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 118
    invoke-virtual {v3, v4}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_48} :catch_5a
    .catchall {:try_start_36 .. :try_end_48} :catchall_71

    .line 124
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$100(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/print/pdf/PrintedPdfDocument;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 125
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v3, v6}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$102(Lcom/danfe/restaurantapp1/helper/PrintPdf;Landroid/print/pdf/PrintedPdfDocument;)Landroid/print/pdf/PrintedPdfDocument;

    .line 129
    invoke-virtual {p4, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_26

    .line 120
    :catch_5a
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_71

    .line 124
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$100(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/print/pdf/PrintedPdfDocument;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 125
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v3, v6}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$102(Lcom/danfe/restaurantapp1/helper/PrintPdf;Landroid/print/pdf/PrintedPdfDocument;)Landroid/print/pdf/PrintedPdfDocument;

    goto :goto_26

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_71
    move-exception v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$100(Lcom/danfe/restaurantapp1/helper/PrintPdf;)Landroid/print/pdf/PrintedPdfDocument;

    move-result-object v4

    invoke-virtual {v4}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 125
    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/PrintPdf$MyPrintDocumentAdapter;->this$0:Lcom/danfe/restaurantapp1/helper/PrintPdf;

    invoke-static {v4, v6}, Lcom/danfe/restaurantapp1/helper/PrintPdf;->access$102(Lcom/danfe/restaurantapp1/helper/PrintPdf;Landroid/print/pdf/PrintedPdfDocument;)Landroid/print/pdf/PrintedPdfDocument;

    throw v3
.end method
