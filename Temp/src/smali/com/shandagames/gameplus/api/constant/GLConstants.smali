.class public Lcom/shandagames/gameplus/api/constant/GLConstants;
.super Ljava/lang/Object;


# static fields
.field public static final ACHIEVEMENT_OFFLINE_DIR:Ljava/io/File; = null

.field public static final CURRENT_USER_NULL:Ljava/lang/String; = "No current user info."

.field public static final NO_OFFLINE_DATA:Ljava/lang/String; = "No offline data."

.field public static final OFFLINE_DIR:Ljava/io/File; = null

.field public static final RANKING_OFFLINE_DIR:Ljava/io/File; = null

.field public static final REQUEST_FEEDBACK_ERROR:Ljava/lang/String; = "Server response error."

.field public static final RETURN_LIST_NULL:Ljava/lang/String; = "No data response from server."


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_DIR:Ljava/io/File;

    const-string v2, "offline"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/api/constant/GLConstants;->OFFLINE_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/api/constant/GLConstants;->OFFLINE_DIR:Ljava/io/File;

    const-string v2, "ach"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/api/constant/GLConstants;->ACHIEVEMENT_OFFLINE_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/api/constant/GLConstants;->OFFLINE_DIR:Ljava/io/File;

    const-string v2, "rank"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/api/constant/GLConstants;->RANKING_OFFLINE_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
