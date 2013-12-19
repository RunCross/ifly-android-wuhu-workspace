.class final Lcom/test/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/test/CustomView;


# direct methods
.method constructor <init>(Lcom/test/CustomView;)V
    .locals 0

    iput-object p1, p0, Lcom/test/d;->a:Lcom/test/CustomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/test/d;->a:Lcom/test/CustomView;

    iget-object v3, p0, Lcom/test/d;->a:Lcom/test/CustomView;

    invoke-static {v3}, Lcom/test/CustomView;->a(Lcom/test/CustomView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/test/CustomView;->taskTask(I)V

    iget-object v2, p0, Lcom/test/d;->a:Lcom/test/CustomView;

    invoke-static {v2}, Lcom/test/CustomView;->b(Lcom/test/CustomView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, 0x408f400000000000L

    invoke-static {}, Lcom/test/CustomView;->a()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    sub-long v0, v2, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/test/d;->a:Lcom/test/CustomView;

    invoke-static {v1}, Lcom/test/CustomView;->c(Lcom/test/CustomView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
