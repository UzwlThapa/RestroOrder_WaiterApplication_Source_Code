###### Class com.danfe.restaurantapp1.helper.Util (com.danfe.restaurantapp1.helper.Util)
.class public Lcom/danfe/restaurantapp1/helper/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/Util$Api;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetIP(Landroid/content/Context;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    new-instance v4, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    .line 313
    .local v4, "preference":Lcom/danfe/restaurantapp1/helper/Preferences;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v8, "<font color=\'black\'>IP Address</font>"

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enter IP Address(Current IP is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->getBaseUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 317
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 318
    .local v5, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 319
    .local v6, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 320
    .local v7, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 321
    const/4 v8, 0x0

    const/16 v9, 0xa

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 323
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 324
    .local v2, "input":Landroid/widget/EditText;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 325
    .local v1, "clearbtn":Landroid/widget/ImageView;
    const v8, 0x7f0200a5

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const-string v8, "Ip Address"

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 337
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 339
    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 340
    new-instance v8, Lcom/danfe/restaurantapp1/helper/Util$11;

    invoke-direct {v8, v2, v4}, Lcom/danfe/restaurantapp1/helper/Util$11;-><init>(Landroid/widget/EditText;Lcom/danfe/restaurantapp1/helper/Preferences;)V

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 351
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    .line 353
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    :goto_ba
    new-instance v8, Lcom/danfe/restaurantapp1/helper/Util$12;

    invoke-direct {v8, v2, v4}, Lcom/danfe/restaurantapp1/helper/Util$12;-><init>(Landroid/widget/EditText;Lcom/danfe/restaurantapp1/helper/Preferences;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 368
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 369
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 370
    const v8, 0x7f0200ae

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 371
    const-string v8, "Ok"

    new-instance v9, Lcom/danfe/restaurantapp1/helper/Util$13;

    invoke-direct {v9, v2, v4}, Lcom/danfe/restaurantapp1/helper/Util$13;-><init>(Landroid/widget/EditText;Lcom/danfe/restaurantapp1/helper/Preferences;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 388
    return-void

    .line 356
    :cond_df
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ba
.end method

.method public static getBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    new-instance v1, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    .line 127
    .local v1, "prefs":Lcom/danfe/restaurantapp1/helper/Preferences;
    const-string v0, ""

    .line 128
    .local v0, "BaseUrl":Ljava/lang/String;
    const-string v2, "baseUrl1"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 130
    const-string v2, "baseUrl2"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Modules"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_3a
    return-object v0

    .line 133
    :cond_3b
    const-string v0, "192.11.1.1"

    goto :goto_3a
.end method

.method public static getCostCenterType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "userRole"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kitchenorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 394
    const-string v0, "Kot"

    .line 405
    .local v0, "costCenterType":Ljava/lang/String;
    :goto_12
    return-object v0

    .line 395
    .end local v0    # "costCenterType":Ljava/lang/String;
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "barorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 396
    const-string v0, "Bar"

    .restart local v0    # "costCenterType":Ljava/lang/String;
    goto :goto_12

    .line 397
    .end local v0    # "costCenterType":Ljava/lang/String;
    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bakeryorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 398
    const-string v0, "Bakery"

    .restart local v0    # "costCenterType":Ljava/lang/String;
    goto :goto_12

    .line 399
    .end local v0    # "costCenterType":Ljava/lang/String;
    :cond_31
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pizza maker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 400
    const-string v0, "Pizza"

    .restart local v0    # "costCenterType":Ljava/lang/String;
    goto :goto_12

    .line 403
    .end local v0    # "costCenterType":Ljava/lang/String;
    :cond_40
    const-string v0, "Default"

    .restart local v0    # "costCenterType":Ljava/lang/String;
    goto :goto_12
.end method

.method public static getDateTime()Ljava/lang/String;
    .registers 3

    .prologue
    .line 637
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 638
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 639
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getIpAccess(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 81
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 82
    .local v1, "ipAddress":I
    const-string v3, "%d.%d.%d.%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    and-int/lit16 v6, v1, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    shr-int/lit8 v6, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "formatedIpAddress":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static hideSoftKeyboard(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    const-string v1, "input_method"

    .line 74
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 77
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 78
    return-void
.end method

.method public static isAppIsInBackground(Landroid/content/Context;)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 416
    const/4 v3, 0x1

    .line 417
    .local v3, "isInBackground":Z
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 418
    .local v1, "am":Landroid/app/ActivityManager;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x14

    if-le v7, v9, :cond_40

    .line 419
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 420
    .local v5, "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 421
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x64

    if-ne v7, v10, :cond_18

    .line 422
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v10

    move v7, v8

    :goto_2e
    if-ge v7, v11, :cond_18

    aget-object v0, v10, v7

    .line 423
    .local v0, "activeProcess":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 424
    const/4 v3, 0x0

    .line 422
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 430
    .end local v0    # "activeProcess":Ljava/lang/String;
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_40
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 431
    .local v6, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 432
    .local v2, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 433
    const/4 v3, 0x0

    .line 437
    .end local v2    # "componentInfo":Landroid/content/ComponentName;
    .end local v6    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5c
    return v3
.end method

.method public static isConnection(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    const-string v2, "connectivity"

    .line 302
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 303
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 304
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_10

    .line 305
    const/4 v2, 0x0

    .line 307
    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x1

    goto :goto_f
.end method

.method public static nullValidator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "validationString"    # Ljava/lang/String;

    .prologue
    .line 644
    const-string v0, ""

    .line 645
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_11

    .line 646
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 647
    const-string v0, "-"

    .line 654
    :goto_e
    return-object v0

    .line 649
    :cond_f
    move-object v0, p0

    goto :goto_e

    .line 652
    :cond_11
    const-string v0, "-"

    goto :goto_e
.end method

.method public static showBillNotAvailable(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 519
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 520
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030039

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, "DialogView":Landroid/view/View;
    const v5, 0x7f04001b

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 523
    .local v2, "animation":Landroid/view/animation/Animation;
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 524
    .local v1, "alertDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 526
    const v5, 0x7f0f0140

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 529
    .local v3, "btnOK":Landroid/widget/Button;
    new-instance v5, Lcom/danfe/restaurantapp1/helper/Util$14;

    invoke-direct {v5, v3, v2, v1}, Lcom/danfe/restaurantapp1/helper/Util$14;-><init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02009b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 554
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 557
    return-void
.end method

.method public static showBillNotCleared(Landroid/content/Context;Z)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "merge"    # Z

    .prologue
    .line 566
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 567
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f03003a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 568
    .local v0, "DialogView":Landroid/view/View;
    const v6, 0x7f04001b

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 570
    .local v2, "animation":Landroid/view/animation/Animation;
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 571
    .local v1, "alertDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 573
    const v6, 0x7f0f0141

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 574
    .local v4, "btnRemoveMerge":Landroid/widget/Button;
    const v6, 0x7f0f0140

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 575
    .local v3, "btnOK":Landroid/widget/Button;
    if-nez p1, :cond_38

    .line 576
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 579
    :cond_38
    new-instance v6, Lcom/danfe/restaurantapp1/helper/Util$15;

    invoke-direct {v6, v4, v2, v1}, Lcom/danfe/restaurantapp1/helper/Util$15;-><init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    new-instance v6, Lcom/danfe/restaurantapp1/helper/Util$16;

    invoke-direct {v6, v3, v2, v1}, Lcom/danfe/restaurantapp1/helper/Util$16;-><init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02009b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 630
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 633
    return-void
.end method

.method public static showError(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=black>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/danfe/restaurantapp1/helper/Util$10;

    invoke-direct {v2, p2}, Lcom/danfe/restaurantapp1/helper/Util$10;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200aa

    .line 296
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 297
    return-void
.end method

.method public static showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, " "

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/danfe/restaurantapp1/helper/Util$1;

    invoke-direct {v2}, Lcom/danfe/restaurantapp1/helper/Util$1;-><init>()V

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200aa

    .line 97
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 98
    return-void
.end method

.method public static showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=black>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/danfe/restaurantapp1/helper/Util$9;

    invoke-direct {v2}, Lcom/danfe/restaurantapp1/helper/Util$9;-><init>()V

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200aa

    .line 281
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 282
    return-void
.end method

.method public static showExitConfirmationDialog(Landroid/content/Context;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 673
    .local v9, "layoutInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f03003b

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 674
    .local v7, "DialogView":Landroid/view/View;
    const v0, 0x7f04001b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 675
    .local v2, "animation":Landroid/view/animation/Animation;
    new-instance v6, Lcom/danfe/restaurantapp1/helper/DeviceLock;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/helper/DeviceLock;-><init>(Landroid/content/Context;)V

    .line 676
    .local v6, "deviceLock":Lcom/danfe/restaurantapp1/helper/DeviceLock;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 677
    .local v4, "alertDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v4, v7}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 679
    const v0, 0x7f0f0142

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 680
    .local v8, "btnCancel":Landroid/widget/Button;
    const v0, 0x7f0f0143

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 681
    .local v1, "btnConfirm":Landroid/widget/Button;
    new-instance v5, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {v5, p0}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    .line 683
    .local v5, "preference":Lcom/danfe/restaurantapp1/helper/Preferences;
    new-instance v0, Lcom/danfe/restaurantapp1/helper/Util$17;

    invoke-direct {v0, v8, v2, v4}, Lcom/danfe/restaurantapp1/helper/Util$17;-><init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    new-instance v0, Lcom/danfe/restaurantapp1/helper/Util$18;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/danfe/restaurantapp1/helper/Util$18;-><init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/content/Context;Landroid/support/v7/app/AlertDialog;Lcom/danfe/restaurantapp1/helper/Preferences;Lcom/danfe/restaurantapp1/helper/DeviceLock;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f02009b

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 739
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 742
    return-void
.end method

.method public static showGuestAddedDialog(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "<font color=\'#FF7F27\'> <b> No. of Split Information! </b> </font"

    .line 114
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200aa

    .line 116
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/danfe/restaurantapp1/helper/Util$3;

    invoke-direct {v2}, Lcom/danfe/restaurantapp1/helper/Util$3;-><init>()V

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 123
    return-void
.end method

.method public static showLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 658
    sget-boolean v0, Lcom/danfe/restaurantapp1/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 659
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_7
    return-void
.end method

.method public static showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .param p0, "Message"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const-string v1, "null"

    .line 222
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    if-eqz p0, :cond_34

    .line 224
    move-object v1, p0

    .line 229
    :goto_a
    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util;->isConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 230
    const-string v2, "Error"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 231
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Change Ip Settings"

    new-instance v4, Lcom/danfe/restaurantapp1/helper/Util$5;

    invoke-direct {v4, p1}, Lcom/danfe/restaurantapp1/helper/Util$5;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Okay"

    new-instance v4, Lcom/danfe/restaurantapp1/helper/Util$4;

    invoke-direct {v4}, Lcom/danfe/restaurantapp1/helper/Util$4;-><init>()V

    .line 238
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 268
    :goto_33
    return-void

    .line 226
    :cond_34
    const-string v1, "Oops!! Something Went Wrong.Please Try Again Later."

    goto :goto_a

    .line 245
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<font color=\'#01050C\'> Note: Please Check Your Internet Connection.</font>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    const-string v2, "Error"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 247
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Change Ip Settings"

    new-instance v4, Lcom/danfe/restaurantapp1/helper/Util$8;

    invoke-direct {v4, p1}, Lcom/danfe/restaurantapp1/helper/Util$8;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Open Wifi Setting"

    new-instance v4, Lcom/danfe/restaurantapp1/helper/Util$7;

    invoke-direct {v4, p1}, Lcom/danfe/restaurantapp1/helper/Util$7;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Okay"

    new-instance v4, Lcom/danfe/restaurantapp1/helper/Util$6;

    invoke-direct {v4}, Lcom/danfe/restaurantapp1/helper/Util$6;-><init>()V

    .line 260
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_33
.end method

.method public static showSuccessDialog(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Extra Quantity Error"

    .line 102
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/danfe/restaurantapp1/helper/Util$2;

    invoke-direct {v2}, Lcom/danfe/restaurantapp1/helper/Util$2;-><init>()V

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200aa

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 110
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass1 (com.danfe.restaurantapp1.helper.Util$1)
.class final Lcom/danfe/restaurantapp1/helper/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    const-string v0, "###"

    const-string v1, "notification finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass10 (com.danfe.restaurantapp1.helper.Util$10)
.class final Lcom/danfe/restaurantapp1/helper/Util$10;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showError(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$10;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 292
    const-string v0, "###"

    const-string v1, "notification finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass11 (com.danfe.restaurantapp1.helper.Util$11)
.class final Lcom/danfe/restaurantapp1/helper/Util$11;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->SetIP(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/danfe/restaurantapp1/helper/Preferences;)V
    .registers 3

    .prologue
    .line 340
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$11;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Util$11;->val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$11;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 344
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$11;->val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 345
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$11;->val$input:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass12 (com.danfe.restaurantapp1.helper.Util$12)
.class final Lcom/danfe/restaurantapp1/helper/Util$12;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->SetIP(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/danfe/restaurantapp1/helper/Preferences;)V
    .registers 3

    .prologue
    .line 358
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$12;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Util$12;->val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$12;->val$input:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$12;->val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->clearPreference()V

    .line 364
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass13 (com.danfe.restaurantapp1.helper.Util$13)
.class final Lcom/danfe/restaurantapp1/helper/Util$13;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->SetIP(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/danfe/restaurantapp1/helper/Preferences;)V
    .registers 3

    .prologue
    .line 372
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$13;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Util$13;->val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 374
    const-string v0, ""

    .line 375
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$13;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, "before ip"

    sget-object v2, Lcom/danfe/restaurantapp1/helper/Constants;->WEB_SERVICE_BASE_URL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Modules"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/danfe/restaurantapp1/helper/Constants;->WEB_SERVICE_BASE_URL:Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$13;->val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v1, v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->setBaseUrl(Ljava/lang/String;)V

    .line 381
    const-string v1, "after ip"

    sget-object v2, Lcom/danfe/restaurantapp1/helper/Constants;->WEB_SERVICE_BASE_URL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass14 (com.danfe.restaurantapp1.helper.Util$14)
.class final Lcom/danfe/restaurantapp1/helper/Util$14;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showBillNotAvailable(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$animation:Landroid/view/animation/Animation;

.field final synthetic val$btnOK:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/support/v7/app/AlertDialog;)V
    .registers 4

    .prologue
    .line 529
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$14;->val$btnOK:Landroid/widget/Button;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Util$14;->val$animation:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/Util$14;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$14;->val$btnOK:Landroid/widget/Button;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$14;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 533
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$14;->val$animation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Util$14$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Util$14$1;-><init>(Lcom/danfe/restaurantapp1/helper/Util$14;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 550
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass14.AnonymousClass1 (com.danfe.restaurantapp1.helper.Util$14$1)
.class Lcom/danfe/restaurantapp1/helper/Util$14$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Util$14;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Util$14;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Util$14;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$14$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$14$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$14;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Util$14;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 542
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 547
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 537
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass15 (com.danfe.restaurantapp1.helper.Util$15)
.class final Lcom/danfe/restaurantapp1/helper/Util$15;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showBillNotCleared(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$animation:Landroid/view/animation/Animation;

.field final synthetic val$btnRemoveMerge:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/support/v7/app/AlertDialog;)V
    .registers 4

    .prologue
    .line 579
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$15;->val$btnRemoveMerge:Landroid/widget/Button;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Util$15;->val$animation:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/Util$15;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$15;->val$btnRemoveMerge:Landroid/widget/Button;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$15;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 583
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$15;->val$animation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Util$15$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Util$15$1;-><init>(Lcom/danfe/restaurantapp1/helper/Util$15;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 602
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass15.AnonymousClass1 (com.danfe.restaurantapp1.helper.Util$15$1)
.class Lcom/danfe/restaurantapp1/helper/Util$15$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Util$15;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Util$15;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Util$15;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$15$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 591
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$15$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$15;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/Util$15;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 592
    new-instance v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;-><init>()V

    .line 593
    .local v0, "checkPinCode":Lcom/danfe/restaurantapp1/helper/CheckPinCode;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$15$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$15;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/Util$15;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mergeCancel"

    invoke-virtual {v0, v1, v2}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 599
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 587
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass16 (com.danfe.restaurantapp1.helper.Util$16)
.class final Lcom/danfe/restaurantapp1/helper/Util$16;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showBillNotCleared(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$animation:Landroid/view/animation/Animation;

.field final synthetic val$btnOK:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/support/v7/app/AlertDialog;)V
    .registers 4

    .prologue
    .line 605
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$16;->val$btnOK:Landroid/widget/Button;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Util$16;->val$animation:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/Util$16;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$16;->val$btnOK:Landroid/widget/Button;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$16;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 609
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$16;->val$animation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Util$16$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Util$16$1;-><init>(Lcom/danfe/restaurantapp1/helper/Util$16;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 626
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass16.AnonymousClass1 (com.danfe.restaurantapp1.helper.Util$16$1)
.class Lcom/danfe/restaurantapp1/helper/Util$16$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Util$16;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Util$16;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Util$16;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$16$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$16$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$16;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Util$16;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 618
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 623
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 613
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass17 (com.danfe.restaurantapp1.helper.Util$17)
.class final Lcom/danfe/restaurantapp1/helper/Util$17;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showExitConfirmationDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$animation:Landroid/view/animation/Animation;

.field final synthetic val$btnCancel:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/support/v7/app/AlertDialog;)V
    .registers 4

    .prologue
    .line 683
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$17;->val$btnCancel:Landroid/widget/Button;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Util$17;->val$animation:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/Util$17;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$17;->val$btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$17;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 687
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$17;->val$animation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Util$17$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Util$17$1;-><init>(Lcom/danfe/restaurantapp1/helper/Util$17;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 704
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass17.AnonymousClass1 (com.danfe.restaurantapp1.helper.Util$17$1)
.class Lcom/danfe/restaurantapp1/helper/Util$17$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Util$17;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Util$17;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Util$17;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$17$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$17$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$17;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Util$17;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 696
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 701
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 691
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass18 (com.danfe.restaurantapp1.helper.Util$18)
.class final Lcom/danfe/restaurantapp1/helper/Util$18;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showExitConfirmationDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$animation:Landroid/view/animation/Animation;

.field final synthetic val$btnConfirm:Landroid/widget/Button;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deviceLock:Lcom/danfe/restaurantapp1/helper/DeviceLock;

.field final synthetic val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;


# direct methods
.method constructor <init>(Landroid/widget/Button;Landroid/view/animation/Animation;Landroid/content/Context;Landroid/support/v7/app/AlertDialog;Lcom/danfe/restaurantapp1/helper/Preferences;Lcom/danfe/restaurantapp1/helper/DeviceLock;)V
    .registers 7

    .prologue
    .line 707
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$btnConfirm:Landroid/widget/Button;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$animation:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    iput-object p5, p0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    iput-object p6, p0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$deviceLock:Lcom/danfe/restaurantapp1/helper/DeviceLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 711
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$animation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Util$18$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Util$18$1;-><init>(Lcom/danfe/restaurantapp1/helper/Util$18;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 735
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass18.AnonymousClass1 (com.danfe.restaurantapp1.helper.Util$18$1)
.class Lcom/danfe/restaurantapp1/helper/Util$18$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Util$18;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Util$18;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Util$18;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$18$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$18$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$18;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 721
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$18$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$18;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 722
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Util$18$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$18;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/Util$18;->val$preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getDeviceLock()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 723
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$18$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$18;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 724
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$18$1;->this$0:Lcom/danfe/restaurantapp1/helper/Util$18;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Util$18;->val$deviceLock:Lcom/danfe/restaurantapp1/helper/DeviceLock;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/DeviceLock;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 727
    :cond_34
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 732
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 715
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass19 (com.danfe.restaurantapp1.helper.Util$19)
.class synthetic Lcom/danfe/restaurantapp1/helper/Util$19;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$retrofit$RetrofitError$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    invoke-static {}, Lretrofit/RetrofitError$Kind;->values()[Lretrofit/RetrofitError$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/danfe/restaurantapp1/helper/Util$19;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    :try_start_9
    sget-object v0, Lcom/danfe/restaurantapp1/helper/Util$19;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    sget-object v1, Lretrofit/RetrofitError$Kind;->CONVERSION:Lretrofit/RetrofitError$Kind;

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/danfe/restaurantapp1/helper/Util$19;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    sget-object v1, Lretrofit/RetrofitError$Kind;->HTTP:Lretrofit/RetrofitError$Kind;

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/danfe/restaurantapp1/helper/Util$19;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    sget-object v1, Lretrofit/RetrofitError$Kind;->UNEXPECTED:Lretrofit/RetrofitError$Kind;

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/danfe/restaurantapp1/helper/Util$19;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    sget-object v1, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass2 (com.danfe.restaurantapp1.helper.Util$2)
.class final Lcom/danfe/restaurantapp1/helper/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showSuccessDialog(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 106
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass3 (com.danfe.restaurantapp1.helper.Util$3)
.class final Lcom/danfe/restaurantapp1/helper/Util$3;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showGuestAddedDialog(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass4 (com.danfe.restaurantapp1.helper.Util$4)
.class final Lcom/danfe/restaurantapp1/helper/Util$4;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 242
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass5 (com.danfe.restaurantapp1.helper.Util$5)
.class final Lcom/danfe/restaurantapp1/helper/Util$5;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Util;->SetIP(Landroid/content/Context;)V

    .line 236
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass6 (com.danfe.restaurantapp1.helper.Util$6)
.class final Lcom/danfe/restaurantapp1/helper/Util$6;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 263
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 264
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass7 (com.danfe.restaurantapp1.helper.Util$7)
.class final Lcom/danfe/restaurantapp1/helper/Util$7;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 254
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$7;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass8 (com.danfe.restaurantapp1.helper.Util$8)
.class final Lcom/danfe/restaurantapp1/helper/Util$8;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Util$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Util$8;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Util;->SetIP(Landroid/content/Context;)V

    .line 252
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.AnonymousClass9 (com.danfe.restaurantapp1.helper.Util$9)
.class final Lcom/danfe/restaurantapp1/helper/Util$9;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 277
    const-string v0, "###"

    const-string v1, "notification finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Util.Api (com.danfe.restaurantapp1.helper.Util$Api)
.class public Lcom/danfe/restaurantapp1/helper/Util$Api;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;
    .registers 4
    .param p0, "re"    # Lretrofit/RetrofitError;

    .prologue
    .line 52
    sget-object v1, Lcom/danfe/restaurantapp1/helper/Util$19;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 66
    const-string v0, "Unexpected error, please try again"

    .line 69
    .local v0, "error":Ljava/lang/String;
    :goto_11
    return-object v0

    .line 54
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_12
    const-string v0, "Error on conversion, contact developer!"

    .line 55
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_11

    .line 57
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_15
    const-string v0, "Error while connecting to server, try again"

    .line 58
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_11

    .line 60
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_18
    const-string v0, "An internal error occurred while attempting to execute the request, try again"

    .line 61
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_11

    .line 63
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "Connectivity issue, please check your network status"

    .line 64
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_11

    .line 52
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method
