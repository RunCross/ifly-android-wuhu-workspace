.class public Lcom/snda/woa/cr;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:J

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/snda/woa/cr;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/az;->d(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snda/woa/cr;->a:Z

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/snda/woa/cr;->b:Z

    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput-boolean p0, Lcom/snda/woa/cr;->d:Z

    if-eqz p0, :cond_0

    sput-object p1, Lcom/snda/woa/cr;->f:Ljava/lang/String;

    sput-object p2, Lcom/snda/woa/cr;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/snda/woa/cr;->e:J

    const-string v0, "ExpLoginService"

    const-string v1, "doingStrong"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/snda/woa/cr;->e:J

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/snda/woa/cr;->b:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/snda/woa/cr;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {p0}, Lcom/snda/woa/cr;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/snda/woa/cr;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/snda/woa/cr;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v0, "ExpLoginService"

    const-string v1, "return Strong"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/cr;->f:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snda/woa/cr;->g:Ljava/lang/String;

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/snda/woa/cr;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "ExpLoginService"

    const-string v2, "return Week"

    invoke-static {v0, v2}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v4

    aput-object v1, v0, v3

    goto :goto_0

    :cond_1
    const-string v2, "ExpLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "return null expType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " strongUuid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/snda/woa/cr;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " strongPhone"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/snda/woa/cr;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isStrong(ctx)="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/snda/woa/cr;->d(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Lcom/snda/woa/u;
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/cf;->s(Landroid/content/Context;)Lcom/snda/woa/u;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/snda/woa/cr;->d:Z

    return v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snda/woa/cr;->c:Z

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    sget-boolean v1, Lcom/snda/woa/cr;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-wide v1, Lcom/snda/woa/cr;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-static {p0}, Lcom/snda/woa/az;->e(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/snda/woa/cr;->e:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()Z
    .locals 1

    sget-boolean v0, Lcom/snda/woa/cr;->a:Z

    return v0
.end method
