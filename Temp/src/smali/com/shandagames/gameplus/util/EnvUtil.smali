.class public Lcom/shandagames/gameplus/util/EnvUtil;
.super Ljava/lang/Object;


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/util/EnvUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/shandagames/gameplus/util/EnvUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setEnvQA()V
    .locals 1

    const-string v0, "http://qa.mam.gameplus.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    const-string v0, "http://qa.mam.gameplus.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->WEB_DOMAIN:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/shandagames/gameplus/config/Assembly;->releaseCode:Z

    return-void
.end method

.method public static setEnvRelease()V
    .locals 1

    const-string v0, "http://api.gameplus.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    const-string v0, "http://m.gameplus.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->WEB_DOMAIN:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/shandagames/gameplus/config/Assembly;->releaseCode:Z

    return-void
.end method
