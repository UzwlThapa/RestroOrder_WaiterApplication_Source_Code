###### Class com.danfe.restaurantapp1.helper.Preferences (com.danfe.restaurantapp1.helper.Preferences)
.class public Lcom/danfe/restaurantapp1/helper/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "baseUrl"

.field private static final DEVICE_ID:Ljava/lang/String; = "deviceID"

.field private static final DEVICE_LOCK:Ljava/lang/String; = "device_lock"

.field private static final DEVICE_PSWD:Ljava/lang/String; = "device_pswd"

.field private static final ENABLE_MENU_IMAGE:Ljava/lang/String; = "menu_image"

.field private static final ENABLE_MERGETABLE:Ljava/lang/String; = "merge_table"

.field private static final ENABLE_ORDER_GRID:Ljava/lang/String; = "order_grid"

.field private static final ENABLE_OUTSTOCK:Ljava/lang/String; = "out_of_stock"

.field private static final ENABLE_SHIFTITEM:Ljava/lang/String; = "shift_item"

.field private static final ENABLE_SHOW_BILL:Ljava/lang/String; = "show_bill"

.field private static final ENABLE_SPLITBILL:Ljava/lang/String; = "split_bill"

.field private static final ROOM_ID:Ljava/lang/String; = "roomId"

.field private static final ROOM_NAME:Ljava/lang/String; = "roomName"

.field private static final ROOM_TYPE_ID:Ljava/lang/String; = "roomTypeId"

.field private static final TABLE_ID:Ljava/lang/String; = "table_id"

.field private static final TABLE_NAME:Ljava/lang/String; = "tableName"


# instance fields
.field private final API_REQUEST_STATUS:Ljava/lang/String;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "api_request_status"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->API_REQUEST_STATUS:Ljava/lang/String;

    .line 35
    const-string v0, "nolight_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 37
    return-void
.end method


# virtual methods
.method public clearPreference()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "baseUrl"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "deviceID"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "api_request_status"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "roomId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "roomName"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "roomTypeId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "table_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "tableName"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public getApiRequestStatus()Z
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "api_request_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "baseUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "deviceID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceLock()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "device_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePswd()Ljava/lang/String;
    .registers 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "device_pswd"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnableMenuImage()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "menu_image"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getEnableOrderGrid()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "order_grid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMergeTable()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "merge_table"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getOutofStock()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "out_of_stock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPreferencesBoolean(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPreferencesInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreferencesLong(Ljava/lang/String;)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreferencesString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoomId()I
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "roomId"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRoomName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "roomName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoomTypeId()I
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "roomTypeId"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShiftItem()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "shift_item"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getShowBill()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "show_bill"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSplitBill()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "split_bill"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTableId()I
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "table_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "tableName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setApiRequestStatus(Z)V
    .registers 4
    .param p1, "status"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "api_request_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "baseUrl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "deviceID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void
.end method

.method public setDeviceLock(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "deviceLock"    # Ljava/lang/Boolean;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "device_lock"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method

.method public setDevicePswd(Ljava/lang/String;)V
    .registers 4
    .param p1, "devicePswd"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "device_pswd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void
.end method

.method public setEnableMenuImage(Z)V
    .registers 4
    .param p1, "menuImage"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "menu_image"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 191
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    return-void
.end method

.method public setEnableMergeTable(Z)V
    .registers 4
    .param p1, "mergeTable"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "merge_table"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    return-void
.end method

.method public setEnableOrderGrid(Z)V
    .registers 4
    .param p1, "orderGrid"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "order_grid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 196
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method

.method public setEnableOutstock(Z)V
    .registers 4
    .param p1, "outofstock"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "out_of_stock"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public setEnableShiftitem(Z)V
    .registers 4
    .param p1, "shiftitem"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "shift_item"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void
.end method

.method public setEnableShowBill(Z)V
    .registers 4
    .param p1, "showBill"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "show_bill"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method

.method public setEnableSplitbill(Z)V
    .registers 4
    .param p1, "splitbill"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "split_bill"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method

.method public setPreferencesBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public setPreferencesInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "number"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method

.method public setPreferencesLong(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public setPreferencesString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public setRoomId(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "roomId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    return-void
.end method

.method public setRoomName(Ljava/lang/String;)V
    .registers 4
    .param p1, "roomName"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "roomName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method

.method public setRoomTypeId(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "roomTypeId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public setTableId(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "table_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .registers 4
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "tableName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method
