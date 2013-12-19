.class Lcom/unipay/dialog/lIlllllllIlllllI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

.field final synthetic _$2:Landroid/widget/EditText;

.field final synthetic _$3:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    iput-object p2, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$3:Landroid/widget/Button;

    iput-object p3, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$2:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$2(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_info.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_info.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$2(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_info_press.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_info_press.png"

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

    :pswitch_1
    iget-object v0, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$2:Landroid/widget/EditText;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :try_start_2
    iget-object v0, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/lIlllllllIlllllI;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$2(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_info.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_info.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
