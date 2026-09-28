package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class CategoryDb {
    private String categoryPhotoPath;
    private Long id;
    private Integer menuid;
    private String name;

    public CategoryDb() {
    }

    public CategoryDb(Long id) {
        this.id = id;
    }

    public CategoryDb(Long id, String name, String categoryPhotoPath, Integer menuid) {
        this.id = id;
        this.name = name;
        this.categoryPhotoPath = categoryPhotoPath;
        this.menuid = menuid;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategoryPhotoPath() {
        return this.categoryPhotoPath;
    }

    public void setCategoryPhotoPath(String categoryPhotoPath) {
        this.categoryPhotoPath = categoryPhotoPath;
    }

    public Integer getMenuid() {
        return this.menuid;
    }

    public void setMenuid(Integer menuid) {
        this.menuid = menuid;
    }
}
