.class Lcom/shandagames/gameplus/api/util/GLResultInvoker$1;
.super Lcom/shandagames/gameplus/api/impl/network/GLRequest;


# instance fields
.field private final synthetic val$callback:Lcom/shandagames/gameplus/api/callback/GLBooleanCB;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/shandagames/gameplus/api/callback/GLBooleanCB;)V
    .locals 0

    iput-object p2, p0, Lcom/shandagames/gameplus/api/util/GLResultInvoker$1;->val$callback:Lcom/shandagames/gameplus/api/callback/GLBooleanCB;

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shandagames/gameplus/api/util/GLResultInvoker$1;->val$callback:Lcom/shandagames/gameplus/api/callback/GLBooleanCB;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/shandagames/gameplus/api/callback/GLBooleanCB;->onSuccess(Z)V

    return-void
.end method

.method protected onSuccess(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shandagames/gameplus/api/util/GLResultInvoker$1;->val$callback:Lcom/shandagames/gameplus/api/callback/GLBooleanCB;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/shandagames/gameplus/api/callback/GLBooleanCB;->onSuccess(Z)V

    return-void
.end method
