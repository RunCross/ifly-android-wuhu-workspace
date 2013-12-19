.class public Lcom/playpiegames/clib/CLibMain;
.super Lcom/playpiegames/clib/a;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/playpiegames/clib/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playpiegames/clib/CLibMain;->a:Z

    invoke-static {v1, v1}, Lcom/playpiegames/clib/CLibMain;->initComplete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/playpiegames/clib/CLibMain;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/playpiegames/clib/CLibMain;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native nativeInit()V
.end method


# virtual methods
.method public decrypt(Lcom/playpiegames/clib/E_CODE;[B)[B
    .locals 1

    iget-boolean v0, p0, Lcom/playpiegames/clib/CLibMain;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/playpiegames/clib/CLibMain;->a(Lcom/playpiegames/clib/E_CODE;[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public encrypt(Lcom/playpiegames/clib/E_CODE;Ljava/lang/String;)[B
    .locals 1

    iget-boolean v0, p0, Lcom/playpiegames/clib/CLibMain;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/playpiegames/clib/CLibMain;->a(Lcom/playpiegames/clib/E_CODE;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getSigned()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/playpiegames/clib/CLibMain;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playpiegames/clib/CLibMain;->a:Z

    invoke-direct {p0}, Lcom/playpiegames/clib/CLibMain;->nativeInit()V

    invoke-virtual {p0}, Lcom/playpiegames/clib/CLibMain;->a()V

    return-void
.end method
