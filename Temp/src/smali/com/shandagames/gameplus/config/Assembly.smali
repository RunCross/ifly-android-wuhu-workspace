.class public Lcom/shandagames/gameplus/config/Assembly;
.super Ljava/lang/Object;


# static fields
.field public static releaseCode:Z

.field public static showDebugLog:Z

.field public static supportGamePushFunction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/shandagames/gameplus/config/Assembly;->releaseCode:Z

    sput-boolean v0, Lcom/shandagames/gameplus/config/Assembly;->showDebugLog:Z

    sput-boolean v0, Lcom/shandagames/gameplus/config/Assembly;->supportGamePushFunction:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
