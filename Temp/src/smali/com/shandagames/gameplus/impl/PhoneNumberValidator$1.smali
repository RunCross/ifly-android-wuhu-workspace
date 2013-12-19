.class Lcom/shandagames/gameplus/impl/PhoneNumberValidator$1;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-static {}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$1$1;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$1$1;-><init>(Lcom/shandagames/gameplus/impl/PhoneNumberValidator$1;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->access$1()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
