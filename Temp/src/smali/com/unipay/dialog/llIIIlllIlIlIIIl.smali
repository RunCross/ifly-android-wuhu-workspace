.class Lcom/unipay/dialog/llIIIlllIlIlIIIl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/VacPayFailDialog;

.field final synthetic _$2:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/VacPayFailDialog;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$1:Lcom/unipay/dialog/VacPayFailDialog;

    iput-object p2, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$2:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$1:Lcom/unipay/dialog/VacPayFailDialog;

    invoke-static {v1}, Lcom/unipay/dialog/VacPayFailDialog;->_$2(Lcom/unipay/dialog/VacPayFailDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_base/vac_back.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "vac_back.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return v3

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$1:Lcom/unipay/dialog/VacPayFailDialog;

    invoke-static {v1}, Lcom/unipay/dialog/VacPayFailDialog;->_$2(Lcom/unipay/dialog/VacPayFailDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_base/vac_back_click.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "vac_back_click.png"

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
    :try_start_2
    iget-object v0, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$1:Lcom/unipay/dialog/VacPayFailDialog;

    invoke-static {v1}, Lcom/unipay/dialog/VacPayFailDialog;->_$2(Lcom/unipay/dialog/VacPayFailDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_base/vac_back.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "vac_back.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$1:Lcom/unipay/dialog/VacPayFailDialog;

    invoke-static {v0}, Lcom/unipay/dialog/VacPayFailDialog;->_$1(Lcom/unipay/dialog/VacPayFailDialog;)Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;->VacFailOperation(I)V

    iget-object v0, p0, Lcom/unipay/dialog/llIIIlllIlIlIIIl;->_$1:Lcom/unipay/dialog/VacPayFailDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/VacPayFailDialog;->dismiss()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
