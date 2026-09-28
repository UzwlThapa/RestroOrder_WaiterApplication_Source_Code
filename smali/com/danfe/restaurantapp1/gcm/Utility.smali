###### Class com.danfe.restaurantapp1.gcm.Utility (com.danfe.restaurantapp1.gcm.Utility)
.class public Lcom/danfe/restaurantapp1/gcm/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final EMAIL_PATTERN:Ljava/lang/String; = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

.field private static matcher:Ljava/util/regex/Matcher;

.field private static pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validatReason(Landroid/content/Context;Landroid/widget/EditText;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 54
    const-string v3, "[a-zA-Z](\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 55
    .local v2, "reasonPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 57
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 58
    const/4 v3, 0x1

    .line 61
    :goto_19
    return v3

    .line 60
    :cond_1a
    const-string v3, "Please give a valid final reason."

    invoke-static {v3, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 61
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public static validate(Ljava/lang/String;)Z
    .registers 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/danfe/restaurantapp1/gcm/Utility;->pattern:Ljava/util/regex/Pattern;

    .line 34
    sget-object v0, Lcom/danfe/restaurantapp1/gcm/Utility;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/danfe/restaurantapp1/gcm/Utility;->matcher:Ljava/util/regex/Matcher;

    .line 35
    sget-object v0, Lcom/danfe/restaurantapp1/gcm/Utility;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static validateDoubleValue(Landroid/content/Context;Landroid/widget/EditText;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "et"    # Landroid/widget/EditText;

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v2, "[0-9]([0-9])?\\.[0-9]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 40
    .local v0, "Quantity_Value_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 41
    const-string v2, "Please give double value."

    invoke-static {v2, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 48
    :goto_1c
    return v1

    .line 44
    :cond_1d
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 45
    const/4 v1, 0x1

    goto :goto_1c

    .line 47
    :cond_31
    const-string v2, "Invalid format,Please give double value only."

    invoke-static {v2, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1c
.end method
