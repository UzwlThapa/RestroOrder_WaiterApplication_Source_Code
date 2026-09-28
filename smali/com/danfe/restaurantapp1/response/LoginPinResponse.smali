###### Class com.danfe.restaurantapp1.response.LoginPinResponse (com.danfe.restaurantapp1.response.LoginPinResponse)
.class public Lcom/danfe/restaurantapp1/response/LoginPinResponse;
.super Ljava/lang/Object;
.source "LoginPinResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;
    }
.end annotation


# instance fields
.field private data:Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private statusCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse;->data:Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setData(Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;)V
    .registers 2
    .param p1, "data"    # Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse;->data:Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    .line 43
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse;->message:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setStatusCode(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "statusCode"    # Ljava/lang/Integer;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse;->statusCode:Ljava/lang/Integer;

    .line 27
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.LoginPinResponse.Data (com.danfe.restaurantapp1.response.LoginPinResponse$Data)
.class public Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;
.super Ljava/lang/Object;
.source "LoginPinResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/LoginPinResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private disablePin:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisablePin"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Message"
    .end annotation
.end field

.field private orderMenuImageshow:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderMenuImageshow"
    .end annotation
.end field

.field private orderMenuListType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderMenuListType"
    .end annotation
.end field

.field private roles:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Roles"
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/LoginPinResponse;

.field private userID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserID"
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/LoginPinResponse;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/LoginPinResponse;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->this$0:Lcom/danfe/restaurantapp1/response/LoginPinResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisablePin()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->disablePin:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderMenuImageshow()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->orderMenuImageshow:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderMenuListType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->orderMenuListType:Ljava/lang/String;

    return-object v0
.end method

.method public getRoles()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->roles:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisablePin(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "disablePin"    # Ljava/lang/Boolean;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->disablePin:Ljava/lang/Boolean;

    .line 107
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->message:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setOrderMenuImageshow(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderMenuImageshow"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->orderMenuImageshow:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setOrderMenuListType(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderMenuListType"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->orderMenuListType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setRoles(Ljava/lang/String;)V
    .registers 2
    .param p1, "roles"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->roles:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .registers 2
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->userID:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->userName:Ljava/lang/String;

    .line 91
    return-void
.end method
