package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class CustomerDbDao extends AbstractDao<CustomerDb, Long> {
    public static final String TABLENAME = "CUSTOMER_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property CustomerCreditId = new Property(1, String.class, "customerCreditId", false, "CUSTOMER_CREDIT_ID");
        public static final Property FullAddress = new Property(2, String.class, "FullAddress", false, "FULL_ADDRESS");
        public static final Property Name = new Property(3, String.class, "Name", false, "NAME");
        public static final Property MembershipId = new Property(4, String.class, "membershipId", false, "MEMBERSHIP_ID");
        public static final Property VendorId = new Property(5, String.class, "vendorId", false, "VENDOR_ID");
        public static final Property FName = new Property(6, String.class, "fName", false, "F_NAME");
        public static final Property LName = new Property(7, String.class, "lName", false, "L_NAME");
        public static final Property Address = new Property(8, String.class, "address", false, "ADDRESS");
        public static final Property City = new Property(9, String.class, "city", false, "CITY");
        public static final Property Country = new Property(10, String.class, "country", false, "COUNTRY");
        public static final Property TelHome = new Property(11, String.class, "telHome", false, "TEL_HOME");
        public static final Property TelWork = new Property(12, String.class, "telWork", false, "TEL_WORK");
        public static final Property TelMobile = new Property(13, String.class, "telMobile", false, "TEL_MOBILE");
        public static final Property Email = new Property(14, String.class, "email", false, "EMAIL");
        public static final Property Occupation = new Property(15, String.class, "occupation", false, "OCCUPATION");
        public static final Property Birthday = new Property(16, String.class, "birthday", false, "BIRTHDAY");
        public static final Property Anniversary = new Property(17, String.class, "anniversary", false, "ANNIVERSARY");
        public static final Property CardNumber = new Property(18, String.class, "cardNumber", false, "CARD_NUMBER");
        public static final Property DateOfIssue = new Property(19, String.class, "dateOfIssue", false, "DATE_OF_ISSUE");
        public static final Property DateOfExpire = new Property(20, String.class, "dateOfExpire", false, "DATE_OF_EXPIRE");
        public static final Property Discount = new Property(21, String.class, "discount", false, "DISCOUNT");
        public static final Property PAN = new Property(22, String.class, "PAN", false, "PAN");
        public static final Property IsCustomer = new Property(23, String.class, "isCustomer", false, "IS_CUSTOMER");
        public static final Property RemainingBalance = new Property(24, String.class, "remainingBalance", false, "REMAINING_BALANCE");
        public static final Property UptoNowPaid = new Property(25, String.class, "uptoNowPaid", false, "UPTO_NOW_PAID");
        public static final Property PayAmount = new Property(26, String.class, "payAmount", false, "PAY_AMOUNT");
        public static final Property AddedBy = new Property(27, String.class, "addedBy", false, "ADDED_BY");
        public static final Property GtId = new Property(28, String.class, "gtId", false, "GT_ID");
        public static final Property GuestType = new Property(29, String.class, "guestType", false, "GUEST_TYPE");
        public static final Property GtDiscount = new Property(30, String.class, "gtDiscount", false, "GT_DISCOUNT");
        public static final Property CtzPassportNumber = new Property(31, String.class, "ctzPassportNumber", false, "CTZ_PASSPORT_NUMBER");
    }

    public CustomerDbDao(DaoConfig config) {
        super(config);
    }

    public CustomerDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"CUSTOMER_DB\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"CUSTOMER_CREDIT_ID\" TEXT,\"FULL_ADDRESS\" TEXT,\"NAME\" TEXT,\"MEMBERSHIP_ID\" TEXT,\"VENDOR_ID\" TEXT,\"F_NAME\" TEXT,\"L_NAME\" TEXT,\"ADDRESS\" TEXT,\"CITY\" TEXT,\"COUNTRY\" TEXT,\"TEL_HOME\" TEXT,\"TEL_WORK\" TEXT,\"TEL_MOBILE\" TEXT,\"EMAIL\" TEXT,\"OCCUPATION\" TEXT,\"BIRTHDAY\" TEXT,\"ANNIVERSARY\" TEXT,\"CARD_NUMBER\" TEXT,\"DATE_OF_ISSUE\" TEXT,\"DATE_OF_EXPIRE\" TEXT,\"DISCOUNT\" TEXT,\"PAN\" TEXT,\"IS_CUSTOMER\" TEXT,\"REMAINING_BALANCE\" TEXT,\"UPTO_NOW_PAID\" TEXT,\"PAY_AMOUNT\" TEXT,\"ADDED_BY\" TEXT,\"GT_ID\" TEXT,\"GUEST_TYPE\" TEXT,\"GT_DISCOUNT\" TEXT,\"CTZ_PASSPORT_NUMBER\" TEXT);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"CUSTOMER_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, CustomerDb entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        String customerCreditId = entity.getCustomerCreditId();
        if (customerCreditId != null) {
            stmt.bindString(2, customerCreditId);
        }
        String FullAddress = entity.getFullAddress();
        if (FullAddress != null) {
            stmt.bindString(3, FullAddress);
        }
        String Name = entity.getName();
        if (Name != null) {
            stmt.bindString(4, Name);
        }
        String membershipId = entity.getMembershipId();
        if (membershipId != null) {
            stmt.bindString(5, membershipId);
        }
        String vendorId = entity.getVendorId();
        if (vendorId != null) {
            stmt.bindString(6, vendorId);
        }
        String fName = entity.getFName();
        if (fName != null) {
            stmt.bindString(7, fName);
        }
        String lName = entity.getLName();
        if (lName != null) {
            stmt.bindString(8, lName);
        }
        String address = entity.getAddress();
        if (address != null) {
            stmt.bindString(9, address);
        }
        String city = entity.getCity();
        if (city != null) {
            stmt.bindString(10, city);
        }
        String country = entity.getCountry();
        if (country != null) {
            stmt.bindString(11, country);
        }
        String telHome = entity.getTelHome();
        if (telHome != null) {
            stmt.bindString(12, telHome);
        }
        String telWork = entity.getTelWork();
        if (telWork != null) {
            stmt.bindString(13, telWork);
        }
        String telMobile = entity.getTelMobile();
        if (telMobile != null) {
            stmt.bindString(14, telMobile);
        }
        String email = entity.getEmail();
        if (email != null) {
            stmt.bindString(15, email);
        }
        String occupation = entity.getOccupation();
        if (occupation != null) {
            stmt.bindString(16, occupation);
        }
        String birthday = entity.getBirthday();
        if (birthday != null) {
            stmt.bindString(17, birthday);
        }
        String anniversary = entity.getAnniversary();
        if (anniversary != null) {
            stmt.bindString(18, anniversary);
        }
        String cardNumber = entity.getCardNumber();
        if (cardNumber != null) {
            stmt.bindString(19, cardNumber);
        }
        String dateOfIssue = entity.getDateOfIssue();
        if (dateOfIssue != null) {
            stmt.bindString(20, dateOfIssue);
        }
        String dateOfExpire = entity.getDateOfExpire();
        if (dateOfExpire != null) {
            stmt.bindString(21, dateOfExpire);
        }
        String discount = entity.getDiscount();
        if (discount != null) {
            stmt.bindString(22, discount);
        }
        String PAN = entity.getPAN();
        if (PAN != null) {
            stmt.bindString(23, PAN);
        }
        String isCustomer = entity.getIsCustomer();
        if (isCustomer != null) {
            stmt.bindString(24, isCustomer);
        }
        String remainingBalance = entity.getRemainingBalance();
        if (remainingBalance != null) {
            stmt.bindString(25, remainingBalance);
        }
        String uptoNowPaid = entity.getUptoNowPaid();
        if (uptoNowPaid != null) {
            stmt.bindString(26, uptoNowPaid);
        }
        String payAmount = entity.getPayAmount();
        if (payAmount != null) {
            stmt.bindString(27, payAmount);
        }
        String addedBy = entity.getAddedBy();
        if (addedBy != null) {
            stmt.bindString(28, addedBy);
        }
        String gtId = entity.getGtId();
        if (gtId != null) {
            stmt.bindString(29, gtId);
        }
        String guestType = entity.getGuestType();
        if (guestType != null) {
            stmt.bindString(30, guestType);
        }
        String gtDiscount = entity.getGtDiscount();
        if (gtDiscount != null) {
            stmt.bindString(31, gtDiscount);
        }
        String ctzPassportNumber = entity.getCtzPassportNumber();
        if (ctzPassportNumber != null) {
            stmt.bindString(32, ctzPassportNumber);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // de.greenrobot.dao.AbstractDao
    public Long readKey(Cursor cursor, int offset) {
        if (cursor.isNull(offset + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(offset + 0));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // de.greenrobot.dao.AbstractDao
    public CustomerDb readEntity(Cursor cursor, int offset) {
        CustomerDb entity = new CustomerDb(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)), cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1), cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2), cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3), cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4), cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5), cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6), cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7), cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8), cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9), cursor.isNull(offset + 10) ? null : cursor.getString(offset + 10), cursor.isNull(offset + 11) ? null : cursor.getString(offset + 11), cursor.isNull(offset + 12) ? null : cursor.getString(offset + 12), cursor.isNull(offset + 13) ? null : cursor.getString(offset + 13), cursor.isNull(offset + 14) ? null : cursor.getString(offset + 14), cursor.isNull(offset + 15) ? null : cursor.getString(offset + 15), cursor.isNull(offset + 16) ? null : cursor.getString(offset + 16), cursor.isNull(offset + 17) ? null : cursor.getString(offset + 17), cursor.isNull(offset + 18) ? null : cursor.getString(offset + 18), cursor.isNull(offset + 19) ? null : cursor.getString(offset + 19), cursor.isNull(offset + 20) ? null : cursor.getString(offset + 20), cursor.isNull(offset + 21) ? null : cursor.getString(offset + 21), cursor.isNull(offset + 22) ? null : cursor.getString(offset + 22), cursor.isNull(offset + 23) ? null : cursor.getString(offset + 23), cursor.isNull(offset + 24) ? null : cursor.getString(offset + 24), cursor.isNull(offset + 25) ? null : cursor.getString(offset + 25), cursor.isNull(offset + 26) ? null : cursor.getString(offset + 26), cursor.isNull(offset + 27) ? null : cursor.getString(offset + 27), cursor.isNull(offset + 28) ? null : cursor.getString(offset + 28), cursor.isNull(offset + 29) ? null : cursor.getString(offset + 29), cursor.isNull(offset + 30) ? null : cursor.getString(offset + 30), cursor.isNull(offset + 31) ? null : cursor.getString(offset + 31));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, CustomerDb entity, int offset) {
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setCustomerCreditId(cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1));
        entity.setFullAddress(cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
        entity.setName(cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3));
        entity.setMembershipId(cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4));
        entity.setVendorId(cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5));
        entity.setFName(cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6));
        entity.setLName(cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7));
        entity.setAddress(cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8));
        entity.setCity(cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9));
        entity.setCountry(cursor.isNull(offset + 10) ? null : cursor.getString(offset + 10));
        entity.setTelHome(cursor.isNull(offset + 11) ? null : cursor.getString(offset + 11));
        entity.setTelWork(cursor.isNull(offset + 12) ? null : cursor.getString(offset + 12));
        entity.setTelMobile(cursor.isNull(offset + 13) ? null : cursor.getString(offset + 13));
        entity.setEmail(cursor.isNull(offset + 14) ? null : cursor.getString(offset + 14));
        entity.setOccupation(cursor.isNull(offset + 15) ? null : cursor.getString(offset + 15));
        entity.setBirthday(cursor.isNull(offset + 16) ? null : cursor.getString(offset + 16));
        entity.setAnniversary(cursor.isNull(offset + 17) ? null : cursor.getString(offset + 17));
        entity.setCardNumber(cursor.isNull(offset + 18) ? null : cursor.getString(offset + 18));
        entity.setDateOfIssue(cursor.isNull(offset + 19) ? null : cursor.getString(offset + 19));
        entity.setDateOfExpire(cursor.isNull(offset + 20) ? null : cursor.getString(offset + 20));
        entity.setDiscount(cursor.isNull(offset + 21) ? null : cursor.getString(offset + 21));
        entity.setPAN(cursor.isNull(offset + 22) ? null : cursor.getString(offset + 22));
        entity.setIsCustomer(cursor.isNull(offset + 23) ? null : cursor.getString(offset + 23));
        entity.setRemainingBalance(cursor.isNull(offset + 24) ? null : cursor.getString(offset + 24));
        entity.setUptoNowPaid(cursor.isNull(offset + 25) ? null : cursor.getString(offset + 25));
        entity.setPayAmount(cursor.isNull(offset + 26) ? null : cursor.getString(offset + 26));
        entity.setAddedBy(cursor.isNull(offset + 27) ? null : cursor.getString(offset + 27));
        entity.setGtId(cursor.isNull(offset + 28) ? null : cursor.getString(offset + 28));
        entity.setGuestType(cursor.isNull(offset + 29) ? null : cursor.getString(offset + 29));
        entity.setGtDiscount(cursor.isNull(offset + 30) ? null : cursor.getString(offset + 30));
        entity.setCtzPassportNumber(cursor.isNull(offset + 31) ? null : cursor.getString(offset + 31));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(CustomerDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(CustomerDb entity) {
        if (entity != null) {
            return entity.getId();
        }
        return null;
    }

    @Override // de.greenrobot.dao.AbstractDao
    protected boolean isEntityUpdateable() {
        return true;
    }
}
