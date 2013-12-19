.class public Lcom/test/enter/DebugLog;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "World-Enter"

    sput-object v0, Lcom/test/enter/DebugLog;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/test/enter/DebugLog;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/test/enter/DebugLog;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/enter/DebugLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/test/enter/DebugLog;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/enter/DebugLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
