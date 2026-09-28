package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.CardView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.model.TableDb;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TableAdapter extends BaseAdapter {
    LayoutInflater inflater;
    private Context mContext;
    private List<TableDb> tableArray;
    private TableDb tableDb;
    public static int MERGE_TABLE_ID = 0;
    public static boolean MERGE_CASE = false;
    private RestaurantDatabase restaurantDatabase = new RestaurantDatabase();
    private List<Boolean> checkState = new ArrayList();
    private List<Boolean> visibleState = new ArrayList();

    public TableAdapter(Context c, List<TableDb> tableArray) {
        this.mContext = c;
        this.tableArray = tableArray;
        MERGE_TABLE_ID = 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Log.e("AdapterCount", String.valueOf(this.tableArray.size()));
        return this.tableArray.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.tableArray.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        final ViewHolder vh;
        if (convertView == null) {
            this.inflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
            convertView = this.inflater.inflate(R.layout.view_table_grid_item, (ViewGroup) null);
            vh = new ViewHolder();
            vh.cardViewTable = (CardView) convertView.findViewById(R.id.card_view_table);
            vh.table = (TextView) convertView.findViewById(R.id.text_table);
            vh.cbMergeCheck = (AppCompatCheckBox) convertView.findViewById(R.id.check_box_table);
            vh.ivTable = (ImageView) convertView.findViewById(R.id.image_table);
            vh.tvTabletime = (TextView) convertView.findViewById(R.id.tv_tabletime);
            vh.tvTableoccupy = (TextView) convertView.findViewById(R.id.tv_tableoccupy);
            vh.cbMergeCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.danfe.restaurantapp1.adapter.TableAdapter.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    int checkedPosition = ((Integer) buttonView.getTag()).intValue();
                    ((TableDb) TableAdapter.this.tableArray.get(checkedPosition)).setIsChecked(Boolean.valueOf(buttonView.isChecked()));
                    if (isChecked) {
                        vh.table.setTextColor(TableAdapter.this.mContext.getResources().getColor(R.color.indicator_yellow));
                        vh.ivTable.setImageDrawable(TableAdapter.this.mContext.getResources().getDrawable(R.drawable.ic_table_merge));
                        return;
                    }
                    if (((TableDb) TableAdapter.this.tableArray.get(checkedPosition)).getTableStatus().intValue() == 7) {
                        vh.table.setTextColor(TableAdapter.this.mContext.getResources().getColor(R.color.indicator_red));
                        if (((TableDb) TableAdapter.this.tableArray.get(checkedPosition)).getIsTable().booleanValue()) {
                            vh.ivTable.setImageDrawable(TableAdapter.this.mContext.getResources().getDrawable(R.drawable.ic_table_unavailable));
                            return;
                        } else {
                            vh.ivTable.setImageDrawable(TableAdapter.this.mContext.getResources().getDrawable(R.drawable.ic_room_unavailable));
                            return;
                        }
                    }
                    vh.table.setTextColor(TableAdapter.this.mContext.getResources().getColor(R.color.indicator_green));
                    if (((TableDb) TableAdapter.this.tableArray.get(checkedPosition)).getIsTable().booleanValue()) {
                        vh.ivTable.setImageDrawable(TableAdapter.this.mContext.getResources().getDrawable(R.drawable.ic_table_available));
                    } else {
                        vh.ivTable.setImageDrawable(TableAdapter.this.mContext.getResources().getDrawable(R.drawable.ic_room_available));
                    }
                }
            });
            convertView.setTag(vh);
        } else {
            vh = (ViewHolder) convertView.getTag();
        }
        vh.cbMergeCheck.setTag(Integer.valueOf(position));
        this.tableDb = (TableDb) getItem(position);
        if ((this.tableDb.getMergeTableId().intValue() > 0 || this.tableDb.getTableStatus().intValue() == 7) && !this.tableArray.get(position).getIsChecked().booleanValue()) {
            if (this.tableDb.getMergeTableId().intValue() > 0) {
                String tableName = ((TableDb) getItem(position)).getNumber();
                if (this.tableDb.getMergeTableId() == Integer.valueOf(String.valueOf(this.tableDb.getId()))) {
                    if (this.tableArray.size() > 0) {
                        for (int i = 0; i < this.tableArray.size(); i++) {
                            if (this.tableArray.get(i).getMergeTableId().intValue() != 0 && this.tableArray.get(i).getMergeTableId().intValue() != Integer.parseInt(String.valueOf(this.tableArray.get(i).getId())) && this.tableArray.get(i).getMergeTableId() == ((TableDb) getItem(position)).getMergeTableId()) {
                                tableName = tableName + "/" + this.restaurantDatabase.getTableName(this.mContext, Integer.parseInt(String.valueOf(this.tableArray.get(i).getId())));
                            }
                        }
                        vh.table.setText(tableName);
                    }
                } else {
                    vh.table.setText("Merged with " + this.restaurantDatabase.getTableName(this.mContext, Integer.parseInt(String.valueOf(this.tableDb.getMergeTableId()))));
                    notifyDataSetChanged();
                }
            } else {
                vh.table.setText(this.tableDb.getNumber());
            }
            if (this.tableDb.getIsTable().booleanValue()) {
                vh.ivTable.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_table_unavailable));
            } else {
                vh.ivTable.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_room_unavailable));
            }
            vh.table.setTextColor(this.mContext.getResources().getColor(R.color.indicator_red));
            vh.tvTabletime.setText(this.tableDb.getTabletime());
            if (!this.tableDb.getTableDate().isEmpty()) {
                SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss a");
                String currentDateandTime = sdf.format(new Date());
                String tableoccupy = this.tableDb.getTableDate().toString();
                try {
                    Date Date1 = sdf.parse(currentDateandTime);
                    Date Date2 = sdf.parse(tableoccupy);
                    long mills = Date1.getTime() - Date2.getTime();
                    int Hours = (int) ((mills / 3600000) % 24);
                    int Mins = (int) ((mills / 60000) % 60);
                    String diff = Hours + ":" + Mins;
                    vh.tvTableoccupy.setText(diff);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            } else {
                vh.tvTableoccupy.setText("");
            }
        } else {
            vh.table.setText(this.tableDb.getNumber());
            if (this.tableDb.getIsChecked().booleanValue()) {
                vh.table.setTextColor(InputDeviceCompat.SOURCE_ANY);
                vh.ivTable.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_table_merge));
            } else {
                vh.table.setTextColor(this.mContext.getResources().getColor(R.color.indicator_green));
                if (this.tableDb.getIsTable().booleanValue()) {
                    vh.ivTable.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_table_available));
                } else {
                    vh.ivTable.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_room_available));
                }
            }
            vh.tvTabletime.setText("");
            vh.tvTableoccupy.setText("");
        }
        if (MERGE_CASE) {
            vh.tvTabletime.setVisibility(8);
            vh.tvTableoccupy.setVisibility(8);
            if (this.tableDb.getIsChecked() != null) {
                vh.cbMergeCheck.setChecked(this.tableDb.getIsChecked().booleanValue());
            } else {
                vh.cbMergeCheck.setChecked(false);
            }
            if ((this.tableDb.getMergeTableId().intValue() > 0 && !this.tableDb.getIsChecked().booleanValue()) || !this.tableDb.getIsTable().booleanValue()) {
                vh.cbMergeCheck.setVisibility(8);
            } else {
                vh.cbMergeCheck.setChecked(this.tableDb.getIsChecked().booleanValue());
                vh.cbMergeCheck.setVisibility(0);
            }
        } else {
            vh.cbMergeCheck.setVisibility(8);
            vh.tvTabletime.setVisibility(0);
            vh.tvTableoccupy.setVisibility(0);
        }
        return convertView;
    }

    class ViewHolder {
        CardView cardViewTable;
        AppCompatCheckBox cbMergeCheck;
        ImageView ivTable;
        TextView table;
        TextView tvTableoccupy;
        TextView tvTabletime;

        ViewHolder() {
        }
    }
}
