.class public Lcom/shandagames/gameplus/local/StorageConfig;
.super Ljava/lang/Object;


# static fields
.field public static final STORAGE_CACHE_DIR:Ljava/io/File;

.field public static final STORAGE_CACHE_FILE:Ljava/io/File;

.field public static final STORAGE_DIR:Ljava/io/File;

.field public static final STORAGE_ROLE_DIR:Ljava/io/File;

.field public static final STORAGE_ROLE_FILE:Ljava/io/File;

.field public static final STORAGE_USERPROMPT_FILE:Ljava/io/File;

.field public static final STORAGE_USER_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/config/Config;->FILE_LOCAL:Ljava/io/File;

    const-string v2, "storage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_DIR:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_CACHE_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_CACHE_DIR:Ljava/io/File;

    const-string v2, "cache.gl"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_CACHE_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_DIR:Ljava/io/File;

    const-string v2, "role"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_ROLE_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_ROLE_DIR:Ljava/io/File;

    const-string v2, "role.gl"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_ROLE_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_ROLE_DIR:Ljava/io/File;

    const-string v2, "user.gl"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_USER_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_ROLE_DIR:Ljava/io/File;

    const-string v2, "userprompt.gl"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/shandagames/gameplus/local/StorageConfig;->STORAGE_USERPROMPT_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
