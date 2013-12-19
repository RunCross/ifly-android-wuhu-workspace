.class public Lcom/snda/woa/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snda/woa/m;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/ag;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/snda/woa/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/snda/woa/m;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/snda/woa/m;->a:Z

    invoke-static {p0}, Lcom/snda/woa/ag;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/snda/woa/ag;->a()Lcom/snda/woa/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snda/woa/co;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/snda/woa/ag;->a()Lcom/snda/woa/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snda/woa/co;->b(Ljava/lang/String;)V

    return-void
.end method
