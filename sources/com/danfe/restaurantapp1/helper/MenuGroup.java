package com.danfe.restaurantapp1.helper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MenuGroup {
    private String status;
    private List<Menugroupresult> menugroupresult = new ArrayList();
    private Map<String, Object> additionalProperties = new HashMap();

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Menugroupresult> getMenugroupresult() {
        return this.menugroupresult;
    }

    public void setMenugroupresult(List<Menugroupresult> menugroupresult) {
        this.menugroupresult = menugroupresult;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public class Menugroupresult {
        private Map<String, Object> additionalProperties = new HashMap();
        private Integer id;
        private String name;

        public Menugroupresult() {
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

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
