.class public Lcom/baidu/game/util/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/game/util/e$a;
    }
.end annotation


# static fields
.field public static ax:Lcom/baidu/game/util/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/baidu/game/util/e$a;->ay:Lcom/baidu/game/util/e$a;

    sput-object v0, Lcom/baidu/game/util/e;->ax:Lcom/baidu/game/util/e$a;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/baidu/game/util/e;->ax:Lcom/baidu/game/util/e$a;

    sget-object v1, Lcom/baidu/game/util/e$a;->ay:Lcom/baidu/game/util/e$a;

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
