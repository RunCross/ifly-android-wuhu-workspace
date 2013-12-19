.class public Lcom/test/SoundManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/media/MediaPlayer;

.field private static d:Landroid/media/MediaPlayer;

.field private static e:Landroid/media/SoundPool;

.field private static f:I

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z

.field private static i:Z

.field private static j:F

.field private static k:F

.field private static l:F

.field private static m:F

.field private static n:Z

.field private static o:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/test/SoundManager;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/test/SoundManager;->b:Ljava/lang/String;

    sput-object v2, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    sput-object v2, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    sput-object v2, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    sput v1, Lcom/test/SoundManager;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/test/SoundManager;->g:Ljava/util/Map;

    sput-object v2, Lcom/test/SoundManager;->o:[I

    invoke-static {}, Lcom/test/SoundManager;->b()V

    sput-boolean v1, Lcom/test/SoundManager;->i:Z

    sput-boolean v1, Lcom/test/SoundManager;->h:Z

    sput v3, Lcom/test/SoundManager;->j:F

    sput v3, Lcom/test/SoundManager;->k:F

    sput v3, Lcom/test/SoundManager;->l:F

    sput v3, Lcom/test/SoundManager;->m:F

    sput-boolean v1, Lcom/test/SoundManager;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()F
    .locals 1

    sget v0, Lcom/test/SoundManager;->l:F

    return v0
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/test/SoundManager;->f:I

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/test/SoundManager;->n:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/test/SoundManager;->g:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "bundle/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "bundle/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\u30d5\u30a1\u30a4\u30eb\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093: [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v2, v1}, Lcom/test/Debug;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    sget-object v3, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    sget-object v4, Lcom/test/SoundManager;->g:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :cond_6
    const-string v2, "save/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p0}, Lcom/test/FileUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v2, "\u30d5\u30a1\u30a4\u30eb\u304c\u3042\u308a\u307e\u305b\u3093 path:[%s]"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v2, v1}, Lcom/test/Debug;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/test/SoundManager;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto/16 :goto_0

    :cond_8
    const-string v2, "SoundManager#loadSe \u30d1\u30b9\u304c\u304a\u304b\u3057\u3044 path:[%s]"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v2, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method private static b()V
    .locals 4

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    new-instance v1, Lcom/test/r;

    invoke-direct {v1}, Lcom/test/r;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method public static disposeVoice()V
    .locals 0

    invoke-static {}, Lcom/test/SoundManager;->stopVoice()V

    return-void
.end method

.method public static getCurrentPositionBGM()I
    .locals 1

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public static getRepeatPoint(Ljava/lang/String;)[I
    .locals 10

    const-wide v8, 0x408f400000000000L

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    :try_start_0
    const-string v3, "bundle/bgm_loop.txt"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v8

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v8

    aput-wide v6, v4, v5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    double-to-int v6, v6

    aput v6, v0, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    double-to-int v4, v6

    aput v4, v0, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_4
    throw v0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public static isExistVoice()Z
    .locals 1

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMusicActive(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method public static isPlayAppSound()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/test/SoundManager;->isPlayingBGM()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/test/SoundManager;->isRunningVoice()Z

    move-result v3

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public static isPlayingBGM()Z
    .locals 1

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public static isRunningBgm(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "SoundManager#isRunningBgm"

    invoke-static {v2}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    const-string v2, "  _currentBgmFileName:[%s]"

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/test/SoundManager;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "  path:[%s]"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/test/SoundManager;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/test/SoundManager;->isPlayingBGM()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "  > BGM RUNNING..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isRunningVoice()Z
    .locals 1

    invoke-static {}, Lcom/test/SoundManager;->isExistVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadBgm(Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/test/SoundManager;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/test/SoundManager;->isPlayingBGM()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/test/SoundManager;->stopBgm()V

    const-string v0, "SoundManager#loadBgm path:[%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/test/SoundManager;->getRepeatPoint(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/test/SoundManager;->o:[I

    const-string v0, "bundle/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    sget v0, Lcom/test/SoundManager;->j:F

    invoke-static {v0}, Lcom/test/SoundManager;->setBgmVolume(F)V

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sput-object p0, Lcom/test/SoundManager;->b:Ljava/lang/String;

    sput-object p0, Lcom/test/SoundManager;->a:Ljava/lang/String;

    const-string v0, "SoundManager#loadBgm>>> _currentBgmFileName:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    const-string v1, "SoundManager#loadBgm BGM \u30d5\u30a1\u30a4\u30eb\u304c\u306a\u3044:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_3
    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_4
    if-eqz v8, :cond_3

    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_5
    throw v0

    :cond_4
    const-string v0, "save/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/test/FileUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "SoundManager#LoadBgm \u30d5\u30a1\u30a4\u30eb\u304c\u3042\u308a\u307e\u305b\u3093 path:[%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-static {v0, v1}, Lcom/test/Debug;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    goto/16 :goto_0

    :cond_5
    :try_start_6
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget v0, Lcom/test/SoundManager;->j:F

    invoke-static {v0}, Lcom/test/SoundManager;->setBgmVolume(F)V

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sput-object p0, Lcom/test/SoundManager;->b:Ljava/lang/String;

    sput-object p0, Lcom/test/SoundManager;->a:Ljava/lang/String;

    const-string v0, "SoundManager#loadBgm >>> _currentBgmFileName:[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/test/SoundManager;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "SoundManager#loadBgm BGM\u8aad\u307f\u8fbc\u307f\u30a8\u30e9\u30fc IlleagalArgumentException path:[%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v0, "BGM\u8aad\u307f\u8fbc\u307f\u30a8\u30e9\u30fc IllegalStateException path:[%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v0, "BGM\u8aad\u307f\u8fbc\u307f\u30a8\u30e9\u30fc IOException path:[%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    const-string v0, "SoundManager#loadBgm \u30d1\u30b9\u304c\u304a\u304b\u3057\u3044 path:[%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move-object v0, v8

    goto/16 :goto_2
.end method

.method public static loadVoice(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/test/SoundManager;->stopVoice()V

    const-string v0, "SoundManager#loadVoice path:[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "bundle/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget v0, Lcom/test/SoundManager;->m:F

    invoke-static {v0}, Lcom/test/SoundManager;->setVoiceVolume(F)V

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    const-string v1, "Voice \u30d5\u30a1\u30a4\u30eb\u304c\u306a\u3044:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/test/Debug;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_3
    throw v0

    :cond_2
    const-string v0, "save/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/test/FileUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "Voice\u30d5\u30a1\u30a4\u30eb\u304c\u3042\u308a\u307e\u305b\u3093 path:[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_6
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget v0, Lcom/test/SoundManager;->m:F

    invoke-static {v0}, Lcom/test/SoundManager;->setVoiceVolume(F)V

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, "Voice\u8aad\u307f\u8fbc\u307f\u30a8\u30e9\u30fc IlleagalArgumentException path:[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v0, "Voice\u8aad\u307f\u8fbc\u307f\u30a8\u30e9\u30fc IllegalStateException path:[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v0, "Voice\u8aad\u307f\u8fbc\u307f\u30a8\u30e9\u30fc IOException path:[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "SoundManager#loadVoice \u30d1\u30b9\u304c\u304a\u304b\u3057\u3044 path:[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v0, v6

    goto/16 :goto_1
.end method

.method public static pause()V
    .locals 1

    sget-boolean v0, Lcom/test/SoundManager;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/test/SoundManager;->n:Z

    const-string v0, "SoundManager#pause"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/test/SoundManager;->isPlayingBGM()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const-string v0, "BGM suspend"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/test/SoundManager;->isExistVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    :goto_2
    sget-object v0, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    goto :goto_0

    :cond_2
    const-string v0, "BGM not suspend"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "BGM not suspend"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/test/SoundManager;->stopVoice()V

    goto :goto_2
.end method

.method public static playBgm(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/test/SoundManager;->n:Z

    if-eqz v0, :cond_1

    sput-object p0, Lcom/test/SoundManager;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/test/SoundManager;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/test/SoundManager;->isPlayingBGM()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const-string v0, "SoundManager#playBGM path:[%s]"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/test/SoundManager;->loadBgm(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bgm loaded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u97f3\u697d\u518d\u751f\u4e2d\u306a\u306e\u3067\u3001BGM\u518d\u751f\u3057\u307e\u305b\u3093 BGM:%s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/test/SoundManager;->isPlayingBGM()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "bgm start"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean v3, Lcom/test/SoundManager;->i:Z

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_4
    const-string v0, "bgm playing"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static playCurrentBgm()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/test/SoundManager;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/test/RooneyJActivity;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u97f3\u697d\u518d\u751f\u4e2d\u306a\u306e\u3067\u3001BGM\u518d\u751f\u3057\u307e\u305b\u3093: (currentBGM)"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "SoundManager#playCurrentBgm() _currentBgmFileName:[%s]"

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/test/SoundManager;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    const-string v0, "null\u306a\u306e\u3067\u518d\u30bb\u30c3\u30c8\u30a2\u30c3\u30d7 [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/test/SoundManager;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/test/SoundManager;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/test/SoundManager;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/test/SoundManager;->playBgm(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "BGM\u30d7\u30ec\u30a4\u30e4\u30fc\u304c\u8a2d\u5b9a\u3055\u308c\u3066\u3044\u307e\u305b\u3093"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/test/SoundManager;->isPlayingBGM()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BGM\u518d\u751f\u4e2d\u3067\u3059"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public static playSe(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Lcom/test/SoundManager;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/test/SoundManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/SoundManager;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    sget v2, Lcom/test/SoundManager;->l:F

    sget v3, Lcom/test/SoundManager;->l:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lcom/test/SoundManager;->f:I

    const-string v0, "Play SE:[%s]"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static playVoice()V
    .locals 1

    sget-boolean v0, Lcom/test/SoundManager;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/test/SoundManager;->isExistVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    const-string v0, "SoundManager#release"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/SoundManager;->stopBgm()V

    return-void
.end method

.method public static repeatcheck()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/test/SoundManager;->isPlayingBGM()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/SoundManager;->o:[I

    aget v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/test/SoundManager;->getCurrentPositionBGM()I

    move-result v0

    sget-object v1, Lcom/test/SoundManager;->o:[I

    aget v1, v1, v4

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/test/SoundManager;->o:[I

    aget v0, v0, v5

    invoke-static {}, Lcom/test/SoundManager;->getCurrentPositionBGM()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/test/SoundManager;->o:[I

    aget v1, v1, v4

    sub-int/2addr v0, v1

    const-string v1, "SoundManager#repeatcheck seekTo:%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "SoundManager#repeatcheck _bgmLoopPos[0]:%d"

    new-array v2, v4, [Ljava/lang/Object;

    sget-object v3, Lcom/test/SoundManager;->o:[I

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public static resume()V
    .locals 1

    sget-boolean v0, Lcom/test/SoundManager;->n:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/test/SoundManager;->n:Z

    const-string v0, "SoundManager#resume"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/test/SoundManager;->i:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/test/SoundManager;->playCurrentBgm()V

    :cond_1
    invoke-static {}, Lcom/test/SoundManager;->playVoice()V

    sget-object v0, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    goto :goto_0
.end method

.method public static sePoolUnloadCheck()V
    .locals 3

    sget-object v0, Lcom/test/SoundManager;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    sget v1, Lcom/test/SoundManager;->f:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    sget-object v0, Lcom/test/SoundManager;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    invoke-static {}, Lcom/test/SoundManager;->b()V

    sget-object v0, Lcom/test/SoundManager;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v2, Lcom/test/SoundManager;->e:Landroid/media/SoundPool;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_0
.end method

.method public static setBgmVolume(F)V
    .locals 5

    const/4 v4, 0x0

    sput p0, Lcom/test/SoundManager;->j:F

    const-string v0, "SoundManager#setBgmVolume> _bgmVolume:%f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/test/SoundManager;->h:Z

    if-eqz v0, :cond_1

    const-string v0, ">setBgmVolume> _isMute:true"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    sget v1, Lcom/test/SoundManager;->j:F

    sget v2, Lcom/test/SoundManager;->j:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public static setMute(Z)V
    .locals 1

    sput-boolean p0, Lcom/test/SoundManager;->h:Z

    sget v0, Lcom/test/SoundManager;->j:F

    invoke-static {v0}, Lcom/test/SoundManager;->setBgmVolume(F)V

    sget v0, Lcom/test/SoundManager;->k:F

    invoke-static {v0}, Lcom/test/SoundManager;->setSeVolume(F)V

    sget v0, Lcom/test/SoundManager;->m:F

    invoke-static {v0}, Lcom/test/SoundManager;->setVoiceVolume(F)V

    return-void
.end method

.method public static setSeVolume(F)V
    .locals 1

    sput p0, Lcom/test/SoundManager;->k:F

    sget-boolean v0, Lcom/test/SoundManager;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/test/SoundManager;->l:F

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/test/SoundManager;->k:F

    sput v0, Lcom/test/SoundManager;->l:F

    goto :goto_0
.end method

.method public static setVoiceVolume(F)V
    .locals 3

    const/4 v1, 0x0

    sput p0, Lcom/test/SoundManager;->m:F

    invoke-static {}, Lcom/test/SoundManager;->isExistVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/test/SoundManager;->h:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    sget v1, Lcom/test/SoundManager;->m:F

    sget v2, Lcom/test/SoundManager;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public static stopBgm()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "SoundManager#stopBgm: [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/test/SoundManager;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean v4, Lcom/test/SoundManager;->i:Z

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/test/SoundManager;->isPlayingBGM()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    sget-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/test/SoundManager;->c:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public static stopVoice()V
    .locals 1

    invoke-static {}, Lcom/test/SoundManager;->isExistVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    sget-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/test/SoundManager;->d:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method
