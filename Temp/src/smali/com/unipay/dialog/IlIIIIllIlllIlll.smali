.class Lcom/unipay/dialog/IlIIIIllIlllIlll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/LoadDialog;

.field final synthetic _$2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/LoadDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    iput-object p2, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$2:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v3, 0x3e8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$3(Lcom/unipay/dialog/LoadDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v1}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/passwd.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "passwd.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$3(Lcom/unipay/dialog/LoadDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v1}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/passwddown.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "passwddown.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$3(Lcom/unipay/dialog/LoadDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v1}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/passwd.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "passwd.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    iget-object v1, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/dialog/LoadDialog;->_$1(Lcom/unipay/dialog/LoadDialog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$1(Lcom/unipay/dialog/LoadDialog;)Lcom/unipay/net/AsyncMultimode;

    move-result-object v0

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->GETPASSWD_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v3}, Lcom/unipay/dialog/LoadDialog;->_$2(Lcom/unipay/dialog/LoadDialog;)Lcom/unipay/net/Parameters;

    move-result-object v3

    new-instance v4, Lcom/unipay/dialog/llIlIllIlIIlllll;

    iget-object v5, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-direct {v4, v5}, Lcom/unipay/dialog/llIlIllIlIIlllll;-><init>(Lcom/unipay/dialog/LoadDialog;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->requestWithHead(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u4f4d\u6570\u4e0d\u5bf9"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$3(Lcom/unipay/dialog/LoadDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/dialog/IlIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v1}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/passwd.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "passwd.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
