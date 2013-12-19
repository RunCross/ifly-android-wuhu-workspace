.class final Lcom/test/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/test/f;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-static {v8}, Lcom/test/FileUtils;->a(Z)V

    iget-object v0, p0, Lcom/test/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    iget-object v0, p0, Lcom/test/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {v0}, Lcom/test/FileUtils;->b(Z)V

    invoke-static {v2}, Lcom/test/FileUtils;->a(Z)V

    invoke-static {}, Lcom/test/RooneyJActivity;->closeProgressDialog()V

    return-void

    :cond_0
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v6, "[DELETE %s][%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v0, "OK"

    :goto_1
    aput-object v0, v7, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "NG"

    goto :goto_1
.end method
