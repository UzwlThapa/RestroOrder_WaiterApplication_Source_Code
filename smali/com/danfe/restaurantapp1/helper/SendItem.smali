###### Class com.danfe.restaurantapp1.helper.SendItem (com.danfe.restaurantapp1.helper.SendItem)
.class public Lcom/danfe/restaurantapp1/helper/SendItem;
.super Ljava/lang/Object;
.source "SendItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/SendItem$UpdateDishDb;,
        Lcom/danfe/restaurantapp1/helper/SendItem$SendExtraPay;,
        Lcom/danfe/restaurantapp1/helper/SendItem$SendNotes;,
        Lcom/danfe/restaurantapp1/helper/SendItem$SendGuestNo;,
        Lcom/danfe/restaurantapp1/helper/SendItem$SendItemList;,
        Lcom/danfe/restaurantapp1/helper/SendItem$RemoveOrderItem;,
        Lcom/danfe/restaurantapp1/helper/SendItem$SendItemSingle;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.SendItem.RemoveOrderItem (com.danfe.restaurantapp1.helper.SendItem$RemoveOrderItem)
.class public interface abstract Lcom/danfe/restaurantapp1/helper/SendItem$RemoveOrderItem;
.super Ljava/lang/Object;
.source "SendItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/SendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoveOrderItem"
.end annotation


# virtual methods
.method public abstract onRemoveOrderItem(II)V
.end method

###### Class com.danfe.restaurantapp1.helper.SendItem.SendExtraPay (com.danfe.restaurantapp1.helper.SendItem$SendExtraPay)
.class public interface abstract Lcom/danfe/restaurantapp1/helper/SendItem$SendExtraPay;
.super Ljava/lang/Object;
.source "SendItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/SendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendExtraPay"
.end annotation


# virtual methods
.method public abstract onExtraAdded(Ljava/lang/String;)V
.end method

###### Class com.danfe.restaurantapp1.helper.SendItem.SendGuestNo (com.danfe.restaurantapp1.helper.SendItem$SendGuestNo)
.class public interface abstract Lcom/danfe/restaurantapp1/helper/SendItem$SendGuestNo;
.super Ljava/lang/Object;
.source "SendItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/SendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendGuestNo"
.end annotation


# virtual methods
.method public abstract onGuestNoAdded(I)V
.end method

###### Class com.danfe.restaurantapp1.helper.SendItem.SendItemList (com.danfe.restaurantapp1.helper.SendItem$SendItemList)
.class public interface abstract Lcom/danfe/restaurantapp1/helper/SendItem$SendItemList;
.super Ljava/lang/Object;
.source "SendItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/SendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendItemList"
.end annotation


# virtual methods
.method public abstract onOrderArrivalList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.helper.SendItem.SendItemSingle (com.danfe.restaurantapp1.helper.SendItem$SendItemSingle)
.class public interface abstract Lcom/danfe/restaurantapp1/helper/SendItem$SendItemSingle;
.super Ljava/lang/Object;
.source "SendItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/SendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendItemSingle"
.end annotation


# virtual methods
.method public abstract onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V
.end method

###### Class com.danfe.restaurantapp1.helper.SendItem.SendNotes (com.danfe.restaurantapp1.helper.SendItem$SendNotes)
.class public interface abstract Lcom/danfe/restaurantapp1/helper/SendItem$SendNotes;
.super Ljava/lang/Object;
.source "SendItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/SendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendNotes"
.end annotation


# virtual methods
.method public abstract onNotesAdded(Ljava/lang/String;)V
.end method

###### Class com.danfe.restaurantapp1.helper.SendItem.UpdateDishDb (com.danfe.restaurantapp1.helper.SendItem$UpdateDishDb)
.class public interface abstract Lcom/danfe/restaurantapp1/helper/SendItem$UpdateDishDb;
.super Ljava/lang/Object;
.source "SendItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/SendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateDishDb"
.end annotation


# virtual methods
.method public abstract onDishDbChange()V
.end method
