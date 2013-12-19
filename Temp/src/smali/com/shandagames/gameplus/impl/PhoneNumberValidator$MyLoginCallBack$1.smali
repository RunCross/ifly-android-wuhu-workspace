.class Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;
.super Lcom/shandagames/gameplus/api/impl/network/GLRequest;


# instance fields
.field final synthetic this$1:Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;->this$1:Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;

    iput-object p3, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;->val$message:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;->this$1:Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;

    const-string v1, "1"

    const-string v2, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    #calls: Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->loginFailed(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->access$1(Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;->this$1:Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;

    const-string v1, "4"

    const-string v2, "\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u3002"

    #calls: Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->loginFailed(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->access$1(Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSuccess(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

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

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;->this$1:Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;->val$message:Ljava/lang/String;

    #calls: Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->loginSuccessed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->access$0(Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;->this$1:Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;

    const-string v1, "3"

    const-string v2, "\u9a8c\u8bc1\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u3002"

    #calls: Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->loginFailed(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->access$1(Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
