.class public final enum Lcom/baidu/game/util/e$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/game/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/game/util/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic aA:[Lcom/baidu/game/util/e$a;

.field public static final enum ay:Lcom/baidu/game/util/e$a;

.field public static final enum az:Lcom/baidu/game/util/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/game/util/e$a;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/baidu/game/util/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/game/util/e$a;->ay:Lcom/baidu/game/util/e$a;

    new-instance v0, Lcom/baidu/game/util/e$a;

    const-string v1, "RELSEASE"

    invoke-direct {v0, v1, v3}, Lcom/baidu/game/util/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/game/util/e$a;->az:Lcom/baidu/game/util/e$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/game/util/e$a;

    sget-object v1, Lcom/baidu/game/util/e$a;->ay:Lcom/baidu/game/util/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/game/util/e$a;->az:Lcom/baidu/game/util/e$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/game/util/e$a;->aA:[Lcom/baidu/game/util/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
