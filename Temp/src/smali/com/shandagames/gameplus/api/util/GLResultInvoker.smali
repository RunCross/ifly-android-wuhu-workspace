.class public Lcom/shandagames/gameplus/api/util/GLResultInvoker;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invokeForResult(Lcom/shandagames/gameplus/api/callback/GLBooleanCB;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/shandagames/gameplus/api/util/GLResultInvoker$1;

    invoke-direct {v0, p1, p0}, Lcom/shandagames/gameplus/api/util/GLResultInvoker$1;-><init>(Ljava/lang/String;Lcom/shandagames/gameplus/api/callback/GLBooleanCB;)V

    invoke-static {v0}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    return-void
.end method
