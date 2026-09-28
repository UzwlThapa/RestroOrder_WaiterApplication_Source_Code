###### Class com.danfe.restaurantapp1.helper.MessageEvents (com.danfe.restaurantapp1.helper.MessageEvents)
.class public Lcom/danfe/restaurantapp1/helper/MessageEvents;
.super Ljava/lang/Object;
.source "MessageEvents.java"


# instance fields
.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/MessageEvents;->message:Ljava/lang/String;

    .line 13
    return-void
.end method
