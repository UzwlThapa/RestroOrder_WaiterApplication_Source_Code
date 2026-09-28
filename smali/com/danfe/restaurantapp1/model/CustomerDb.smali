###### Class com.danfe.restaurantapp1.model.CustomerDb (com.danfe.restaurantapp1.model.CustomerDb)
.class public Lcom/danfe/restaurantapp1/model/CustomerDb;
.super Ljava/lang/Object;
.source "CustomerDb.java"


# instance fields
.field private FullAddress:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private PAN:Ljava/lang/String;

.field private addedBy:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private anniversary:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private ctzPassportNumber:Ljava/lang/String;

.field private customerCreditId:Ljava/lang/String;

.field private dateOfExpire:Ljava/lang/String;

.field private dateOfIssue:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fName:Ljava/lang/String;

.field private gtDiscount:Ljava/lang/String;

.field private gtId:Ljava/lang/String;

.field private guestType:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isCustomer:Ljava/lang/String;

.field private lName:Ljava/lang/String;

.field private membershipId:Ljava/lang/String;

.field private occupation:Ljava/lang/String;

.field private payAmount:Ljava/lang/String;

.field private remainingBalance:Ljava/lang/String;

.field private telHome:Ljava/lang/String;

.field private telMobile:Ljava/lang/String;

.field private telWork:Ljava/lang/String;

.field private uptoNowPaid:Ljava/lang/String;

.field private vendorId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->id:Ljava/lang/Long;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 34
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "customerCreditId"    # Ljava/lang/String;
    .param p3, "FullAddress"    # Ljava/lang/String;
    .param p4, "Name"    # Ljava/lang/String;
    .param p5, "membershipId"    # Ljava/lang/String;
    .param p6, "vendorId"    # Ljava/lang/String;
    .param p7, "fName"    # Ljava/lang/String;
    .param p8, "lName"    # Ljava/lang/String;
    .param p9, "address"    # Ljava/lang/String;
    .param p10, "city"    # Ljava/lang/String;
    .param p11, "country"    # Ljava/lang/String;
    .param p12, "telHome"    # Ljava/lang/String;
    .param p13, "telWork"    # Ljava/lang/String;
    .param p14, "telMobile"    # Ljava/lang/String;
    .param p15, "email"    # Ljava/lang/String;
    .param p16, "occupation"    # Ljava/lang/String;
    .param p17, "birthday"    # Ljava/lang/String;
    .param p18, "anniversary"    # Ljava/lang/String;
    .param p19, "cardNumber"    # Ljava/lang/String;
    .param p20, "dateOfIssue"    # Ljava/lang/String;
    .param p21, "dateOfExpire"    # Ljava/lang/String;
    .param p22, "discount"    # Ljava/lang/String;
    .param p23, "PAN"    # Ljava/lang/String;
    .param p24, "isCustomer"    # Ljava/lang/String;
    .param p25, "remainingBalance"    # Ljava/lang/String;
    .param p26, "uptoNowPaid"    # Ljava/lang/String;
    .param p27, "payAmount"    # Ljava/lang/String;
    .param p28, "addedBy"    # Ljava/lang/String;
    .param p29, "gtId"    # Ljava/lang/String;
    .param p30, "guestType"    # Ljava/lang/String;
    .param p31, "gtDiscount"    # Ljava/lang/String;
    .param p32, "ctzPassportNumber"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->id:Ljava/lang/Long;

    .line 51
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->customerCreditId:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->FullAddress:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->Name:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->membershipId:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->vendorId:Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->fName:Ljava/lang/String;

    .line 57
    iput-object p8, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->lName:Ljava/lang/String;

    .line 58
    iput-object p9, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->address:Ljava/lang/String;

    .line 59
    iput-object p10, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->city:Ljava/lang/String;

    .line 60
    iput-object p11, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->country:Ljava/lang/String;

    .line 61
    iput-object p12, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->telHome:Ljava/lang/String;

    .line 62
    iput-object p13, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->telWork:Ljava/lang/String;

    .line 63
    iput-object p14, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->telMobile:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->email:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->occupation:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->birthday:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->anniversary:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->cardNumber:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->dateOfIssue:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->dateOfExpire:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->discount:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->PAN:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->isCustomer:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->remainingBalance:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->uptoNowPaid:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->payAmount:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->addedBy:Ljava/lang/String;

    .line 78
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->gtId:Ljava/lang/String;

    .line 79
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->guestType:Ljava/lang/String;

    .line 80
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->gtDiscount:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->ctzPassportNumber:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getAddedBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->addedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAnniversary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->anniversary:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCtzPassportNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->ctzPassportNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerCreditId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->customerCreditId:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfExpire()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->dateOfExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfIssue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->dateOfIssue:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->FullAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getGtDiscount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->gtDiscount:Ljava/lang/String;

    return-object v0
