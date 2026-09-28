###### Class com.danfe.restaurantapp1.model.CustomerDbDao (com.danfe.restaurantapp1.model.CustomerDbDao)
.class public Lcom/danfe/restaurantapp1/model/CustomerDbDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "CustomerDbDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/danfe/restaurantapp1/model/CustomerDb;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "CUSTOMER_DB"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V
    .registers 3
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/danfe/restaurantapp1/model/DaoSession;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 67
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 71
    if-eqz p1, :cond_21

    const-string v0, "IF NOT EXISTS "

    .line 72
    .local v0, "constraint":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"CUSTOMER_DB\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"CUSTOMER_CREDIT_ID\" TEXT,\"FULL_ADDRESS\" TEXT,\"NAME\" TEXT,\"MEMBERSHIP_ID\" TEXT,\"VENDOR_ID\" TEXT,\"F_NAME\" TEXT,\"L_NAME\" TEXT,\"ADDRESS\" TEXT,\"CITY\" TEXT,\"COUNTRY\" TEXT,\"TEL_HOME\" TEXT,\"TEL_WORK\" TEXT,\"TEL_MOBILE\" TEXT,\"EMAIL\" TEXT,\"OCCUPATION\" TEXT,\"BIRTHDAY\" TEXT,\"ANNIVERSARY\" TEXT,\"CARD_NUMBER\" TEXT,\"DATE_OF_ISSUE\" TEXT,\"DATE_OF_EXPIRE\" TEXT,\"DISCOUNT\" TEXT,\"PAN\" TEXT,\"IS_CUSTOMER\" TEXT,\"REMAINING_BALANCE\" TEXT,\"UPTO_NOW_PAID\" TEXT,\"PAY_AMOUNT\" TEXT,\"ADDED_BY\" TEXT,\"GT_ID\" TEXT,\"GUEST_TYPE\" TEXT,\"GT_DISCOUNT\" TEXT,\"CTZ_PASSPORT_NUMBER\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    return-void

    .line 71
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_21
    const-string v0, ""

    goto :goto_4
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_21

    const-string v1, "IF EXISTS "

    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"CUSTOMER_DB\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    return-void

    .line 109
    .end local v0    # "sql":Ljava/lang/String;
    :cond_21
    const-string v1, ""

    goto :goto_f
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/CustomerDb;)V
    .registers 43
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/CustomerDb;

    .prologue
    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getId()Ljava/lang/Long;

    move-result-object v24

    .line 119
    .local v24, "id":Ljava/lang/Long;
    if-eqz v24, :cond_18

    .line 120
    const/16 v36, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 123
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getCustomerCreditId()Ljava/lang/String;

    move-result-object v15

    .line 124
    .local v15, "customerCreditId":Ljava/lang/String;
    if-eqz v15, :cond_27

    .line 125
    const/16 v36, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 128
    :cond_27
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getFullAddress()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "FullAddress":Ljava/lang/String;
    if-eqz v4, :cond_36

    .line 130
    const/16 v36, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 133
    :cond_36
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getName()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "Name":Ljava/lang/String;
    if-eqz v5, :cond_45

    .line 135
    const/16 v36, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 138
    :cond_45
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getMembershipId()Ljava/lang/String;

    move-result-object v27

    .line 139
    .local v27, "membershipId":Ljava/lang/String;
    if-eqz v27, :cond_56

    .line 140
    const/16 v36, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 143
    :cond_56
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getVendorId()Ljava/lang/String;

    move-result-object v35

    .line 144
    .local v35, "vendorId":Ljava/lang/String;
    if-eqz v35, :cond_67

    .line 145
    const/16 v36, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 148
    :cond_67
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getFName()Ljava/lang/String;

    move-result-object v20

    .line 149
    .local v20, "fName":Ljava/lang/String;
    if-eqz v20, :cond_78

    .line 150
    const/16 v36, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 153
    :cond_78
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getLName()Ljava/lang/String;

    move-result-object v26

    .line 154
    .local v26, "lName":Ljava/lang/String;
    if-eqz v26, :cond_89

    .line 155
    const/16 v36, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 158
    :cond_89
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "address":Ljava/lang/String;
    if-eqz v8, :cond_98

    .line 160
    const/16 v36, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 163
    :cond_98
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getCity()Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, "city":Ljava/lang/String;
    if-eqz v12, :cond_a7

    .line 165
    const/16 v36, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 168
    :cond_a7
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getCountry()Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, "country":Ljava/lang/String;
    if-eqz v13, :cond_b6

    .line 170
    const/16 v36, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 173
    :cond_b6
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getTelHome()Ljava/lang/String;

    move-result-object v31

    .line 174
    .local v31, "telHome":Ljava/lang/String;
    if-eqz v31, :cond_c7

    .line 175
    const/16 v36, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 178
    :cond_c7
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getTelWork()Ljava/lang/String;

    move-result-object v33

    .line 179
    .local v33, "telWork":Ljava/lang/String;
    if-eqz v33, :cond_d8

    .line 180
    const/16 v36, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 183
    :cond_d8
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getTelMobile()Ljava/lang/String;

    move-result-object v32

    .line 184
    .local v32, "telMobile":Ljava/lang/String;
    if-eqz v32, :cond_e9

    .line 185
    const/16 v36, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 188
    :cond_e9
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getEmail()Ljava/lang/String;

    move-result-object v19

    .line 189
    .local v19, "email":Ljava/lang/String;
    if-eqz v19, :cond_fa

    .line 190
    const/16 v36, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 193
    :cond_fa
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getOccupation()Ljava/lang/String;

    move-result-object v28

    .line 194
    .local v28, "occupation":Ljava/lang/String;
    if-eqz v28, :cond_10b

    .line 195
    const/16 v36, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 198
    :cond_10b
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getBirthday()Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "birthday":Ljava/lang/String;
    if-eqz v10, :cond_11a

    .line 200
    const/16 v36, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 203
    :cond_11a
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getAnniversary()Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "anniversary":Ljava/lang/String;
    if-eqz v9, :cond_129

    .line 205
    const/16 v36, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 208
    :cond_129
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getCardNumber()Ljava/lang/String;

    move-result-object v11

    .line 209
    .local v11, "cardNumber":Ljava/lang/String;
    if-eqz v11, :cond_138

    .line 210
    const/16 v36, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 213
    :cond_138
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getDateOfIssue()Ljava/lang/String;

    move-result-object v17

    .line 214
    .local v17, "dateOfIssue":Ljava/lang/String;
    if-eqz v17, :cond_149

    .line 215
    const/16 v36, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 218
    :cond_149
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getDateOfExpire()Ljava/lang/String;

    move-result-object v16

    .line 219
    .local v16, "dateOfExpire":Ljava/lang/String;
    if-eqz v16, :cond_15a

    .line 220
    const/16 v36, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 223
    :cond_15a
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getDiscount()Ljava/lang/String;

    move-result-object v18

    .line 224
    .local v18, "discount":Ljava/lang/String;
    if-eqz v18, :cond_16b

    .line 225
    const/16 v36, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 228
    :cond_16b
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getPAN()Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "PAN":Ljava/lang/String;
    if-eqz v6, :cond_17a

    .line 230
    const/16 v36, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 233
    :cond_17a
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getIsCustomer()Ljava/lang/String;

    move-result-object v25

    .line 234
    .local v25, "isCustomer":Ljava/lang/String;
    if-eqz v25, :cond_18b

    .line 235
    const/16 v36, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 238
    :cond_18b
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getRemainingBalance()Ljava/lang/String;

    move-result-object v30

    .line 239
    .local v30, "remainingBalance":Ljava/lang/String;
    if-eqz v30, :cond_19c

    .line 240
    const/16 v36, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 243
    :cond_19c
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getUptoNowPaid()Ljava/lang/String;

    move-result-object v34

    .line 244
    .local v34, "uptoNowPaid":Ljava/lang/String;
    if-eqz v34, :cond_1ad

    .line 245
    const/16 v36, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 248
    :cond_1ad
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getPayAmount()Ljava/lang/String;

    move-result-object v29

    .line 249
    .local v29, "payAmount":Ljava/lang/String;
    if-eqz v29, :cond_1be

    .line 250
    const/16 v36, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 253
    :cond_1be
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getAddedBy()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "addedBy":Ljava/lang/String;
    if-eqz v7, :cond_1cd

    .line 255
    const/16 v36, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 258
    :cond_1cd
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getGtId()Ljava/lang/String;

    move-result-object v22

    .line 259
    .local v22, "gtId":Ljava/lang/String;
    if-eqz v22, :cond_1de

    .line 260
    const/16 v36, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 263
    :cond_1de
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getGuestType()Ljava/lang/String;

    move-result-object v23

    .line 264
    .local v23, "guestType":Ljava/lang/String;
    if-eqz v23, :cond_1ef

    .line 265
    const/16 v36, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 268
    :cond_1ef
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getGtDiscount()Ljava/lang/String;

    move-result-object v21

    .line 269
    .local v21, "gtDiscount":Ljava/lang/String;
    if-eqz v21, :cond_200

    .line 270
    const/16 v36, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 273
    :cond_200
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getCtzPassportNumber()Ljava/lang/String;

    move-result-object v14

    .line 274
    .local v14, "ctzPassportNumber":Ljava/lang/String;
    if-eqz v14, :cond_20f

    .line 275
    const/16 v36, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v14}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 277
    :cond_20f
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/CustomerDb;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/CustomerDb;)V

    return-void
