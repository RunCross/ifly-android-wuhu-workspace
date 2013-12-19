.class Lcom/unipay/dialog/IIIlllIlIllIIlII;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PersonalMessage;

.field final synthetic _$2:Landroid/widget/TextView;

.field final synthetic _$3:Landroid/widget/TextView;

.field final synthetic _$4:Landroid/widget/TextView;

.field final synthetic _$5:Landroid/widget/ImageView;

.field final synthetic _$6:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    iput-object p2, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$6:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$5:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$4:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$3:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$2:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/high16 v4, -0x1

    const/16 v3, 0xa2

    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$6:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v1, v0}, Lcom/unipay/dialog/PersonalMessage;->_$1(Lcom/unipay/dialog/PersonalMessage;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$5:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/ruo.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "ruo.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$4:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$3:Landroid/widget/TextView;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$2:Landroid/widget/TextView;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$5:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/qiang.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "qiang.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$4:Landroid/widget/TextView;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$3:Landroid/widget/TextView;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$5:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/zhong.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "zhong.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$4:Landroid/widget/TextView;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$3:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIlllIlIllIIlII;->_$2:Landroid/widget/TextView;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
