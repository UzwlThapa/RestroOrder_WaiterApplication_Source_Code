package com.danfe.restaurantapp1.helper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Category {
    private String status;
    private List<Categoryresult> categoryresult = new ArrayList();
    private Map<String, Object> additionalProperties = new HashMap();

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Categoryresult> getCategoryresult() {
        return this.categoryresult;
    }

    public void setCategoryresult(List<Categoryresult> categoryresult) {
        this.categoryresult = categoryresult;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public class Categoryresult {
        private Map<String, Object> additionalProperties = new HashMap();
        private Integer id;
        private Integer menuId;
        private String name;

        public Categoryresult() {
        }

        public Integer getId() {
            return this.id;
        }

        public void setId(Integer id) {
            this.id = id;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Integer getMenuId() {
            return this.menuId;
        }

        public void setMenuId(Integer menuId) {
            this.menuId = menuId;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
