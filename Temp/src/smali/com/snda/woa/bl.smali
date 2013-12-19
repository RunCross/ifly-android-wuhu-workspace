.class public Lcom/snda/woa/bl;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/snda/woa/bl;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/snda/woa/bl;->a:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    sput-wide v0, Lcom/snda/woa/bl;->a:J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lcom/snda/woa/ax;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snda/woa/ax;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/ax;->a(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/snda/woa/ax;->e(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/snda/woa/bl;->a:J

    return-void
.end method