.end method

.method public getKey(Lcom/danfe/restaurantapp1/model/CustomerDb;)Ljava/lang/Long;
    .registers 3
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/CustomerDb;

    .prologue
    .line 372
    if-eqz p1, :cond_7

    .line 373
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/CustomerDb;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 375
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 17
    check-cast p1, Lcom/danfe/restaurantapp1/model/CustomerDb;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->getKey(Lcom/danfe/restaurantapp1/model/CustomerDb;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .registers 2

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/CustomerDb;
    .registers 38
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 288
    new-instance v2, Lcom/danfe/restaurantapp1/model/CustomerDb;

    add-int/lit8 v3, p2, 0x0

    .line 289
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_19f

    const/4 v3, 0x0

    :goto_d
    add-int/lit8 v4, p2, 0x1

    .line 290
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1ad

    const/4 v4, 0x0

    :goto_18
    add-int/lit8 v5, p2, 0x2

    .line 291
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1b7

    const/4 v5, 0x0

    :goto_23
    add-int/lit8 v6, p2, 0x3

    .line 292
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1c1

    const/4 v6, 0x0

    :goto_2e
    add-int/lit8 v7, p2, 0x4

    .line 293
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1cb

    const/4 v7, 0x0

    :goto_39
    add-int/lit8 v8, p2, 0x5

    .line 294
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1d5

    const/4 v8, 0x0

    :goto_44
    add-int/lit8 v9, p2, 0x6

    .line 295
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1df

    const/4 v9, 0x0

    :goto_4f
    add-int/lit8 v10, p2, 0x7

    .line 296
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1e9

    const/4 v10, 0x0

    :goto_5a
    add-int/lit8 v11, p2, 0x8

    .line 297
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1f3

    const/4 v11, 0x0

    :goto_65
    add-int/lit8 v12, p2, 0x9

    .line 298
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1fd

    const/4 v12, 0x0

    :goto_70
    add-int/lit8 v13, p2, 0xa

    .line 299
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_207

    const/4 v13, 0x0

    :goto_7b
    add-int/lit8 v14, p2, 0xb

    .line 300
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_211

    const/4 v14, 0x0

    :goto_86
    add-int/lit8 v15, p2, 0xc

    .line 301
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21b

    const/4 v15, 0x0

    :goto_91
    add-int/lit8 v16, p2, 0xd

    .line 302
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_225

    const/16 v16, 0x0

    :goto_9f
    add-int/lit8 v17, p2, 0xe

    .line 303
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_231

    const/16 v17, 0x0

    :goto_ad
    add-int/lit8 v18, p2, 0xf

    .line 304
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_23d

    const/16 v18, 0x0

    :goto_bb
    add-int/lit8 v19, p2, 0x10

    .line 305
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_249

    const/16 v19, 0x0

    :goto_c9
    add-int/lit8 v20, p2, 0x11

    .line 306
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_255

    const/16 v20, 0x0

    :goto_d7
    add-int/lit8 v21, p2, 0x12

    .line 307
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_261

    const/16 v21, 0x0

    :goto_e5
    add-int/lit8 v22, p2, 0x13

    .line 308
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_26d

    const/16 v22, 0x0

    :goto_f3
    add-int/lit8 v23, p2, 0x14

    .line 309
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_279

    const/16 v23, 0x0

    :goto_101
    add-int/lit8 v24, p2, 0x15

    .line 310
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_285

    const/16 v24, 0x0

    :goto_10f
    add-int/lit8 v25, p2, 0x16

    .line 311
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_291

    const/16 v25, 0x0

    :goto_11d
    add-int/lit8 v26, p2, 0x17

    .line 312
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_29d

    const/16 v26, 0x0

    :goto_12b
    add-int/lit8 v27, p2, 0x18

    .line 313
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_2a9

    const/16 v27, 0x0

    :goto_139
    add-int/lit8 v28, p2, 0x19

    .line 314
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_2b5

    const/16 v28, 0x0

    :goto_147
    add-int/lit8 v29, p2, 0x1a

    .line 315
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_2c1

    const/16 v29, 0x0

    :goto_155
    add-int/lit8 v30, p2, 0x1b

    .line 316
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_2cd

    const/16 v30, 0x0

    :goto_163
    add-int/lit8 v31, p2, 0x1c

    .line 317
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_2d9

    const/16 v31, 0x0

    :goto_171
    add-int/lit8 v32, p2, 0x1d

    .line 318
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_2e5

    const/16 v32, 0x0

    :goto_17f
    add-int/lit8 v33, p2, 0x1e

    .line 319
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_2f1

    const/16 v33, 0x0

    :goto_18d
    add-int/lit8 v34, p2, 0x1f

    .line 320
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_2fd

    const/16 v34, 0x0

    :goto_19b
    invoke-direct/range {v2 .. v34}, Lcom/danfe/restaurantapp1/model/CustomerDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .local v2, "entity":Lcom/danfe/restaurantapp1/model/CustomerDb;
    return-object v2

    .line 289
    .end local v2    # "entity":Lcom/danfe/restaurantapp1/model/CustomerDb;
    :cond_19f
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_d

    .line 290
    :cond_1ad
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 291
    :cond_1b7
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_23

    .line 292
    :cond_1c1
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2e

    .line 293
    :cond_1cb
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_39

    .line 294
    :cond_1d5
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_44

    .line 295
    :cond_1df
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4f

    .line 296
    :cond_1e9
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5a

    .line 297
    :cond_1f3
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_65

    .line 298
    :cond_1fd
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_70

    .line 299
    :cond_207
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7b

    .line 300
    :cond_211
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_86

    .line 301
    :cond_21b
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_91

    .line 302
    :cond_225
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_9f

    .line 303
    :cond_231
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_ad

    .line 304
    :cond_23d
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_bb

    .line 305
    :cond_249
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_c9

    .line 306
    :cond_255
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_d7

    .line 307
    :cond_261
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_e5

    .line 308
    :cond_26d
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_f3

    .line 309
    :cond_279
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_101

    .line 310
    :cond_285
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_10f

    .line 311
    :cond_291
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_11d

    .line 312
    :cond_29d
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_12b

    .line 313
    :cond_2a9
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_139

    .line 314
    :cond_2b5
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_147

    .line 315
    :cond_2c1
    add-int/lit8 v29, p2, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_155

    .line 316
    :cond_2cd
    add-int/lit8 v30, p2, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_163

    .line 317
    :cond_2d9
    add-int/lit8 v31, p2, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_171

    .line 318
    :cond_2e5
    add-int/lit8 v32, p2, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_17f

    .line 319
    :cond_2f1
    add-int/lit8 v33, p2, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_18d

    .line 320
    :cond_2fd
    add-int/lit8 v34, p2, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_19b
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/CustomerDb;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/CustomerDb;I)V
    .registers 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/CustomerDb;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 328
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_181

    move-object v0, v1

    :goto_a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setId(Ljava/lang/Long;)V

    .line 329
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_18d

    move-object v0, v1

    :goto_16
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setCustomerCreditId(Ljava/lang/String;)V

    .line 330
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_195

    move-object v0, v1

    :goto_22
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setFullAddress(Ljava/lang/String;)V

    .line 331
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_19d

    move-object v0, v1

    :goto_2e
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setName(Ljava/lang/String;)V

    .line 332
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1a5

    move-object v0, v1

    :goto_3a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setMembershipId(Ljava/lang/String;)V

    .line 333
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1ad

    move-object v0, v1

    :goto_46
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setVendorId(Ljava/lang/String;)V

    .line 334
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b5

    move-object v0, v1

    :goto_52
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setFName(Ljava/lang/String;)V

    .line 335
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1bd

    move-object v0, v1

    :goto_5e
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setLName(Ljava/lang/String;)V

    .line 336
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1c5

    move-object v0, v1

    :goto_6a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setAddress(Ljava/lang/String;)V

    .line 337
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1cd

    move-object v0, v1

    :goto_76
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setCity(Ljava/lang/String;)V

    .line 338
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1d5

    move-object v0, v1

    :goto_82
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setCountry(Ljava/lang/String;)V

    .line 339
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1dd

    move-object v0, v1

    :goto_8e
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setTelHome(Ljava/lang/String;)V

    .line 340
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1e5

    move-object v0, v1

    :goto_9a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setTelWork(Ljava/lang/String;)V

    .line 341
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1ed

    move-object v0, v1

    :goto_a6
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setTelMobile(Ljava/lang/String;)V

    .line 342
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1f5

    move-object v0, v1

    :goto_b2
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setEmail(Ljava/lang/String;)V

    .line 343
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1fd

    move-object v0, v1

    :goto_be
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setOccupation(Ljava/lang/String;)V

    .line 344
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_205

    move-object v0, v1

    :goto_ca
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setBirthday(Ljava/lang/String;)V

    .line 345
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_20d

    move-object v0, v1

    :goto_d6
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setAnniversary(Ljava/lang/String;)V

    .line 346
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_215

    move-object v0, v1

    :goto_e2
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setCardNumber(Ljava/lang/String;)V

    .line 347
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_21d

    move-object v0, v1

    :goto_ee
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setDateOfIssue(Ljava/lang/String;)V

    .line 348
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_225

    move-object v0, v1

    :goto_fa
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setDateOfExpire(Ljava/lang/String;)V

    .line 349
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_22d

    move-object v0, v1

    :goto_106
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setDiscount(Ljava/lang/String;)V

    .line 350
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_235

    move-object v0, v1

    :goto_112
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setPAN(Ljava/lang/String;)V

    .line 351
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_23d

    move-object v0, v1

    :goto_11e
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setIsCustomer(Ljava/lang/String;)V

    .line 352
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_245

    move-object v0, v1

    :goto_12a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setRemainingBalance(Ljava/lang/String;)V

    .line 353
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_24d

    move-object v0, v1

    :goto_136
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setUptoNowPaid(Ljava/lang/String;)V

    .line 354
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_255

    move-object v0, v1

    :goto_142
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setPayAmount(Ljava/lang/String;)V

    .line 355
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_25d

    move-object v0, v1

    :goto_14e
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setAddedBy(Ljava/lang/String;)V

    .line 356
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_265

    move-object v0, v1

    :goto_15a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setGtId(Ljava/lang/String;)V

    .line 357
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_26d

    move-object v0, v1

    :goto_166
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setGuestType(Ljava/lang/String;)V

    .line 358
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_275

    move-object v0, v1

    :goto_172
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setGtDiscount(Ljava/lang/String;)V

    .line 359
    add-int/lit8 v0, p3, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_27d

    :goto_17d
    invoke-virtual {p2, v1}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setCtzPassportNumber(Ljava/lang/String;)V

    .line 360
    return-void

    .line 328
    :cond_181
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_a

    .line 329
    :cond_18d
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 330
    :cond_195
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 331
    :cond_19d
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2e

    .line 332
    :cond_1a5
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    .line 333
    :cond_1ad
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_46

    .line 334
    :cond_1b5
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_52

    .line 335
    :cond_1bd
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 336
    :cond_1c5
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6a

    .line 337
    :cond_1cd
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_76

    .line 338
    :cond_1d5
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_82

    .line 339
    :cond_1dd
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8e

    .line 340
    :cond_1e5
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9a

    .line 341
    :cond_1ed
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a6

    .line 342
    :cond_1f5
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 343
    :cond_1fd
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_be

    .line 344
    :cond_205
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ca

    .line 345
    :cond_20d
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d6

    .line 346
    :cond_215
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e2

    .line 347
    :cond_21d
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ee

    .line 348
    :cond_225
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_fa

    .line 349
    :cond_22d
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_106

    .line 350
    :cond_235
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_112

    .line 351
    :cond_23d
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11e

    .line 352
    :cond_245
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12a

    .line 353
    :cond_24d
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_136

    .line 354
    :cond_255
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_142

    .line 355
    :cond_25d
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14e

    .line 356
    :cond_265
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15a

    .line 357
    :cond_26d
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_166

    .line 358
    :cond_275
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_172

    .line 359
    :cond_27d
    add-int/lit8 v0, p3, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17d
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/CustomerDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/CustomerDb;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 282
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_9
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/CustomerDb;J)Ljava/lang/Long;
    .registers 6
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/CustomerDb;
    .param p2, "rowId"    # J

    .prologue
    .line 365
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/danfe/restaurantapp1/model/CustomerDb;->setId(Ljava/lang/Long;)V

    .line 366
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 17
    check-cast p1, Lcom/danfe/restaurantapp1/model/CustomerDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/CustomerDb;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.CustomerDbDao.Properties (com.danfe.restaurantapp1.model.CustomerDbDao$Properties)
