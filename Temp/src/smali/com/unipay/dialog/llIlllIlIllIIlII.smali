.class Lcom/unipay/dialog/llIlllIlIllIIlII;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PersonalMessage;

.field final synthetic _$2:Landroid/widget/TextView;

.field final synthetic _$3:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    iput-object p2, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$3:Landroid/widget/Button;

    iput-object p3, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$2:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_info.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_info.9.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

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

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_info.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_info.9.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$6(Lcom/unipay/dialog/PersonalMessage;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$6(Lcom/unipay/dialog/PersonalMessage;)Landroid/widget/EditText;

    move-result-object v0

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

    iget-object v8, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    new-instance v0, Lcom/unipay/dialog/IlIIIIllIlIIlIll;

    iget-object v1, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    iget-object v6, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$2:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$3:Landroid/widget/Button;

    invoke-direct/range {v0 .. v7}, Lcom/unipay/dialog/IlIIIIllIlIIlIll;-><init>(Lcom/unipay/dialog/PersonalMessage;JJLandroid/widget/TextView;Landroid/widget/Button;)V

    invoke-static {v8, v0}, Lcom/unipay/dialog/PersonalMessage;->_$1(Lcom/unipay/dialog/PersonalMessage;Lcom/unipay/dialog/IlIIIIllIlIIlIll;)Lcom/unipay/dialog/IlIIIIllIlIIlIll;

    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    iget-object v1, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$3:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/unipay/dialog/PersonalMessage;->_$1(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$5(Lcom/unipay/dialog/PersonalMessage;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    iget-object v1, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/PersonalMessage;->_$6(Lcom/unipay/dialog/PersonalMessage;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/dialog/PersonalMessage;->_$2(Lcom/unipay/dialog/PersonalMessage;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$3(Lcom/unipay/dialog/PersonalMessage;)Lcom/unipay/net/AsyncMultimode;

    move-result-object v0

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->VERCODE_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v3}, Lcom/unipay/dialog/PersonalMessage;->_$4(Lcom/unipay/dialog/PersonalMessage;)Lcom/unipay/net/Parameters;

    move-result-object v3

    new-instance v4, Lcom/unipay/dialog/llIlllllllIlIIll;

    iget-object v5, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-direct {v4, v5}, Lcom/unipay/dialog/llIlllllllIlIIll;-><init>(Lcom/unipay/dialog/PersonalMessage;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->requestWithHead(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u7801\u4e0d\u6b63\u786e!"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/llIlllIlIllIIlII;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

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
