.class public Lcom/qihoo360/mobilesafe/telephony_sumsang_note/TelephoneEnv;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/TelephoneEnv;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/TelephoneEnv;->b:I

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/TelephoneEnv;->a:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/TelephoneEnv;->b:I

    goto :goto_0
.end method


# virtual methods
.method public getApnCursor(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/TelephoneEnv;->getCarrierUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getApnSetIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardType(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/TelephoneEnv;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/TelephoneEnv;->a:I

    goto :goto_0
.end method

.method public getCarrierUri(I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOperatorNumeric(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCardOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferAPNUri(I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrefApn(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method
