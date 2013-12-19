.class public abstract Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;
.super Ljava/lang/Object;


# static fields
.field public static final CARDTYPE_CARD1:I = 0x2

.field public static final CARDTYPE_CARD2:I = 0x3

.field public static final CARDTYPE_CDMA:I = 0x0

.field public static final CARDTYPE_GSM:I = 0x1

.field public static final CARDTYPE_UNKNOWN:I = 0x4

.field public static final CARD_ID1:I = 0x0

.field public static final CARD_ID2:I = 0x1

.field public static final CARD_INDEX_EXTRA:Ljava/lang/String; = "card_index_extra"

.field public static final CARD_MTK4_ERROR:I = -0x6

.field public static final CARD_UNKNOWN:I = -0x1

.field public static final DUAL_CARD:I = 0x1

.field public static final DUAL_MODEL:I = 0x2

.field public static final TAG:Ljava/lang/String; = "TelephoneEnvInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApnCursor(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getApnSetIntent()Landroid/content/Intent;
.end method

.method public getApnSetIntent(I)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public abstract getCardType(I)I
.end method

.method public abstract getCarrierUri(I)Landroid/net/Uri;
.end method

.method public getDataConnectionIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public abstract getOperatorNumeric(I)Ljava/lang/String;
.end method

.method public abstract getPreferAPNUri(I)Landroid/net/Uri;
.end method

.method public isReceiveMMS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportApnSet()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract setPrefApn(Landroid/content/Context;II)V
.end method