.class public Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;
.super Ljava/lang/Object;
.source "CustomerDbDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/CustomerDbDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AddedBy:Lde/greenrobot/dao/Property;

.field public static final Address:Lde/greenrobot/dao/Property;

.field public static final Anniversary:Lde/greenrobot/dao/Property;

.field public static final Birthday:Lde/greenrobot/dao/Property;

.field public static final CardNumber:Lde/greenrobot/dao/Property;

.field public static final City:Lde/greenrobot/dao/Property;

.field public static final Country:Lde/greenrobot/dao/Property;

.field public static final CtzPassportNumber:Lde/greenrobot/dao/Property;

.field public static final CustomerCreditId:Lde/greenrobot/dao/Property;

.field public static final DateOfExpire:Lde/greenrobot/dao/Property;

.field public static final DateOfIssue:Lde/greenrobot/dao/Property;

.field public static final Discount:Lde/greenrobot/dao/Property;

.field public static final Email:Lde/greenrobot/dao/Property;

.field public static final FName:Lde/greenrobot/dao/Property;

.field public static final FullAddress:Lde/greenrobot/dao/Property;

.field public static final GtDiscount:Lde/greenrobot/dao/Property;

.field public static final GtId:Lde/greenrobot/dao/Property;

.field public static final GuestType:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final IsCustomer:Lde/greenrobot/dao/Property;

