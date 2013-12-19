.class Lcom/unipay/dialog/IIIIIllIllIIIllI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/ShenzhouFuDialog;

.field final synthetic _$2:Landroid/widget/TextView;

.field final synthetic _$3:Landroid/widget/ImageView;

.field final synthetic _$4:Landroid/widget/ImageView;

.field final synthetic _$5:Landroid/widget/ImageView;

.field final synthetic _$6:Landroid/widget/Button;

.field final synthetic _$7:Landroid/widget/Button;

.field final synthetic _$8:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/ShenzhouFuDialog;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    iput-object p2, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$8:Landroid/widget/Button;

    iput-object p3, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$7:Landroid/widget/Button;

    iput-object p4, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$6:Landroid/widget/Button;

    iput-object p5, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$5:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$4:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$3:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$2:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$8:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$4(Lcom/unipay/dialog/ShenzhouFuDialog;)Landroid/content/Context;

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
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$8:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$4(Lcom/unipay/dialog/ShenzhouFuDialog;)Landroid/content/Context;

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

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$7:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$4(Lcom/unipay/dialog/ShenzhouFuDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_info_unclick.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_info_unclick.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$6:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$4(Lcom/unipay/dialog/ShenzhouFuDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_info_unclick.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_info_unclick.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$5:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$4:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$3:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$2:Landroid/widget/TextView;

    const-string v1, "\u7535\u4fe1\u5145\u503c\u5361\u7528\u6237,"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v0}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$2(Lcom/unipay/dialog/ShenzhouFuDialog;)Lcom/unipay/beans/ShenzhouParamsBean;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/unipay/beans/ShenzhouParamsBean;->setCardType(Ljava/lang/String;)V

    :try_start_2
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$8:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/IIIIIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$4(Lcom/unipay/dialog/ShenzhouFuDialog;)Landroid/content/Context;

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

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
