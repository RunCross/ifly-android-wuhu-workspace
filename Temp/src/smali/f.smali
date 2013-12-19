.class public Lf;
.super La;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lf;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "samsung"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p0, v2}, Lf;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lf;->b()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "phonetype"

    aput-object v4, v3, v5

    invoke-static {p1, v2, v3}, Lf;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lf;->a()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "simnum"

    aput-object v4, v3, v5

    invoke-static {p1, v2, v3}, Lf;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.content.Context"

    const-string v3, "TELEPHONY_SERVICE_1"

    invoke-virtual {p0, v2, v3}, Lf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.telephony.TelephonyManager"

    const-string v3, "isSingleChinaSim"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
