package com.danfe.restaurantapp1;

import android.app.Dialog;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SearchView;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.Interface.RecyclerViewClickListener;
import com.danfe.restaurantapp1.adapter.ItemAdapter;
import com.danfe.restaurantapp1.adapter.SearchItemAdapter;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.Preferences;
import com.danfe.restaurantapp1.helper.RecyclerItemClickListener;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.ItemgroupDb;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.response.MenuItemGroup;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class MenuItemFragment extends Fragment implements RecyclerViewClickListener {
    private ImageButton btBack;
    private ImageButton btReload;
    private EditText etSearch;
    private List<ItemgroupDb> finalItemGroupLists;
    private GridLayoutManager gridLayoutManager;
    private int highestLevel;
    private View inflateView;
    private ItemAdapter itemAdapter;
    private ArrayList<List<ItemgroupDb>> itemGroupDbsList;
    private List<ItemgroupDb> itemgroupDbs;
    List<MenuItemGroup.Itemgroup> itemgroupList;
    private List<ItemgroupDb> itemgrouplists;
    private LinearLayout layoutCategory;
    private LinearLayout layoutItem;
    LinearLayoutManager layoutManager;
    private LinearLayout layoutMenu;
    private ArrayList<ItemAdapter> menuItemLists;
    private ArrayList<List<ItemgroupDb>> menuShowingGrid;
    private Preferences preferences;
    private RestAdapter restAdapter;
    private RestaurantDatabase restaurantDatabase;
    private RecyclerView rvGridView;
    private RecyclerView rvMenu;
    private RecyclerView rvNextLevel;
    private SearchView searchView;
    private TextView tvMenuTitle;
    private ProgressBar viewProgressBar;
    private RestaurantWebService.ItemGroupWebService webService;
    private String BaseUrl = "";
    private String cond = "";

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.inflateView = inflater.inflate(R.layout.view_allmenu, container, false);
        this.rvMenu = (RecyclerView) this.inflateView.findViewById(R.id.recycler_view_menu);
        this.rvGridView = (RecyclerView) this.inflateView.findViewById(R.id.rvgridView_item_search);
        this.searchView = (SearchView) this.inflateView.findViewById(R.id.searchview);
        this.etSearch = (EditText) this.inflateView.findViewById(R.id.edit_search);
        this.tvMenuTitle = (TextView) this.inflateView.findViewById(R.id.tvMenuTitle);
        this.btReload = (ImageButton) this.inflateView.findViewById(R.id.bt_reload_menu);
        this.viewProgressBar = (ProgressBar) this.inflateView.findViewById(R.id.progressBar);
        this.layoutCategory = (LinearLayout) this.inflateView.findViewById(R.id.layout_whole_category);
        this.layoutMenu = (LinearLayout) this.inflateView.findViewById(R.id.layout_menu1);
        this.layoutItem = (LinearLayout) this.inflateView.findViewById(R.id.layout_nextLevel);
        this.btBack = (ImageButton) this.inflateView.findViewById(R.id.btne_back);
        this.gridLayoutManager = new GridLayoutManager(getContext(), 5);
        this.preferences = new Preferences(getContext());
        this.itemgroupDbs = new ArrayList();
        this.itemGroupDbsList = new ArrayList<>();
        this.menuItemLists = new ArrayList<>();
        this.menuShowingGrid = new ArrayList<>();
        this.BaseUrl = Util.getBaseUrl(getContext());
        new Bundle();
        Bundle value = getArguments();
        this.cond = value.getString("cond");
        if (this.cond.equals("Main")) {
            container.setLayoutParams(new LinearLayout.LayoutParams((int) getResources().getDimension(R.dimen.menu_fragment_width), -1));
        } else if (this.cond.equals("Stock")) {
            container.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) getResources().getDimension(R.dimen.activity_login_et_up_width)));
        }
        this.layoutManager = new LinearLayoutManager(getActivity(), 0, false);
        this.rvMenu.setHasFixedSize(true);
        this.restaurantDatabase = new RestaurantDatabase();
        getNewMenu();
        this.btBack.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.MenuItemFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MenuItemFragment.this.menuShowingGrid.size() > 1) {
                    MenuItemFragment.this.menuShowingGrid.remove(MenuItemFragment.this.menuShowingGrid.size() - 1);
                    MenuItemFragment.this.setNextLevelItem(MenuItemFragment.this.menuShowingGrid);
                }
            }
        });
        Log.e("itemgroupsResult", String.valueOf(this.restaurantDatabase.loadAllItemGroups(getContext()).size()));
        this.searchView.setQueryHint("Search");
        ((EditText) this.searchView.findViewById(R.id.search_src_text)).setTextColor(-1);
        ((EditText) this.searchView.findViewById(R.id.search_src_text)).setHintTextColor(-1);
        this.searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.danfe.restaurantapp1.MenuItemFragment.2
            @Override // android.support.v7.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String query) {
                if (query.isEmpty()) {
                    MenuItemFragment.this.ValidateSearchViews();
                    return false;
                }
                MenuItemFragment.this.itemgrouplists = MenuItemFragment.this.restaurantDatabase.searchItems(MenuItemFragment.this.getActivity(), query.toLowerCase());
                for (int j = 0; j < MenuItemFragment.this.itemgrouplists.size(); j++) {
                    if (MenuItemFragment.this.restaurantDatabase.getActualItem(MenuItemFragment.this.getContext(), ((ItemgroupDb) MenuItemFragment.this.itemgrouplists.get(j)).getItemId().intValue(), ((ItemgroupDb) MenuItemFragment.this.itemgrouplists.get(j)).getIsCombo()).size() != 0) {
                        List<ItemgroupDb> itemgroupDbsList = MenuItemFragment.this.restaurantDatabase.getRelatedItems(MenuItemFragment.this.getContext(), ((ItemgroupDb) MenuItemFragment.this.itemgrouplists.get(j)).getItemId().intValue());
                        MenuItemFragment.this.itemgrouplists.remove(j);
                        for (int y = 0; y < itemgroupDbsList.size(); y++) {
                            MenuItemFragment.this.itemgrouplists.add(itemgroupDbsList.get(y));
                        }
                    }
                }
                if (MenuItemFragment.this.itemgrouplists.size() == 0) {
                    MenuItemFragment.this.tvMenuTitle.setText("No such items available");
                    Toast.makeText(MenuItemFragment.this.getContext(), "No such items available.", 0).show();
                    MenuItemFragment.this.rvGridView.setVisibility(8);
                    MenuItemFragment.this.rvMenu.setVisibility(0);
                    return false;
                }
                HashSet<ItemgroupDb> hashSet = new HashSet<>(MenuItemFragment.this.itemgrouplists);
                List<ItemgroupDb> finalItemGroupLists = new ArrayList<>(hashSet);
                SearchItemAdapter searchitemadapter = new SearchItemAdapter(MenuItemFragment.this.getContext(), finalItemGroupLists, MenuItemFragment.this);
                Display display = MenuItemFragment.this.getActivity().getWindowManager().getDefaultDisplay();
                DisplayMetrics outMetrics = new DisplayMetrics();
                display.getMetrics(outMetrics);
                float density = MenuItemFragment.this.getResources().getDisplayMetrics().density;
                float dpWidth = outMetrics.widthPixels / density;
                int columns = Math.round(dpWidth / 300.0f);
                GridLayoutManager layoutManager = new GridLayoutManager(MenuItemFragment.this.getActivity(), columns);
                MenuItemFragment.this.rvGridView.setLayoutManager(layoutManager);
                MenuItemFragment.this.rvGridView.setAdapter(searchitemadapter);
                MenuItemFragment.this.rvGridView.setVisibility(0);
                MenuItemFragment.this.tvMenuTitle.setText("Searched Items");
                MenuItemFragment.this.rvMenu.setVisibility(8);
                MenuItemFragment.this.layoutItem.setVisibility(8);
                return false;
            }

            @Override // android.support.v7.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String query) {
                if (query.isEmpty()) {
                    MenuItemFragment.this.ValidateSearchViews();
                    return false;
                }
                String query2 = query.toLowerCase();
                Log.e("QUERY", String.valueOf(query2));
                MenuItemFragment.this.itemgrouplists = MenuItemFragment.this.restaurantDatabase.searchItems(MenuItemFragment.this.getActivity(), query2);
                for (int j = 0; j < MenuItemFragment.this.itemgrouplists.size(); j++) {
                    if (MenuItemFragment.this.restaurantDatabase.getActualItem(MenuItemFragment.this.getContext(), ((ItemgroupDb) MenuItemFragment.this.itemgrouplists.get(j)).getItemId().intValue(), ((ItemgroupDb) MenuItemFragment.this.itemgrouplists.get(j)).getIsCombo()).size() != 0) {
                        List<ItemgroupDb> itemgroupDbsList = MenuItemFragment.this.restaurantDatabase.getRelatedItems(MenuItemFragment.this.getContext(), ((ItemgroupDb) MenuItemFragment.this.itemgrouplists.get(j)).getItemId().intValue());
                        MenuItemFragment.this.itemgrouplists.remove(j);
                        for (int y = 0; y < itemgroupDbsList.size(); y++) {
                            MenuItemFragment.this.itemgrouplists.add(itemgroupDbsList.get(y));
                        }
                    }
                }
                if (MenuItemFragment.this.itemgrouplists.size() == 0) {
                    MenuItemFragment.this.tvMenuTitle.setText("No such items available");
                    MenuItemFragment.this.rvGridView.setVisibility(8);
                    MenuItemFragment.this.rvMenu.setVisibility(0);
                    return false;
                }
                HashSet<ItemgroupDb> hashSet = new HashSet<>(MenuItemFragment.this.itemgrouplists);
                MenuItemFragment.this.finalItemGroupLists = new ArrayList(hashSet);
                SearchItemAdapter searchitemadapter = new SearchItemAdapter(MenuItemFragment.this.getContext(), MenuItemFragment.this.finalItemGroupLists, MenuItemFragment.this);
                Display display = MenuItemFragment.this.getActivity().getWindowManager().getDefaultDisplay();
                DisplayMetrics outMetrics = new DisplayMetrics();
                display.getMetrics(outMetrics);
                float density = MenuItemFragment.this.getResources().getDisplayMetrics().density;
                float dpWidth = outMetrics.widthPixels / density;
                int columns = Math.round(dpWidth / 300.0f);
                GridLayoutManager layoutManager = new GridLayoutManager(MenuItemFragment.this.getActivity(), columns);
                MenuItemFragment.this.rvGridView.setLayoutManager(layoutManager);
                MenuItemFragment.this.rvGridView.setAdapter(searchitemadapter);
                MenuItemFragment.this.rvGridView.setVisibility(0);
                MenuItemFragment.this.tvMenuTitle.setText("Searched Items");
                MenuItemFragment.this.rvMenu.setVisibility(8);
                MenuItemFragment.this.layoutItem.setVisibility(8);
                return false;
            }
        });
        this.searchView.setOnCloseListener(new SearchView.OnCloseListener() { // from class: com.danfe.restaurantapp1.MenuItemFragment.3
            @Override // android.support.v7.widget.SearchView.OnCloseListener
            public boolean onClose() {
                MenuItemFragment.this.tvMenuTitle.setText("Main Menu");
                MenuItemFragment.this.rvGridView.setVisibility(8);
                ItemAdapter itemAdapter = new ItemAdapter(MenuItemFragment.this.getContext(), MenuItemFragment.this.itemgroupDbs, MenuItemFragment.this);
                MenuItemFragment.this.rvMenu.setAdapter(itemAdapter);
                MenuItemFragment.this.rvMenu.setVisibility(0);
                MenuItemFragment.this.layoutItem.removeAllViews();
                MenuItemFragment.this.layoutItem.setVisibility(0);
                return false;
            }
        });
        this.btReload.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.MenuItemFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MenuItemFragment.this.BaseUrl = Util.getBaseUrl(MenuItemFragment.this.getContext());
                MenuItemFragment.this.viewProgressBar.setVisibility(0);
                MenuItemFragment.this.restAdapter = new RestAdapter.Builder().setEndpoint(MenuItemFragment.this.BaseUrl).build();
                MenuItemFragment.this.webService = (RestaurantWebService.ItemGroupWebService) MenuItemFragment.this.restAdapter.create(RestaurantWebService.ItemGroupWebService.class);
                MenuItemFragment.this.webService.getItemGroups(new Callback<MenuItemGroup>() { // from class: com.danfe.restaurantapp1.MenuItemFragment.4.1
                    @Override // retrofit.Callback
                    public void success(MenuItemGroup itemgroupResult, Response response) {
                        if (itemgroupResult.getStatusCode().intValue() == 200) {
                            MenuItemFragment.this.itemgroupList = itemgroupResult.getItemgroup();
                            MenuItemFragment.this.restaurantDatabase.insertItemgroup(MenuItemFragment.this.getActivity(), MenuItemFragment.this.itemgroupList);
                            Log.e("itemgroupsResult", String.valueOf(MenuItemFragment.this.restaurantDatabase.loadAllItemGroups(MenuItemFragment.this.getContext())));
                            MenuItemFragment.this.itemgroupDbs = MenuItemFragment.this.restaurantDatabase.loadAllItems(MenuItemFragment.this.getContext(), 0, 1);
                            MenuItemFragment.this.layoutItem.removeAllViews();
                            MenuItemFragment.this.viewProgressBar.setVisibility(8);
                            MenuItemFragment.this.getNewMenu();
                            return;
                        }
                        String message = itemgroupResult.getMessage();
                        Util.showRetrofitErrorMessage("Error MenuReload Items: " + message, MenuItemFragment.this.getContext());
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError error) {
                        MenuItemFragment.this.viewProgressBar.setVisibility(8);
                        try {
                            Util.showRetrofitErrorMessage("Reload Items: " + Util.Api.getErrorMessage(error), MenuItemFragment.this.getContext());
                        } catch (Exception e) {
                        }
                    }
                });
            }
        });
        this.rvGridView.addOnItemTouchListener(new RecyclerItemClickListener(getActivity(), new RecyclerItemClickListener.OnItemClickListener() { // from class: com.danfe.restaurantapp1.MenuItemFragment.5
            @Override // com.danfe.restaurantapp1.helper.RecyclerItemClickListener.OnItemClickListener
            public void onItemClick(View view, int position) {
                if (MenuItemFragment.this.cond.equals("Main")) {
                    if (!((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getOutOfStock().booleanValue()) {
                        StringBuilder sbAppend = new StringBuilder().append(String.valueOf(position));
                        Log.e("SELECTEDBILLNO", sbAppend.append(MainActivity.selectedBill).toString());
                        Toast.makeText(MenuItemFragment.this.getActivity(), "Item Added to the Order list", 0).show();
                        MainActivity mainActivity = (MainActivity) MenuItemFragment.this.getActivity();
                        Integer numValueOf = Integer.valueOf((int) ((MainActivity) MenuItemFragment.this.getActivity()).orderMasterId);
                        Integer itemId = ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getItemId();
                        String itemName = ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getItemName();
                        Double dValueOf = Double.valueOf(1.0d);
                        Double dValueOf2 = Double.valueOf(Double.parseDouble(String.valueOf(((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getSRate())));
                        mainActivity.onOrderArrival(new OrderDetailDb(1L, numValueOf, itemId, itemName, dValueOf, dValueOf2, false, Integer.valueOf(MainActivity.selectedBill), " ", Float.valueOf(0.0f), "Ordered", 0, ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getIsCombo(), ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getCostcenterID()), ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getCostcenterID().intValue(), ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getImagePath(), ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getOutOfStock());
                        return;
                    }
                    Toast.makeText(MenuItemFragment.this.getContext(), "Item is out of Stock", 1).show();
                    return;
                }
                if (MenuItemFragment.this.cond.equals("Stock")) {
                    Toast.makeText(MenuItemFragment.this.getActivity(), "Item Added to the Order list", 0).show();
                    ((OrderItemDetailsActivity) MenuItemFragment.this.getActivity()).onOrderArrival(new OrderDetailDb(1L, 0, ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getItemId(), ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getItemName(), Double.valueOf(1.0d), Double.valueOf(Double.parseDouble(String.valueOf(((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getSRate()))), false, 0, " ", Float.valueOf(0.0f), "Ordered", 0, ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getIsCombo(), ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getCostcenterID()), ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getCostcenterID().intValue(), ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getSRate(), ((ItemgroupDb) MenuItemFragment.this.finalItemGroupLists.get(position)).getOutOfStock());
                }
            }
        }));
        this.etSearch.addTextChangedListener(new TextWatcher() { // from class: com.danfe.restaurantapp1.MenuItemFragment.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
            }
        });
        return this.inflateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ValidateSearchViews() {
        Toast.makeText(getContext(), "Please enter the item names you want to search.", 0).show();
        this.tvMenuTitle.setText("Main Menu");
        this.rvGridView.setVisibility(8);
        this.rvMenu.setVisibility(0);
        this.layoutItem.removeAllViews();
        this.layoutItem.setVisibility(0);
        this.searchView.setIconified(false);
    }

    @Override // com.danfe.restaurantapp1.Interface.RecyclerViewClickListener
    public void recyclerViewListClicked(View v, int id, int position) {
    }

    @Override // com.danfe.restaurantapp1.Interface.RecyclerViewClickListener
    public void recyclerViewListClicked(View v, int id, int position, int currentlevel, Boolean isCombo, int costcenterid) {
        new ArrayList();
        LinearLayout layoutOuter = new LinearLayout(getContext());
        layoutOuter.setOrientation(1);
        if (this.restaurantDatabase.getActualItem(getContext(), id, isCombo).size() != 0) {
            List<ItemgroupDb> list = this.restaurantDatabase.loadItemNextLevel(getActivity(), this.menuShowingGrid.get(currentlevel - 1).get(position).getItemId().intValue());
            if (currentlevel < this.menuItemLists.size()) {
                Log.e("OLD VIEW", String.valueOf(currentlevel) + " " + position);
                this.menuShowingGrid.subList(currentlevel, this.menuShowingGrid.size()).clear();
                this.menuItemLists.subList(currentlevel, this.menuItemLists.size()).clear();
                this.menuShowingGrid.add(currentlevel, list);
                this.itemAdapter = new ItemAdapter(getActivity(), this.menuShowingGrid.get(currentlevel), this);
                this.menuItemLists.add(currentlevel, this.itemAdapter);
                this.rvNextLevel = new RecyclerView(getActivity());
                LinearLayoutManager layoutManager1 = new LinearLayoutManager(getActivity(), 0, false);
                this.rvNextLevel.setLayoutManager(layoutManager1);
                this.rvNextLevel.setItemAnimator(null);
                this.menuItemLists.add(currentlevel, this.itemAdapter);
                this.rvNextLevel.setAdapter(this.itemAdapter);
                this.rvNextLevel.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                this.rvNextLevel.setPadding(0, (int) getResources().getDimension(R.dimen.margin_waiter), 0, (int) getResources().getDimension(R.dimen.margin_waiter));
                this.rvNextLevel.requestFocus();
                TextView tvTitle = new TextView(getContext());
                tvTitle.setTypeface(Typeface.create("sans-serif-condensed", 0));
                tvTitle.setText(this.menuShowingGrid.get(currentlevel - 1).get(position).getItemName() + " Items");
                tvTitle.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                tvTitle.setPadding(0, (int) getResources().getDimension(R.dimen.margin_waiter), 0, (int) getResources().getDimension(R.dimen.margin_waiter));
                tvTitle.setTextColor(getResources().getColor(R.color.white));
                tvTitle.setTextSize(2, getResources().getDimension(R.dimen.menu_menu) / getResources().getDisplayMetrics().density);
                Log.e("ChildCount", String.valueOf(this.layoutItem.getChildCount()));
                if (currentlevel == 1) {
                    this.layoutItem.removeAllViews();
                } else {
                    Log.e("ChildCount", String.valueOf(this.layoutItem.getChildCount()));
                    if (currentlevel == 2) {
                        for (int i = this.layoutItem.getChildCount(); i > 1; i--) {
                            this.layoutItem.removeViewAt(i - 1);
                        }
                    } else {
                        for (int i2 = this.layoutItem.getChildCount(); i2 > currentlevel - 1; i2--) {
                            this.layoutItem.removeViewAt(i2 - 1);
                        }
                    }
                }
                View view = new View(getContext());
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
                view.setBackgroundColor(getResources().getColor(R.color.lightgrey));
                view.setPadding(0, 2, 0, 2);
                layoutOuter.addView(tvTitle);
                layoutOuter.addView(view);
                layoutOuter.addView(this.rvNextLevel);
                this.layoutItem.addView(layoutOuter);
                this.layoutItem.invalidate();
                this.layoutItem.requestLayout();
                return;
            }
            Log.e("NEW VIEW", String.valueOf(currentlevel) + position);
            this.menuShowingGrid.add(currentlevel, list);
            this.rvNextLevel = new RecyclerView(getActivity());
            LinearLayoutManager layoutManager12 = new LinearLayoutManager(getActivity(), 0, false);
            this.rvNextLevel.setLayoutManager(layoutManager12);
            this.itemAdapter = new ItemAdapter(getActivity(), this.menuShowingGrid.get(currentlevel), this);
            this.menuItemLists.add(currentlevel, this.itemAdapter);
            this.rvNextLevel.setAdapter(this.itemAdapter);
            this.rvNextLevel.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            this.rvNextLevel.setPadding(0, (int) getResources().getDimension(R.dimen.margin_waiter), 0, (int) getResources().getDimension(R.dimen.margin_waiter));
            this.rvNextLevel.requestFocus();
            TextView tvTitle2 = new TextView(getContext());
            tvTitle2.setTypeface(Typeface.create("sans-serif-condensed", 0));
            tvTitle2.setText(this.menuShowingGrid.get(currentlevel - 1).get(position).getItemName() + " Items");
            tvTitle2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            tvTitle2.setPadding(0, (int) getResources().getDimension(R.dimen.margin_waiter), 0, (int) getResources().getDimension(R.dimen.margin_waiter));
            tvTitle2.setTextColor(getResources().getColor(R.color.white));
            tvTitle2.setTextSize(2, getResources().getDimension(R.dimen.menu_menu) / getResources().getDisplayMetrics().density);
            View view2 = new View(getContext());
            view2.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
            view2.setBackgroundColor(getResources().getColor(R.color.lightgrey));
            view2.setPadding(0, 2, 0, 2);
            layoutOuter.addView(tvTitle2);
            layoutOuter.addView(view2);
            layoutOuter.addView(this.rvNextLevel);
            this.layoutItem.addView(layoutOuter);
            this.layoutItem.invalidate();
            this.layoutItem.requestLayout();
            return;
        }
        if (!this.restaurantDatabase.getItembyItemId(getContext(), id, isCombo).get(0).getIsCategory().booleanValue()) {
            if (this.cond.equals("Main")) {
                if (!this.restaurantDatabase.getItemStockInfo(getContext(), id).booleanValue()) {
                    MainActivity mainActivity = (MainActivity) getActivity();
                    Integer numValueOf = Integer.valueOf((int) ((MainActivity) getActivity()).orderMasterId);
                    Integer numValueOf2 = Integer.valueOf(id);
                    String itemNameByid = this.restaurantDatabase.getItemNameByid(getContext(), id, isCombo);
                    Double dValueOf = Double.valueOf(1.0d);
                    Double itemRateById = this.restaurantDatabase.getItemRateById(getContext(), id, isCombo);
                    mainActivity.onOrderArrival(new OrderDetailDb(1L, numValueOf, numValueOf2, itemNameByid, dValueOf, itemRateById, false, Integer.valueOf(MainActivity.selectedBill), " ", Float.valueOf(0.0f), "Ordered", 0, isCombo, Integer.valueOf(costcenterid)), costcenterid, this.restaurantDatabase.getItemPriceById(getContext(), id, isCombo.booleanValue()), this.restaurantDatabase.getItemStockInfo(getContext(), id));
                    return;
                }
                Toast.makeText(getContext(), "Item is out of Stock", 1).show();
                return;
            }
            if (this.cond.equals("Stock")) {
                ((OrderItemDetailsActivity) getActivity()).onOrderArrival(new OrderDetailDb(1L, 0, Integer.valueOf(id), this.restaurantDatabase.getItemNameByid(getContext(), id, isCombo), Double.valueOf(1.0d), this.restaurantDatabase.getItemRateById(getContext(), id, isCombo), false, 0, " ", Float.valueOf(0.0f), "Ordered", 0, isCombo, Integer.valueOf(costcenterid)), costcenterid, this.restaurantDatabase.getImagePathById(getContext(), id), this.restaurantDatabase.getItemStockInfo(getContext(), id));
                return;
            }
            return;
        }
        Toast.makeText(getContext(), "No Items in this Category.", 1).show();
        if (currentlevel == 1) {
            this.layoutItem.removeAllViews();
            return;
        }
        Log.e("ChildCount", String.valueOf(this.layoutItem.getChildCount()));
        if (currentlevel == 2) {
            for (int i3 = this.layoutItem.getChildCount(); i3 > 1; i3--) {
                this.layoutItem.removeViewAt(i3 - 1);
            }
            return;
        }
        for (int i4 = this.layoutItem.getChildCount(); i4 > currentlevel - 1; i4--) {
            this.layoutItem.removeViewAt(i4 - 1);
        }
    }

    @Override // com.danfe.restaurantapp1.Interface.RecyclerViewClickListener
    public void recyclerViewListClicked(View v, int id, int position, int currentlevel, Boolean isCombo, int costcenterid, boolean isCategory) {
        List<ItemgroupDb> list;
        new ArrayList();
        if (this.menuShowingGrid.size() > 0 && this.restaurantDatabase.getActualItem(getContext(), id, isCombo).size() != 0) {
            try {
                list = this.restaurantDatabase.loadItemNextLevel(getActivity(), this.menuShowingGrid.get(currentlevel - 1).get(position).getItemId().intValue());
            } catch (Exception e) {
                list = this.restaurantDatabase.loadItemNextLevel(getActivity(), this.menuShowingGrid.get(currentlevel - 1).get(position).getItemId().intValue());
                Log.e("menuShowingGrid: ", "Error", e);
            }
            if (list.size() != 0) {
                this.menuShowingGrid.add(list);
                setNextLevelItem(this.menuShowingGrid);
            }
        }
        if (!isCategory) {
            if (this.cond.equals("Main")) {
                if (!this.restaurantDatabase.getItemStockInfo(getContext(), id).booleanValue()) {
                    MainActivity mainActivity = (MainActivity) getActivity();
                    Integer numValueOf = Integer.valueOf((int) ((MainActivity) getActivity()).orderMasterId);
                    Integer numValueOf2 = Integer.valueOf(id);
                    String itemNameByid = this.restaurantDatabase.getItemNameByid(getContext(), id, isCombo);
                    Double dValueOf = Double.valueOf(1.0d);
                    Double itemRateById = this.restaurantDatabase.getItemRateById(getContext(), id, isCombo);
                    mainActivity.onOrderArrival(new OrderDetailDb(1L, numValueOf, numValueOf2, itemNameByid, dValueOf, itemRateById, false, Integer.valueOf(MainActivity.selectedBill), " ", Float.valueOf(0.0f), "Ordered", 0, isCombo, Integer.valueOf(costcenterid)), costcenterid, this.restaurantDatabase.getItemPriceById(getContext(), id, isCombo.booleanValue()), this.restaurantDatabase.getItemStockInfo(getContext(), id));
                    return;
                }
                Toast.makeText(getContext(), "Item is out of Stock", 1).show();
                return;
            }
            if (this.cond.equals("Stock")) {
                ((OrderItemDetailsActivity) getActivity()).onOrderArrival(new OrderDetailDb(1L, 0, Integer.valueOf(id), this.restaurantDatabase.getItemNameByid(getContext(), id, isCombo), Double.valueOf(1.0d), this.restaurantDatabase.getItemRateById(getContext(), id, isCombo), false, 0, " ", Float.valueOf(0.0f), "Ordered", 0, isCombo, Integer.valueOf(costcenterid)), costcenterid, this.restaurantDatabase.getImagePathById(getContext(), id), this.restaurantDatabase.getItemStockInfo(getContext(), id));
            } else {
                Toast.makeText(getContext(), "No Items in this Category.", 1).show();
            }
        }
    }

    public void refreshMenu() {
        this.BaseUrl = Util.getBaseUrl(getContext());
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseUrl).build();
        this.webService = (RestaurantWebService.ItemGroupWebService) this.restAdapter.create(RestaurantWebService.ItemGroupWebService.class);
        this.webService.getItemGroups(new Callback<MenuItemGroup>() { // from class: com.danfe.restaurantapp1.MenuItemFragment.7
            @Override // retrofit.Callback
            public void success(MenuItemGroup itemgroupResult, Response response) {
                if (itemgroupResult.getStatusCode().intValue() == 200) {
                    MenuItemFragment.this.itemgroupList = itemgroupResult.getItemgroup();
                    MenuItemFragment.this.restaurantDatabase.insertItemgroup(MenuItemFragment.this.getActivity(), MenuItemFragment.this.itemgroupList);
                    Log.e("itemgroupsResult", String.valueOf(MenuItemFragment.this.restaurantDatabase.loadAllItemGroups(MenuItemFragment.this.getContext())));
                    MenuItemFragment.this.itemgroupDbs = MenuItemFragment.this.restaurantDatabase.loadAllItems(MenuItemFragment.this.getContext(), 0, 1);
                    MenuItemFragment.this.layoutItem.removeAllViews();
                    MenuItemFragment.this.viewProgressBar.setVisibility(8);
                    MenuItemFragment.this.getNewMenu();
                    ((OrderItemDetailsActivity) MenuItemFragment.this.getActivity()).updateOutOfStockData(MenuItemFragment.this.restaurantDatabase.getItemByOutOfStock(MenuItemFragment.this.getContext(), true));
                    return;
                }
                String message = itemgroupResult.getMessage();
                Util.showRetrofitErrorMessage("Error MenuReload Items: " + message, MenuItemFragment.this.getContext());
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                MenuItemFragment.this.viewProgressBar.setVisibility(8);
                try {
                    Util.showRetrofitErrorMessage("Reload Items: " + Util.Api.getErrorMessage(error), MenuItemFragment.this.getContext());
                } catch (Exception e) {
                }
            }
        });
    }

    @Override // com.danfe.restaurantapp1.Interface.RecyclerViewClickListener
    public void recyclerLongClicked(View v, int itemId, Boolean isCombo) {
        Log.e("RECYCLERLONGCLICKED", String.valueOf(itemId));
        if (this.restaurantDatabase.getActualItem(getContext(), itemId, isCombo).size() == 0 && !this.restaurantDatabase.getItembyItemId(getContext(), itemId, isCombo).get(0).getIsCategory().booleanValue()) {
            final Dialog dialog = new Dialog(getContext());
            dialog.requestWindowFeature(1);
            dialog.setCancelable(false);
            dialog.setContentView(R.layout.layout_dialog_menuitem_detail);
            RestaurantDatabase rDb = new RestaurantDatabase();
            ImageView ivDialogItemImage = (ImageView) dialog.findViewById(R.id.iv_dialog_menuitem_detail);
            TextView tvDialogItemName = (TextView) dialog.findViewById(R.id.tv_dialog_menuitem_itemname);
            TextView tvDialogItemDescription = (TextView) dialog.findViewById(R.id.tv_dialog_menuitem_description);
            TextView tvDialogitemPrice = (TextView) dialog.findViewById(R.id.tv_dialog_menuitem_price);
            Button btnOk = (Button) dialog.findViewById(R.id.btn_dialog_itemdescription_ok);
            String BaseURL = Util.getBaseUrl(getContext());
            new ArrayList();
            List<ItemgroupDb> itemgroupDbList = rDb.getItembyItemId(getContext(), itemId, isCombo);
            String imagePath = itemgroupDbList.get(0).getImagePath();
            String itemTitle = itemgroupDbList.get(0).getItemName();
            String itemDescription = itemgroupDbList.get(0).getDetails();
            String.valueOf(itemgroupDbList.get(0).getSRate());
            String imgpath = BaseURL + "/ROI_Item/ImageItem/" + imagePath;
            Picasso.with(getContext()).load(imgpath.replaceAll(" ", "%20")).placeholder(R.drawable.ic_restro_logo_new).into(ivDialogItemImage);
            tvDialogItemName.setText(itemTitle);
            if (!itemDescription.toString().isEmpty()) {
                tvDialogItemDescription.setText(itemDescription);
            } else {
                tvDialogItemDescription.setVisibility(8);
            }
            tvDialogitemPrice.setText(itemgroupDbList.get(0).getCurrency().toString() + "  " + itemgroupDbList.get(0).getSRate().toString() + "/-");
            btnOk.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.MenuItemFragment.8
                @Override // android.view.View.OnClickListener
                public void onClick(View v2) {
                    dialog.dismiss();
                }
            });
            dialog.show();
            dialog.getWindow().setLayout(800, 600);
        }
    }

    public void getMenus() {
        this.itemgroupDbs = this.restaurantDatabase.loadAllItems(getContext(), 0, 1);
        if (this.itemGroupDbsList.size() != 0) {
            this.itemGroupDbsList.clear();
        }
        this.itemGroupDbsList.add(this.itemgroupDbs);
        if (this.menuShowingGrid.size() != 0) {
            this.menuShowingGrid.clear();
        }
        this.menuShowingGrid.add(this.itemgroupDbs);
        this.highestLevel = this.restaurantDatabase.getHighestLevel(getContext());
        Log.e("Highest Level", String.valueOf(this.highestLevel));
        ItemAdapter itemAdapter = new ItemAdapter(getContext(), this.itemgroupDbs, this);
        this.rvMenu.setAdapter(itemAdapter);
        itemAdapter.notifyDataSetChanged();
    }

    public void getNewMenu() {
        this.itemgroupDbs = this.restaurantDatabase.loadAllItems(getContext(), 0, 1);
        if (this.preferences.getEnableOrderGrid().booleanValue()) {
            this.rvMenu.setLayoutManager(this.gridLayoutManager);
        } else {
            this.rvMenu.setLayoutManager(this.layoutManager);
        }
        if (this.menuShowingGrid.size() != 0) {
            this.menuShowingGrid.clear();
        }
        this.menuShowingGrid.add(this.itemgroupDbs);
        this.highestLevel = this.restaurantDatabase.getHighestLevel(getContext());
        Log.e("Highest Level", String.valueOf(this.highestLevel));
        if (this.menuItemLists.size() != 0) {
            this.menuItemLists.clear();
        }
        this.menuItemLists.add(this.itemAdapter);
        setNextLevelItem(this.menuShowingGrid);
    }

    public void setNextLevelItem(List<List<ItemgroupDb>> menuShowingGrid) {
        if (menuShowingGrid.get(menuShowingGrid.size() - 1).size() != 0) {
            ItemAdapter itemAdapter = new ItemAdapter(getContext(), menuShowingGrid.get(menuShowingGrid.size() - 1), this);
            this.rvMenu.setAdapter(itemAdapter);
            itemAdapter.notifyDataSetChanged();
        }
    }
}
