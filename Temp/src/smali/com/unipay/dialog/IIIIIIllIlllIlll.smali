.class Lcom/unipay/dialog/IIIIIIllIlllIlll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/LoadDialog;

.field final synthetic _$2:Landroid/widget/EditText;

.field final synthetic _$3:Landroid/widget/EditText;

.field final synthetic _$4:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/LoadDialog;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    iput-object p2, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$4:Landroid/widget/Button;

    iput-object p3, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$3:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$2:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/16 v3, 0x3e8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$4:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v1}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_sure_normal.9.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_sure_normal.9.png"

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
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$4:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v1}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_sure_press.9.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_sure_press.9.png"

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
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$4:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v1}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_sure_normal.9.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_sure_normal.9.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$2:Landroid/widget/EditText;

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

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$4(Lcom/unipay/dialog/LoadDialog;)Lcom/unipay/dialog/LoadDialog$LoadDialogListener;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$3:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unipay/tools/PhoneInfoTools;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/unipay/dialog/LoadDialog$LoadDialogListener;->opearation(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/LoadDialog;->dismiss()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u4f4d\u6570\u4e0d\u5bf9"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u4f4d\u6570\u4e0d\u5bf9"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$4:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/dialog/IIIIIIllIlllIlll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v1}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unicom_extend/bt_sure_normal.9.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bt_sure_normal.9.png"

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
