.class final Lcom/qihoopp/insdk/h;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qihoopp/insdk/h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/qihoopp/insdk/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoopp/insdk/ContainerActivity;

    if-nez v0, :cond_0

    const-string v0, "ContainerActivity"

    const-string v1, "the class is done"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {v0, v4}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    goto :goto_0

    :sswitch_1
    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/qihoopp/insdk/i;

    invoke-direct {v3, p0, v0}, Lcom/qihoopp/insdk/i;-><init>(Lcom/qihoopp/insdk/h;Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/qihoopp/insdk/k;

    invoke-direct {v3, p0, v0}, Lcom/qihoopp/insdk/k;-><init>(Lcom/qihoopp/insdk/h;Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "360\u652f\u4ed8\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\u68c0\u6d4b\u5230\u65b0\u7248\u672c\uff0c\u662f\u5426\u66f4\u65b0\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->e(Lcom/qihoopp/insdk/ContainerActivity;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/qihoopp/insdk/ContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "function_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "insdk_version"

    const-string v4, "1.5.0"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "outsdk_version"

    sget-object v4, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    iget-object v4, v4, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "basefolder"

    sget-object v4, Lcom/qihoopp/insdk/aa;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "basefolder_download"

    sget-object v4, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "basefolder_load"

    sget-object v4, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->e(Lcom/qihoopp/insdk/ContainerActivity;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "startOutSDK"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/qihoopp/common/ActivityControlInterface;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->e(Lcom/qihoopp/insdk/ContainerActivity;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->g(Lcom/qihoopp/insdk/ContainerActivity;)Lcom/qihoopp/common/ActivityControlInterface;

    move-result-object v1

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->f(Lcom/qihoopp/insdk/ContainerActivity;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/qihoopp/common/ActivityControlInterface;->onCreateControl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ContainerActivity"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "ContainerActivity"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "ContainerActivity"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v2, "ContainerActivity"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v2, "ContainerActivity"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/qihoopp/insdk/l;

    invoke-direct {v3, p0, v0}, Lcom/qihoopp/insdk/l;-><init>(Lcom/qihoopp/insdk/h;Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "360\u652f\u4ed8\u4e2d\u5fc3"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :sswitch_3
    invoke-static {v0, v5}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    goto/16 :goto_0

    :sswitch_4
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->d(Lcom/qihoopp/insdk/ContainerActivity;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {v0, v3}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {v0, v2}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->d(Lcom/qihoopp/insdk/ContainerActivity;)V

    goto/16 :goto_0

    :sswitch_7
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    goto/16 :goto_0

    :sswitch_8
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    goto/16 :goto_0

    :sswitch_9
    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
