.class public Lcom/qihoopp/insdk/ContainerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/qihoopp/common/ActivityControlInterface;
.implements Lcom/qihoopp/common/ActivityInitInterface;


# instance fields
.field private a:Lcom/qihoopp/common/ActivityControlInterface;

.field private b:Ljava/lang/Object;

.field private c:Landroid/app/AlertDialog;

.field private d:Z

.field private e:Landroid/os/Bundle;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/qihoopp/insdk/z;

.field private i:Lcom/qihoopp/insdk/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    const-string v0, "default"

    iput-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/qihoopp/insdk/y;)Lcom/qihoopp/insdk/z;
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "inVer"

    iget-object v3, p1, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "outVer"

    iget-object v3, p1, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "resVer"

    iget-object v3, p1, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channel"

    iget-object v3, p0, Lcom/qihoopp/insdk/ContainerActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    invoke-virtual {p0}, Lcom/qihoopp/insdk/ContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "token"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/qihoopp/insdk/p;

    sget-object v3, Lcom/qihoopp/framework/HttpRequestMode;->POST:Lcom/qihoopp/framework/HttpRequestMode;

    const-string v4, "https://api.360pay.cn/app/json"

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/qihoopp/insdk/p;-><init>(Landroid/content/Context;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/qihoopp/insdk/p;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    iget v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->g:I

    const-string v0, "ContainerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retryTimes = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/qihoopp/insdk/ContainerActivity;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->g:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/y;)Lcom/qihoopp/insdk/z;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->g:I

    new-instance v0, Lcom/qihoopp/insdk/z;

    invoke-direct {v0}, Lcom/qihoopp/insdk/z;-><init>()V

    :try_start_0
    const-string v3, "mustUpdate"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/qihoopp/insdk/z;->d:I

    const-string v3, "cfgurl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/qihoopp/insdk/z;->a:Ljava/lang/String;

    const-string v3, "prourl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/qihoopp/insdk/z;->b:Ljava/lang/String;

    const-string v3, "resurl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/qihoopp/insdk/z;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ContainerActivity"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/qihoopp/insdk/ContainerActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/insdk/ContainerActivity;->b:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/qihoopp/insdk/ContainerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/insdk/ContainerActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/qihoopp/insdk/f;

    invoke-direct {v0, p0}, Lcom/qihoopp/insdk/f;-><init>(Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v0}, Lcom/qihoopp/insdk/f;->start()V

    return-void
.end method

.method private a(I)V
    .locals 5

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const-string v0, "ContainerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    const-string v1, "\u6b63\u5728\u68c0\u6d4b\u66f4\u65b0...."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u91cd\u8981\u5347\u7ea7\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    const-string v1, "\u5347\u7ea7\u5b8c\u6210\uff0c\u6b63\u5728\u68c0\u6d4b\u652f\u4ed8\u63d2\u4ef6...."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    iget-boolean v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->d:Z

    if-eqz v0, :cond_4

    const-string v0, "\u91cd\u8981\u66f4\u65b0\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/qihoopp/insdk/ContainerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/qihoopp/insdk/ContainerActivity;->finish()V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/qihoopp/insdk/a;

    invoke-direct {v2, p0}, Lcom/qihoopp/insdk/a;-><init>(Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "360\u652f\u4ed8\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\u91cd\u8981\u66f4\u65b0\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_5
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    const-string v1, "\u6b63\u5728\u68c0\u6d4b\u652f\u4ed8\u63d2\u4ef6...."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_6
    iget-boolean v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->d:Z

    if-eqz v0, :cond_7

    const-string v0, "\u521d\u59cb\u5316\u652f\u4ed8\u63d2\u4ef6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/qihoopp/insdk/ContainerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/qihoopp/insdk/ContainerActivity;->finish()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/qihoopp/insdk/b;

    invoke-direct {v2, p0}, Lcom/qihoopp/insdk/b;-><init>(Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "360\u652f\u4ed8\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\u521d\u59cb\u5316\u652f\u4ed8\u63d2\u4ef6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_8
    iget-boolean v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->d:Z

    if-eqz v0, :cond_9

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/qihoopp/insdk/ContainerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/qihoopp/insdk/ContainerActivity;->finish()V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/qihoopp/insdk/c;

    invoke-direct {v2, p0}, Lcom/qihoopp/insdk/c;-><init>(Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "360\u652f\u4ed8\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_a
    iget-boolean v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->d:Z

    if-eqz v0, :cond_b

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u4f7f\u7528NET\u7f51\u7edc\u63a5\u5165\u70b9"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/qihoopp/insdk/ContainerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/qihoopp/insdk/ContainerActivity;->finish()V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bbe\u7f6e"

    new-instance v2, Lcom/qihoopp/insdk/e;

    invoke-direct {v2, p0}, Lcom/qihoopp/insdk/e;-><init>(Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/qihoopp/insdk/d;

    invoke-direct {v3, p0}, Lcom/qihoopp/insdk/d;-><init>(Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "360\u652f\u4ed8\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u4f7f\u7528NET\u7f51\u7edc\u63a5\u5165\u70b9"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/qihoopp/insdk/ContainerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qihoopp/insdk/ContainerActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/qihoopp/insdk/ContainerActivity;Lcom/qihoopp/insdk/y;Lcom/qihoopp/insdk/z;Lcom/qihoopp/insdk/y;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/y;Lcom/qihoopp/insdk/z;Lcom/qihoopp/insdk/y;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/qihoopp/insdk/y;Lcom/qihoopp/insdk/z;Lcom/qihoopp/insdk/y;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p3, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p3, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, "UpdateFileLoader"

    const-string v3, "\u4e0b\u8f7d\u65b0\u5305\u4e2dpro\u6709\u66f4\u65b0"

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/qihoopp/insdk/m;

    invoke-direct {v2, p0}, Lcom/qihoopp/insdk/m;-><init>(Landroid/app/Activity;)V

    iget-object v3, p2, Lcom/qihoopp/insdk/z;->b:Ljava/lang/String;

    sget-object v4, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v5, "pro_temp.jar"

    invoke-virtual {v2, v3, v4, v5}, Lcom/qihoopp/insdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cfg_temp.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pro_temp.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "res_temp.zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    return v0

    :cond_0
    iget-object v2, p3, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    const-string v2, "UpdateFileLoader"

    const-string v3, "\u4e0b\u8f7d\u65b0\u5305\u4e2dres\u6709\u66f4\u65b0"

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/qihoopp/insdk/m;

    invoke-direct {v2, p0}, Lcom/qihoopp/insdk/m;-><init>(Landroid/app/Activity;)V

    iget-object v3, p2, Lcom/qihoopp/insdk/z;->c:Ljava/lang/String;

    sget-object v4, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v5, "res_temp.zip"

    invoke-virtual {v2, v3, v4, v5}, Lcom/qihoopp/insdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "UpdateFileLoader"

    const-string v2, "\u4fdd\u5b58temp\u4e0b\u8f7d\u6587\u4ef6\u4e3a\u6b63\u5f0f\u6587\u4ef6"

    invoke-static {v0, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pro_temp.jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pro.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoopp/insdk/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "res_temp.zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "res.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoopp/insdk/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cfg_temp.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cfg.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoopp/insdk/ab;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v2, "UpdateFileLoader"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/qihoopp/insdk/ContainerActivity;)Lcom/qihoopp/insdk/h;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    return-object v0
.end method

.method static synthetic c(Lcom/qihoopp/insdk/ContainerActivity;)Lcom/qihoopp/insdk/z;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->h:Lcom/qihoopp/insdk/z;

    return-object v0
.end method

.method static synthetic d(Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 1

    new-instance v0, Lcom/qihoopp/insdk/g;

    invoke-direct {v0, p0}, Lcom/qihoopp/insdk/g;-><init>(Lcom/qihoopp/insdk/ContainerActivity;)V

    invoke-virtual {v0}, Lcom/qihoopp/insdk/g;->start()V

    return-void
.end method

.method static synthetic e(Lcom/qihoopp/insdk/ContainerActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/qihoopp/insdk/ContainerActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic g(Lcom/qihoopp/insdk/ContainerActivity;)Lcom/qihoopp/common/ActivityControlInterface;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    return-object v0
.end method

.method static synthetic h(Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/qihoopp/insdk/ContainerActivity;->a()V

    return-void
.end method

.method static synthetic i(Lcom/qihoopp/insdk/ContainerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/qihoopp/insdk/t;->a(Landroid/content/Context;)V

    const-string v0, "ContainerActivity"

    const-string v2, "\u52a0\u8f7dpro.jar\u5305\u5b8c\u6210"

    invoke-static {v0, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    invoke-direct {p0, v0}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/y;)Lcom/qihoopp/insdk/z;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->h:Lcom/qihoopp/insdk/z;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->h:Lcom/qihoopp/insdk/z;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->h:Lcom/qihoopp/insdk/z;

    iget v0, v0, Lcom/qihoopp/insdk/z;->d:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    const-string v1, "ContainerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u662f\u5426\u5f3a\u5236\u5347\u7ea7 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    new-instance v0, Lcom/qihoopp/insdk/m;

    invoke-direct {v0, p0}, Lcom/qihoopp/insdk/m;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/qihoopp/insdk/ContainerActivity;->h:Lcom/qihoopp/insdk/z;

    iget-object v1, v1, Lcom/qihoopp/insdk/z;->a:Ljava/lang/String;

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v3, "cfg_temp.ini"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qihoopp/insdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cfg_temp.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoopp/insdk/ab;->a(Ljava/lang/String;)Lcom/qihoopp/insdk/y;

    move-result-object v0

    sget-object v1, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    invoke-static {v1, v0}, Lcom/qihoopp/insdk/t;->a(Lcom/qihoopp/insdk/y;Lcom/qihoopp/insdk/y;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cfg_temp.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContainerActivity"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    invoke-virtual {v0, v4}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "ContainerActivity"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/qihoopp/insdk/ContainerActivity;->h:Lcom/qihoopp/insdk/z;

    sget-object v2, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    invoke-direct {p0, v0, v1, v2}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/y;Lcom/qihoopp/insdk/z;Lcom/qihoopp/insdk/y;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "ContainerActivity"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    invoke-virtual {v0, v4}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/qihoopp/insdk/m;

    invoke-direct {v0, p0}, Lcom/qihoopp/insdk/m;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/qihoopp/insdk/ContainerActivity;->h:Lcom/qihoopp/insdk/z;

    iget-object v1, v1, Lcom/qihoopp/insdk/z;->a:Ljava/lang/String;

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v3, "cfg_temp.ini"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qihoopp/insdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cfg_temp.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoopp/insdk/ab;->a(Ljava/lang/String;)Lcom/qihoopp/insdk/y;

    move-result-object v0

    sget-object v1, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    invoke-static {v1, v0}, Lcom/qihoopp/insdk/t;->a(Lcom/qihoopp/insdk/y;Lcom/qihoopp/insdk/y;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_5
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cfg_temp.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    const-string v0, "ContainerActivity"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/qihoopp/common/ActivityControlInterface;->onActivityResultControl(IILandroid/content/Intent;)V

    return-void
.end method

.method public onActivityResultControl(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/qihoopp/common/ActivityControlInterface;->onApplyThemeResourceControl(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onApplyThemeResourceControl(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onAttachedToWindowControl()V

    return-void
.end method

.method public onAttachedToWindowControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onBackPressedControl()V

    return-void
.end method

.method public onBackPressedControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onChildTitleChangedControl(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onChildTitleChangedControl(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onConfigurationChangedControl(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConfigurationChangedControl(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onContentChangedControl()V

    return-void
.end method

.method public onContentChangedControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onContextItemSelectedControl(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextItemSelectedControl(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onContextMenuClosedControl(Landroid/view/Menu;)V

    return-void
.end method

.method public onContextMenuClosedControl(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "ContainerActivity"

    const-string v2, "oncreate"

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qihoopp/insdk/ContainerActivity;->e:Landroid/os/Bundle;

    new-instance v1, Lcom/qihoopp/insdk/h;

    invoke-direct {v1, p0}, Lcom/qihoopp/insdk/h;-><init>(Lcom/qihoopp/insdk/ContainerActivity;)V

    iput-object v1, p0, Lcom/qihoopp/insdk/ContainerActivity;->i:Lcom/qihoopp/insdk/h;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->requestWindowFeature(I)Z

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x7800

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->setContentView(Landroid/view/View;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    const-string v2, "360\u652f\u4ed8\u4e2d\u5fc3"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/qihoopp/insdk/ContainerActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0, v0}, Lcom/qihoopp/insdk/ContainerActivity;->a(I)V

    invoke-static {p0}, Lcom/qihoopp/insdk/u;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ni.getType() ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/qihoopp/insdk/ContainerActivity;->a(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/qihoopp/insdk/ContainerActivity;->a()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/qihoopp/common/ActivityControlInterface;->onCreateContextMenuControl(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateContextMenuControl(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateControl(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onCreateDescriptionControl()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDescriptionControl()Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onCreateDialogControl(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogControl(I)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onCreateOptionsMenuControl(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenuControl(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onCreatePanelMenuControl(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelMenuControl(ILandroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onCreatePanelViewControl(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreatePanelViewControl(I)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onCreateThumbnailControl(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public onCreateThumbnailControl(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/qihoopp/common/ActivityControlInterface;->onCreateViewControl(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewControl(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/qihoopp/insdk/s;->a:Lcom/qihoopp/insdk/s;

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onDestroyControl()V

    const-string v0, "ContainerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onDetachedFromWindowControl()V

    return-void
.end method

.method public onDetachedFromWindowControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onKeyDownControl(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDownControl(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onKeyLongPressControl(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPressControl(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/qihoopp/common/ActivityControlInterface;->onKeyMultipleControl(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultipleControl(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onKeyUpControl(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUpControl(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onLowMemoryControl()V

    return-void
.end method

.method public onLowMemoryControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onMenuItemSelectedControl(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelectedControl(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onMenuOpenedControl(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpenedControl(ILandroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onNewIntentControl(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntentControl(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onOptionsItemSelectedControl(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelectedControl(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onOptionsMenuClosedControl(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsMenuClosedControl(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onPanelClosedControl(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosedControl(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onPauseControl()V

    return-void
.end method

.method public onPauseControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onPostCreateControl(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostCreateControl(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onPostResumeControl()V

    return-void
.end method

.method public onPostResumeControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onPrepareDialogControl(ILandroid/app/Dialog;)V

    return-void
.end method

.method public onPrepareDialogControl(ILandroid/app/Dialog;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onPrepareOptionsMenuControl(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenuControl(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/qihoopp/common/ActivityControlInterface;->onPreparePanelControl(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanelControl(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onRestartControl()V

    return-void
.end method

.method public onRestartControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onRestoreInstanceStateControl(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRestoreInstanceStateControl(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onResumeControl()V

    return-void
.end method

.method public onResumeControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onRetainNonConfigurationInstanceControl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onRetainNonConfigurationInstanceControl()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onSaveInstanceStateControl(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceStateControl(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onSearchRequestedControl()Z

    move-result v0

    return v0
.end method

.method public onSearchRequestedControl()Z
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->d:Z

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onStartControl()V

    return-void
.end method

.method public onStartControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->d:Z

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onStopControl()V

    return-void
.end method

.method public onStopControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1, p2}, Lcom/qihoopp/common/ActivityControlInterface;->onTitleChangedControl(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onTitleChangedControl(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onTouchEventControl(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEventControl(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onTrackballEventControl(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEventControl(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onUserInteractionControl()V

    return-void
.end method

.method public onUserInteractionControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0}, Lcom/qihoopp/common/ActivityControlInterface;->onUserLeaveHintControl()V

    return-void
.end method

.method public onUserLeaveHintControl()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onWindowAttributesChangedControl(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowAttributesChangedControl(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    invoke-interface {v0, p1}, Lcom/qihoopp/common/ActivityControlInterface;->onWindowFocusChangedControl(Z)V

    return-void
.end method

.method public onWindowFocusChangedControl(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setActivityControl(Lcom/qihoopp/common/ActivityControlInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/qihoopp/insdk/ContainerActivity;->a:Lcom/qihoopp/common/ActivityControlInterface;

    :cond_0
    return-void
.end method
