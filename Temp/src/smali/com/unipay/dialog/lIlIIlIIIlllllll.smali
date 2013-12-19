.class Lcom/unipay/dialog/lIlIIlIIIlllllll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PExceedDialog;

.field final synthetic _$2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/PExceedDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    iput-object p2, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$2:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v4, 0x3e8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExceedDialog;->_$3(Lcom/unipay/dialog/PExceedDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v2}, Lcom/unipay/dialog/PExceedDialog;->_$4(Lcom/unipay/dialog/PExceedDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "unicom_base/btn_ac.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "btn_ac.png"

    invoke-static {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExceedDialog;->_$3(Lcom/unipay/dialog/PExceedDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v2}, Lcom/unipay/dialog/PExceedDialog;->_$4(Lcom/unipay/dialog/PExceedDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "unicom_base/btn_ac_click.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "btn_ac_click.png"

    invoke-static {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v2}, Lcom/unipay/dialog/PExceedDialog;->_$3(Lcom/unipay/dialog/PExceedDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v2}, Lcom/unipay/dialog/PExceedDialog;->_$3(Lcom/unipay/dialog/PExceedDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v1}, Lcom/unipay/dialog/PExceedDialog;->_$4(Lcom/unipay/dialog/PExceedDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExceedDialog;->_$2(Lcom/unipay/dialog/PExceedDialog;)Lcom/unipay/tools/ExceedingTools;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unipay/tools/ExceedingTools;->checkRan4Num(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExceedDialog;->_$3(Lcom/unipay/dialog/PExceedDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExceedDialog;->_$4(Lcom/unipay/dialog/PExceedDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u8f93\u5165\u9a8c\u8bc1\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExceedDialog;->_$3(Lcom/unipay/dialog/PExceedDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v2}, Lcom/unipay/dialog/PExceedDialog;->_$4(Lcom/unipay/dialog/PExceedDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "unicom_base/btn_ac.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "btn_ac.png"

    invoke-static {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExceedDialog;->_$1(Lcom/unipay/dialog/PExceedDialog;)Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;->result(I)V

    iget-object v0, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/PExceedDialog;->dismiss()V

    goto :goto_2

    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExceedDialog;->_$3(Lcom/unipay/dialog/PExceedDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/dialog/lIlIIlIIIlllllll;->_$1:Lcom/unipay/dialog/PExceedDialog;

    invoke-static {v2}, Lcom/unipay/dialog/PExceedDialog;->_$4(Lcom/unipay/dialog/PExceedDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "unicom_base/btn_ac.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "btn_ac.png"

    invoke-static {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
