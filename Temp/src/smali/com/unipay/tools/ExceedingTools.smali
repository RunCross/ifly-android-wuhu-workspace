.class public Lcom/unipay/tools/ExceedingTools;
.super Ljava/lang/Object;


# static fields
.field public static final IS_UP_100:Z = false

.field public static final KEY_MONEY:Ljava/lang/String; = "exceeding_money"

.field public static final SP_NAME:Ljava/lang/String; = "exceeding_name"

.field private static final _$1:Ljava/lang/String; = "exceeding_show_200"

.field private static final _$2:Ljava/lang/String; = "exceeding_show_100"

.field private static final _$3:Ljava/lang/String; = "exceeding_day"


# instance fields
.field private _$4:Ljava/lang/String;

.field private _$5:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unipay/tools/ExceedingTools;->_$5:Landroid/content/Context;

    return-void
.end method

.method private _$1()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unipay/tools/ExceedingTools;->_$5:Landroid/content/Context;

    const-string v2, "exceeding_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "exceeding_money"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    const-string v0, "exceeding_show_100"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private _$2()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unipay/tools/ExceedingTools;->_$5:Landroid/content/Context;

    const-string v2, "exceeding_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "exceeding_money"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    const-string v0, "exceeding_show_200"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private _$3()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unipay/tools/ExceedingTools;->_$5:Landroid/content/Context;

    const-string v3, "exceeding_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "exceeding_day"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "exceeding_show_100"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "exceeding_show_200"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "exceeding_money"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "exceeding_day"

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public SubMoney(I)V
    .locals 9

    const/16 v8, 0xc8

    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/unipay/tools/ExceedingTools;->_$5:Landroid/content/Context;

    const-string v1, "exceeding_name"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "exceeding_money"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "exceeding_money"

    const-string v4, "exceeding_money"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, p1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "exceeding_money"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v8, :cond_1

    if-lt v2, v8, :cond_1

    const-string v3, "exceeding_show_200"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exceeding_show_200"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lt v1, v7, :cond_0

    if-lt v2, v7, :cond_0

    const-string v1, "exceeding_show_100"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exceeding_show_100"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public checkExceeding()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/unipay/tools/ExceedingTools;->_$3()Z

    invoke-direct {p0}, Lcom/unipay/tools/ExceedingTools;->_$1()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/unipay/tools/ExceedingTools;->_$2()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkRan4Num(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/unipay/tools/ExceedingTools;->random4num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public random4num()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unipay/tools/VerificationCode;->getInstance()Lcom/unipay/tools/VerificationCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/tools/VerificationCode;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/tools/ExceedingTools;->_$4:Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/tools/ExceedingTools;->_$4:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentRan4Num(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/ExceedingTools;->_$4:Ljava/lang/String;

    return-void
.end method

.method public showExceedDialog(Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/tools/ExceedingTools;->_$5:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/dialog/ExceedDialog;

    iget-object v1, p0, Lcom/unipay/tools/ExceedingTools;->_$5:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/unipay/dialog/ExceedDialog;-><init>(Landroid/content/Context;Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/ExceedDialog;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/unipay/dialog/PExceedDialog;

    iget-object v1, p0, Lcom/unipay/tools/ExceedingTools;->_$5:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/unipay/dialog/PExceedDialog;-><init>(Landroid/content/Context;Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/PExceedDialog;->show()V

    goto :goto_0
.end method