.field public static final LName:Lde/greenrobot/dao/Property;

.field public static final MembershipId:Lde/greenrobot/dao/Property;

.field public static final Name:Lde/greenrobot/dao/Property;

.field public static final Occupation:Lde/greenrobot/dao/Property;

.field public static final PAN:Lde/greenrobot/dao/Property;

.field public static final PayAmount:Lde/greenrobot/dao/Property;

.field public static final RemainingBalance:Lde/greenrobot/dao/Property;

.field public static final TelHome:Lde/greenrobot/dao/Property;

.field public static final TelMobile:Lde/greenrobot/dao/Property;

.field public static final TelWork:Lde/greenrobot/dao/Property;

.field public static final UptoNowPaid:Lde/greenrobot/dao/Property;

.field public static final VendorId:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 26
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    const-string v5, "_id"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "customerCreditId"

    const-string v8, "CUSTOMER_CREDIT_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->CustomerCreditId:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "FullAddress"

    const-string v7, "FULL_ADDRESS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->FullAddress:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "Name"

    const-string v7, "NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->Name:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "membershipId"

    const-string v7, "MEMBERSHIP_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->MembershipId:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "vendorId"

    const-string v7, "VENDOR_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->VendorId:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    const-string v5, "fName"

    const-string v7, "F_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->FName:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "lName"

    const-string v7, "L_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->LName:Lde/greenrobot/dao/Property;

    .line 34
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "address"

    const-string v7, "ADDRESS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->Address:Lde/greenrobot/dao/Property;

    .line 35
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "city"

    const-string v7, "CITY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->City:Lde/greenrobot/dao/Property;

    .line 36
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "country"

    const-string v7, "COUNTRY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->Country:Lde/greenrobot/dao/Property;

    .line 37
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "telHome"

    const-string v7, "TEL_HOME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->TelHome:Lde/greenrobot/dao/Property;

    .line 38
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "telWork"

    const-string v7, "TEL_WORK"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->TelWork:Lde/greenrobot/dao/Property;

    .line 39
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string v5, "telMobile"

    const-string v7, "TEL_MOBILE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->TelMobile:Lde/greenrobot/dao/Property;

    .line 40
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/String;

    const-string v5, "email"

    const-string v7, "EMAIL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->Email:Lde/greenrobot/dao/Property;

    .line 41
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/String;

    const-string v5, "occupation"

    const-string v7, "OCCUPATION"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->Occupation:Lde/greenrobot/dao/Property;

    .line 42
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/String;

    const-string v5, "birthday"

    const-string v7, "BIRTHDAY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->Birthday:Lde/greenrobot/dao/Property;

    .line 43
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/String;

    const-string v5, "anniversary"

    const-string v7, "ANNIVERSARY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->Anniversary:Lde/greenrobot/dao/Property;

    .line 44
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/lang/String;

    const-string v5, "cardNumber"

    const-string v7, "CARD_NUMBER"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->CardNumber:Lde/greenrobot/dao/Property;

    .line 45
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/String;

    const-string v5, "dateOfIssue"

    const-string v7, "DATE_OF_ISSUE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->DateOfIssue:Lde/greenrobot/dao/Property;

    .line 46
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/String;

    const-string v5, "dateOfExpire"

    const-string v7, "DATE_OF_EXPIRE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->DateOfExpire:Lde/greenrobot/dao/Property;

    .line 47
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/String;

    const-string v5, "discount"

    const-string v7, "DISCOUNT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->Discount:Lde/greenrobot/dao/Property;

    .line 48
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/String;

    const-string v5, "PAN"

    const-string v7, "PAN"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->PAN:Lde/greenrobot/dao/Property;

    .line 49
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x17

    const-class v4, Ljava/lang/String;

    const-string v5, "isCustomer"

    const-string v7, "IS_CUSTOMER"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->IsCustomer:Lde/greenrobot/dao/Property;

    .line 50
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x18

    const-class v4, Ljava/lang/String;

    const-string v5, "remainingBalance"

    const-string v7, "REMAINING_BALANCE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->RemainingBalance:Lde/greenrobot/dao/Property;

    .line 51
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x19

    const-class v4, Ljava/lang/String;

    const-string v5, "uptoNowPaid"

    const-string v7, "UPTO_NOW_PAID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->UptoNowPaid:Lde/greenrobot/dao/Property;

    .line 52
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1a

    const-class v4, Ljava/lang/String;

    const-string v5, "payAmount"

    const-string v7, "PAY_AMOUNT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->PayAmount:Lde/greenrobot/dao/Property;

    .line 53
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1b

    const-class v4, Ljava/lang/String;

    const-string v5, "addedBy"

    const-string v7, "ADDED_BY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->AddedBy:Lde/greenrobot/dao/Property;

    .line 54
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1c

    const-class v4, Ljava/lang/String;

    const-string v5, "gtId"

    const-string v7, "GT_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->GtId:Lde/greenrobot/dao/Property;

    .line 55
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1d

    const-class v4, Ljava/lang/String;

    const-string v5, "guestType"

    const-string v7, "GUEST_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->GuestType:Lde/greenrobot/dao/Property;

    .line 56
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1e

    const-class v4, Ljava/lang/String;

    const-string v5, "gtDiscount"

    const-string v7, "GT_DISCOUNT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->GtDiscount:Lde/greenrobot/dao/Property;

    .line 57
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1f

    const-class v4, Ljava/lang/String;

    const-string v5, "ctzPassportNumber"

    const-string v7, "CTZ_PASSPORT_NUMBER"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CustomerDbDao$Properties;->CtzPassportNumber:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
