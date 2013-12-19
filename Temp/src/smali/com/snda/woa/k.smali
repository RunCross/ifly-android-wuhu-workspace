.class public Lcom/snda/woa/k;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/snda/woa/k;
    .locals 1

    new-instance v0, Lcom/snda/woa/k;

    invoke-direct {v0}, Lcom/snda/woa/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/snda/woa/k;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snda/woa/k;->a:J

    return-object p0
.end method

.method public c()Lcom/snda/woa/k;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snda/woa/k;->b:J

    return-object p0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/snda/woa/k;->a:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/snda/woa/k;->b:J

    return-wide v0
.end method

.method public f()J
    .locals 4

    iget-wide v0, p0, Lcom/snda/woa/k;->b:J

    iget-wide v2, p0, Lcom/snda/woa/k;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
