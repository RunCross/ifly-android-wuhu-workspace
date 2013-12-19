.class public Lcom/shandagames/gameplus/config/Config;
.super Ljava/lang/Object;


# static fields
.field public static final APP_ID:Ljava/lang/String; = "1000"

.field public static final APP_KEY:Ljava/lang/String; = "meiyumaclientserver5185f24b570b8"

.field public static final DISPLAY_MESSAGE_ACTION:Ljava/lang/String; = "com.shandagames.gameplus.push.DISPLAY_MESSAGE"

.field public static DOMAIN:Ljava/lang/String; = null

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final FILE_APK_FILES:Ljava/io/File; = null

.field public static final FILE_LOCAL:Ljava/io/File; = null

.field public static final FILE_PUSH:Ljava/io/File; = null

.field public static final FILE_PUSH_INTENT:Ljava/io/File; = null

.field public static final FILE_PUSH_TIME:Ljava/io/File; = null

.field public static final FILE_SDCARD:Ljava/io/File; = null

.field public static final FILE_SHOT_FILES:Ljava/io/File; = null

.field public static final GAME_PLUS_ID:Ljava/lang/String; = "GamePlus"

.field public static final PUSH_CLIENTID_NAME:Ljava/lang/String; = "push_clientid"

.field public static PUSH_DOMAIN:Ljava/lang/String; = null

.field public static final SDK_ID:Ljava/lang/String; = "8"

.field public static WEB_DOMAIN:Ljava/lang/String; = null

.field public static final WOA_APP_ID:Ljava/lang/String; = "991000282"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "http://api.mam.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    const-string v0, "http://api.mam.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->WEB_DOMAIN:Ljava/lang/String;

    const-string v0, "http://push.mam.sdo.com:8000"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->PUSH_DOMAIN:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->FILE_SDCARD:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/config/Config;->FILE_SDCARD:Ljava/io/File;

    const-string v2, "GamePlus"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->FILE_LOCAL:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/config/Config;->FILE_LOCAL:Ljava/io/File;

    const-string v2, "apkfiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->FILE_APK_FILES:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/config/Config;->FILE_LOCAL:Ljava/io/File;

    const-string v2, "screenshot"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->FILE_SHOT_FILES:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/config/Config;->FILE_LOCAL:Ljava/io/File;

    const-string v2, "pushservice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->FILE_PUSH:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/config/Config;->FILE_LOCAL:Ljava/io/File;

    const-string v2, "pushservice/time"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->FILE_PUSH_TIME:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/config/Config;->FILE_LOCAL:Ljava/io/File;

    const-string v2, "pushservice/intent"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->FILE_PUSH_INTENT:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.shandagames.gameplus.push.DISPLAY_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getHomeUri()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shandagames/gameplus/config/Config;->WEB_DOMAIN:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/index.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
