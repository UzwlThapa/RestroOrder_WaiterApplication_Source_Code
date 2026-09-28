###### Class com.danfe.restaurantapp1.response.CustomerResponseModel (com.danfe.restaurantapp1.response.CustomerResponseModel)
.class public Lcom/danfe/restaurantapp1/response/CustomerResponseModel;
.super Ljava/lang/Object;
.source "CustomerResponseModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;
    }
.end annotation


# instance fields
.field private additionalProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel;->d:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel;->additionalProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAdditionalProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getD()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel;->d:Ljava/util/List;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public setD(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel;->d:Ljava/util/List;

    .line 21
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.CustomerResponseModel.D (com.danfe.restaurantapp1.response.CustomerResponseModel$D)
.class public Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;
.super Ljava/lang/Object;
.source "CustomerResponseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/CustomerResponseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "D"
.end annotation


# instance fields
.field private AddedBy:Ljava/lang/Object;

.field private Address:Ljava/lang/String;

.field private Addresss:Ljava/lang/String;

.field private Anniversary:Ljava/lang/String;

.field private Birthday:Ljava/lang/String;

.field private CardNumber:Ljava/lang/String;

.field private CitizenshipPassportNo:Ljava/lang/String;

.field private City:Ljava/lang/String;

.field private Company:Ljava/lang/String;

.field private Country:Ljava/lang/String;

.field private CusCreditID:Ljava/lang/Integer;

.field private DateOfExpire:Ljava/lang/String;

.field private DateOfIssue:Ljava/lang/String;

.field private Discount:Ljava/lang/Double;

.field private Email:Ljava/lang/String;

.field private Fname:Ljava/lang/String;

.field private GTDiscount:Ljava/lang/Object;

.field private GTID:Ljava/lang/Integer;

.field private GuestType:Ljava/lang/String;

.field private IsCustomer:Ljava/lang/Boolean;

.field private Lname:Ljava/lang/String;

.field private MembershipID:Ljava/lang/Integer;

.field private Name:Ljava/lang/String;

.field private Occupation:Ljava/lang/String;

.field private PAN:Ljava/lang/String;

.field private PayAmount:Ljava/lang/Integer;

.field private RemainingBalance:Ljava/lang/Double;

.field private TelHome:Ljava/lang/Object;

.field private TelMobile:Ljava/lang/String;

.field private TelWork:Ljava/lang/String;

.field private Type:Ljava/lang/String;

.field private UptoNowPaid:Ljava/lang/Double;

.field private VendorID:Ljava/lang/Integer;

.field private additionalProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/CustomerResponseModel;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/CustomerResponseModel;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/CustomerResponseModel;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->this$0:Lcom/danfe/restaurantapp1/response/CustomerResponseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->additionalProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAddedBy()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->AddedBy:Ljava/lang/Object;

    return-object v0
.end method

.method public getAdditionalProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddresss()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Addresss:Ljava/lang/String;

    return-object v0
.end method

.method public getAnniversary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Anniversary:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCitizenshipPassportNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->CitizenshipPassportNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->City:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Company:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Country:Ljava/lang/String;

    return-object v0
.end method

.method public getCusCreditID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->CusCreditID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDateOfExpire()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->DateOfExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfIssue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->DateOfIssue:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Discount:Ljava/lang/Double;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Email:Ljava/lang/String;

    return-object v0
.end method

.method public getFname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Fname:Ljava/lang/String;

    return-object v0
.end method

.method public getGTDiscount()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->GTDiscount:Ljava/lang/Object;

    return-object v0
.end method

.method public getGTID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->GTID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGuestType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->GuestType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCustomer()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->IsCustomer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Lname:Ljava/lang/String;

    return-object v0
.end method

.method public getMembershipID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->MembershipID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getPAN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->PAN:Ljava/lang/String;

    return-object v0
.end method

.method public getPayAmount()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->PayAmount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRemainingBalance()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->RemainingBalance:Ljava/lang/Double;

    return-object v0
.end method

.method public getTelHome()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->TelHome:Ljava/lang/Object;

    return-object v0
.end method

.method public getTelMobile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->TelMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getTelWork()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->TelWork:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public getUptoNowPaid()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->UptoNowPaid:Ljava/lang/Double;

    return-object v0
.end method

.method public getVendorID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->VendorID:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAddedBy(Ljava/lang/Object;)V
    .registers 2
    .param p1, "addedBy"    # Ljava/lang/Object;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->AddedBy:Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Address:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setAddresss(Ljava/lang/String;)V
    .registers 2
    .param p1, "addresss"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Addresss:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setAnniversary(Ljava/lang/String;)V
    .registers 2
    .param p1, "anniversary"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Anniversary:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .registers 2
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Birthday:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->CardNumber:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setCitizenshipPassportNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "citizenshipPassportNo"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->CitizenshipPassportNo:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->City:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .registers 2
    .param p1, "company"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Company:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Country:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setCusCreditID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "cusCreditID"    # Ljava/lang/Integer;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->CusCreditID:Ljava/lang/Integer;

    .line 81
    return-void
.end method

.method public setDateOfExpire(Ljava/lang/String;)V
    .registers 2
    .param p1, "dateOfExpire"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->DateOfExpire:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setDateOfIssue(Ljava/lang/String;)V
    .registers 2
    .param p1, "dateOfIssue"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->DateOfIssue:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setDiscount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "discount"    # Ljava/lang/Double;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Discount:Ljava/lang/Double;

    .line 249
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Email:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setFname(Ljava/lang/String;)V
    .registers 2
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Fname:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setGTDiscount(Ljava/lang/Object;)V
    .registers 2
    .param p1, "gTDiscount"    # Ljava/lang/Object;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->GTDiscount:Ljava/lang/Object;

    .line 321
    return-void
.end method

.method public setGTID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "gTID"    # Ljava/lang/Integer;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->GTID:Ljava/lang/Integer;

    .line 305
    return-void
.end method

.method public setGuestType(Ljava/lang/String;)V
    .registers 2
    .param p1, "guestType"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->GuestType:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setIsCustomer(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isCustomer"    # Ljava/lang/Boolean;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->IsCustomer:Ljava/lang/Boolean;

    .line 265
    return-void
.end method

.method public setLname(Ljava/lang/String;)V
    .registers 2
    .param p1, "lname"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Lname:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setMembershipID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "membershipID"    # Ljava/lang/Integer;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->MembershipID:Ljava/lang/Integer;

    .line 105
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Name:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .registers 2
    .param p1, "occupation"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Occupation:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setPAN(Ljava/lang/String;)V
    .registers 2
    .param p1, "pAN"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->PAN:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setPayAmount(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "payAmount"    # Ljava/lang/Integer;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->PayAmount:Ljava/lang/Integer;

    .line 289
    return-void
.end method

.method public setRemainingBalance(Ljava/lang/Double;)V
    .registers 2
    .param p1, "remainingBalance"    # Ljava/lang/Double;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->RemainingBalance:Ljava/lang/Double;

    .line 273
    return-void
.end method

.method public setTelHome(Ljava/lang/Object;)V
    .registers 2
    .param p1, "telHome"    # Ljava/lang/Object;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->TelHome:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public setTelMobile(Ljava/lang/String;)V
    .registers 2
    .param p1, "telMobile"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->TelMobile:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setTelWork(Ljava/lang/String;)V
    .registers 2
    .param p1, "telWork"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->TelWork:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->Type:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUptoNowPaid(Ljava/lang/Double;)V
    .registers 2
    .param p1, "uptoNowPaid"    # Ljava/lang/Double;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->UptoNowPaid:Ljava/lang/Double;

    .line 281
    return-void
.end method

.method public setVendorID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "vendorID"    # Ljava/lang/Integer;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->VendorID:Ljava/lang/Integer;

    .line 113
    return-void
.end method
