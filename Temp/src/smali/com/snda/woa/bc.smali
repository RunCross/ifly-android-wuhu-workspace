.class public Lcom/snda/woa/bc;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/snda/woa/bw;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    new-instance v0, Lcom/snda/woa/d;

    invoke-direct {v0, p0, v2}, Lcom/snda/woa/d;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snda/woa/bw;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/snda/woa/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/snda/woa/bw;)V
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Lcom/snda/woa/d;

    invoke-direct {v0, p0, v1}, Lcom/snda/woa/d;-><init>(Landroid/content/Context;Z)V

    new-array v1, v1, [Lcom/snda/woa/bw;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/snda/woa/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
