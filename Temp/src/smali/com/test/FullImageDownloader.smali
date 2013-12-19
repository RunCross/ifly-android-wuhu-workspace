.class public Lcom/test/FullImageDownloader;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/test/Texture;

.field private static b:Z

.field private static c:Z

.field private static d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/test/FullImageDownloader;->b:Z

    sput-boolean v0, Lcom/test/FullImageDownloader;->c:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/test/FullImageDownloader;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadTexture([B)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "A1dPUcrvur2CRQyl"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/square_enix/million/util/Crypt;->decode([B[B)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/test/FullImageDownloader;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/test/FullImageDownloader;->c:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/test/FullImageDownloader;->a:Lcom/test/Texture;

    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v1, Lcom/test/FullImageDownloader;->d:Landroid/os/Handler;

    new-instance v2, Lcom/test/g;

    invoke-direct {v2, v0}, Lcom/test/g;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v4, Lcom/test/FullImageDownloader;->b:Z

    sput-boolean v3, Lcom/test/FullImageDownloader;->c:Z

    goto :goto_0
.end method

.method static synthetic a()Lcom/test/Texture;
    .locals 1

    sget-object v0, Lcom/test/FullImageDownloader;->a:Lcom/test/Texture;

    return-object v0
.end method

.method static synthetic a(Lcom/test/Texture;)V
    .locals 0

    sput-object p0, Lcom/test/FullImageDownloader;->a:Lcom/test/Texture;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/test/FullImageDownloader;->c:Z

    return-void
.end method

.method static synthetic b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/test/FullImageDownloader;->b:Z

    return-void
.end method

.method public static dispoaseData()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/test/FullImageDownloader;->a:Lcom/test/Texture;

    sput-boolean v1, Lcom/test/FullImageDownloader;->b:Z

    sput-boolean v1, Lcom/test/FullImageDownloader;->c:Z

    return-void
.end method

.method public static downloadFullImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static getData()Lcom/test/Texture;
    .locals 1

    sget-object v0, Lcom/test/FullImageDownloader;->a:Lcom/test/Texture;

    return-object v0
.end method

.method public static isComplete()Z
    .locals 1

    sget-boolean v0, Lcom/test/FullImageDownloader;->b:Z

    return v0
.end method

.method public static isSuccess()Z
    .locals 1

    sget-boolean v0, Lcom/test/FullImageDownloader;->c:Z

    return v0
.end method
