package com.danfe.restaurantapp1.helper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Dish {
    private String status;
    private List<Dishresult> dishresult = new ArrayList();
    private Map<String, Object> additionalProperties = new HashMap();

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Dishresult> getDishresult() {
        return this.dishresult;
    }

    public void setDishresult(List<Dishresult> dishresult) {
        this.dishresult = dishresult;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public class Dishresult {
        private Map<String, Object> additionalProperties = new HashMap();
        private Integer categoryid;
        private String description;
        private Integer id;
        private String itemCode;
        private String name;
        private Long rate;

        public Dishresult() {
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

        public Integer getCategoryid() {
            return this.categoryid;
        }

        public void setCategoryid(Integer categoryid) {
            this.categoryid = categoryid;
        }

        public String getItemCode() {
            return this.itemCode;
        }

        public void setItemCode(String itemCode) {
            this.itemCode = itemCode;
        }

        public String getDescription() {
            return this.description;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public long getRate() {
            return this.rate.longValue();
        }

        public void setRate(long rate) {
            this.rate = Long.valueOf(rate);
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
