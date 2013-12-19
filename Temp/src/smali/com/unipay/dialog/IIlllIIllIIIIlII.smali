.class Lcom/unipay/dialog/IIlllIIllIIIIlII;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/ExchangeCodeDialog;

.field final synthetic _$2:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/ExchangeCodeDialog;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    iput-object p2, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$2:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :try_start_0
    iget-object v1, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    invoke-static {v2}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$3(Lcom/unipay/dialog/ExchangeCodeDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "unicom_base/exchanageCode.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "exchanageCode.png"

    invoke-static {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return v0

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    invoke-static {v2}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$3(Lcom/unipay/dialog/ExchangeCodeDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "unicom_base/exchanageCode_click.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "exchanageCode_click.png"

    invoke-static {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    invoke-static {v3}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$3(Lcom/unipay/dialog/ExchangeCodeDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "unicom_base/exchanageCode.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "exchanageCode.png"

    invoke-static {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$2:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v2, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    invoke-static {v2}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$2(Lcom/unipay/dialog/ExchangeCodeDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    invoke-static {v3}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$2(Lcom/unipay/dialog/ExchangeCodeDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    invoke-static {v0}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$3(Lcom/unipay/dialog/ExchangeCodeDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/unipay/dialog/IllIlIlIlllIIlII;

    invoke-direct {v2, p0}, Lcom/unipay/dialog/IllIlIlIlllIIlII;-><init>(Lcom/unipay/dialog/IIlllIIllIIIIlII;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1(Lcom/unipay/dialog/ExchangeCodeDialog;)Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    invoke-static {v3}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$2(Lcom/unipay/dialog/ExchangeCodeDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;->OneSure(II)V

    iget-object v1, p0, Lcom/unipay/dialog/IIlllIIllIIIIlII;->_$1:Lcom/unipay/dialog/ExchangeCodeDialog;

    invoke-virtual {v1}, Lcom/unipay/dialog/ExchangeCodeDialog;->dismiss()V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
