.class public Lcom/snda/woa/cm;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:Landroid/os/Handler;

.field public static d:Ljava/util/Date;

.field public static e:Ljava/util/Date;

.field private static f:Z

.field private static g:Z

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput v2, Lcom/snda/woa/cm;->a:I

    sput-object v3, Lcom/snda/woa/cm;->b:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/snda/woa/cm;->c:Landroid/os/Handler;

    sput-object v3, Lcom/snda/woa/cm;->d:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    sput-boolean v2, Lcom/snda/woa/cm;->f:Z

    sput-boolean v2, Lcom/snda/woa/cm;->g:Z

    sput v2, Lcom/snda/woa/cm;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-static {}, Lcom/snda/woa/d;->a()V

    return-void
.end method

.method public static a(I)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/snda/woa/ce;->p:[I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    if-ne p0, v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/cf;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)V
    .locals 1

    sget v0, Lcom/snda/woa/cm;->h:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    sput p0, Lcom/snda/woa/cm;->h:I

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    sput p0, Lcom/snda/woa/cm;->h:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/snda/woa/cm;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/snda/woa/cf;->v(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/snda/woa/cf;->r(Landroid/content/Context;)Lcom/snda/woa/u;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snda/woa/cm;->f:Z

    sput-boolean v0, Lcom/snda/woa/cm;->g:Z

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/cr;->c(Landroid/content/Context;)Lcom/snda/woa/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/cf;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xa4cf81

    :goto_0
    return v0

    :cond_0
    const v0, -0xa4cf6d

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/snda/woa/cm;->g:Z

    return v0
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/snda/woa/cm;->g:Z

    return-void
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/snda/woa/cm;->h:I

    return v0
.end method
