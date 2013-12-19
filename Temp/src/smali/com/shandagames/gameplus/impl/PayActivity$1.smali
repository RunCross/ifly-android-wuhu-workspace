.class Lcom/shandagames/gameplus/impl/PayActivity$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/impl/PayActivity;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/impl/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->access$0(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->access$0(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->access$0(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SHOW_PROGRESS"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shandagames/gameplus/log/LogDebugger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    iget-object v0, v0, Lcom/shandagames/gameplus/impl/PayActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->access$0(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->access$0(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->access$0(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "REMOVE_PROGRESS"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shandagames/gameplus/log/LogDebugger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v0

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mmappid:Ljava/lang/String;
    invoke-static {v1}, Lcom/shandagames/gameplus/impl/PayActivity;->access$1(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mmappkey:Ljava/lang/String;
    invoke-static {v2}, Lcom/shandagames/gameplus/impl/PayActivity;->access$2(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    new-instance v2, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;

    iget-object v3, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    iget-object v4, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mmpaycode:Ljava/lang/String;
    invoke-static {v4}, Lcom/shandagames/gameplus/impl/PayActivity;->access$3(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->amount:Ljava/lang/String;
    invoke-static {v5}, Lcom/shandagames/gameplus/impl/PayActivity;->access$4(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;Lmm/purchasesdk/Purchase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->qihooToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->qihooSeckey:Ljava/lang/String;

    invoke-static {v0}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->finish()V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    const-class v2, Lcom/qihoopp/insdk/ContainerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "token"

    sget-object v2, Lcom/shandagames/gameplus/impl/PayActivity;->qihooToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "seckey"

    sget-object v2, Lcom/shandagames/gameplus/impl/PayActivity;->qihooSeckey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "function_code"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PayActivity$1;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-virtual {v1, v0}, Lcom/shandagames/gameplus/impl/PayActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
