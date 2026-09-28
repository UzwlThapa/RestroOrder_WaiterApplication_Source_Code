package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class MenuGroupDb {
    private Long id;
    private String menuPhotoPath;
    private String name;

    public MenuGroupDb() {
    }

    public MenuGroupDb(Long id) {
        this.id = id;
    }

    public MenuGroupDb(Long id, String name, String menuPhotoPath) {
        this.id = id;
        this.name = name;
        this.menuPhotoPath = menuPhotoPath;
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

    public String getMenuPhotoPath() {
        return this.menuPhotoPath;
    }

    public void setMenuPhotoPath(String menuPhotoPath) {
        this.menuPhotoPath = menuPhotoPath;
    }
}
