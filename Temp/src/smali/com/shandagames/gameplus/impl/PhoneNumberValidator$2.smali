.class Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;
.super Lcom/shandagames/gameplus/api/impl/network/GLRequest;


# instance fields
.field private final synthetic val$callback:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$callback:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    iput-object p4, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$callback:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    invoke-interface {v0, v1, v2, v3}, Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$callback:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;-><init>(Landroid/content/Context;Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;Lcom/shandagames/gameplus/GamePlus$ValidateCallback;)V

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$phoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snda/woa/android/OpenAPI;->customMobileLogin(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$callback:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    const-string v1, "2"

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u83b7\u53d6\u3002"

    invoke-interface {v0, v5, v1, v2}, Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;->val$callback:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    const-string v1, "5"

    const-string v2, "\u62b1\u6b49\uff0c\u8be5\u624b\u673a\u53f7\u7801\u672a\u6fc0\u6d3b\u3002"

    invoke-interface {v0, v5, v1, v2}, Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