.end method

.method public getGtId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->gtId:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->guestType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsCustomer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->isCustomer:Ljava/lang/String;

    return-object v0
.end method

.method public getLName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->lName:Ljava/lang/String;

    return-object v0
.end method

.method public getMembershipId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->membershipId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getPAN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->PAN:Ljava/lang/String;

    return-object v0
.end method

.method public getPayAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->payAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingBalance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->remainingBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getTelHome()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->telHome:Ljava/lang/String;

    return-object v0
.end method

.method public getTelMobile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->telMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getTelWork()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->telWork:Ljava/lang/String;

    return-object v0
.end method

.method public getUptoNowPaid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->uptoNowPaid:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->vendorId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddedBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "addedBy"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->addedBy:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->address:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setAnniversary(Ljava/lang/String;)V
    .registers 2
    .param p1, "anniversary"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->anniversary:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .registers 2
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->birthday:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->cardNumber:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->city:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->country:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setCtzPassportNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "ctzPassportNumber"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->ctzPassportNumber:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setCustomerCreditId(Ljava/lang/String;)V
    .registers 2
    .param p1, "customerCreditId"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->customerCreditId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setDateOfExpire(Ljava/lang/String;)V
    .registers 2
    .param p1, "dateOfExpire"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->dateOfExpire:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setDateOfIssue(Ljava/lang/String;)V
    .registers 2
    .param p1, "dateOfIssue"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->dateOfIssue:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .registers 2
    .param p1, "discount"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->discount:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->email:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setFName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fName"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->fName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setFullAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "FullAddress"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->FullAddress:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setGtDiscount(Ljava/lang/String;)V
    .registers 2
    .param p1, "gtDiscount"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->gtDiscount:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setGtId(Ljava/lang/String;)V
    .registers 2
    .param p1, "gtId"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->gtId:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setGuestType(Ljava/lang/String;)V
    .registers 2
    .param p1, "guestType"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->guestType:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->id:Ljava/lang/Long;

    .line 90
    return-void
.end method

.method public setIsCustomer(Ljava/lang/String;)V
    .registers 2
    .param p1, "isCustomer"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->isCustomer:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setLName(Ljava/lang/String;)V
    .registers 2
    .param p1, "lName"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->lName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setMembershipId(Ljava/lang/String;)V
    .registers 2
    .param p1, "membershipId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->membershipId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->Name:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .registers 2
    .param p1, "occupation"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->occupation:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setPAN(Ljava/lang/String;)V
    .registers 2
    .param p1, "PAN"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->PAN:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setPayAmount(Ljava/lang/String;)V
    .registers 2
    .param p1, "payAmount"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->payAmount:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setRemainingBalance(Ljava/lang/String;)V
    .registers 2
    .param p1, "remainingBalance"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->remainingBalance:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setTelHome(Ljava/lang/String;)V
    .registers 2
    .param p1, "telHome"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->telHome:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setTelMobile(Ljava/lang/String;)V
    .registers 2
    .param p1, "telMobile"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->telMobile:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setTelWork(Ljava/lang/String;)V
    .registers 2
    .param p1, "telWork"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->telWork:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setUptoNowPaid(Ljava/lang/String;)V
    .registers 2
    .param p1, "uptoNowPaid"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->uptoNowPaid:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setVendorId(Ljava/lang/String;)V
    .registers 2
    .param p1, "vendorId"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CustomerDb;->vendorId:Ljava/lang/String;

    .line 130
    return-void
.end method
