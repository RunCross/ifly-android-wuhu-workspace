.class Lcom/unipay/dialog/lIIIlIllllllIlII;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/CuccExitPortraitDialog;

.field final synthetic _$2:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/CuccExitPortraitDialog;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$1:Lcom/unipay/dialog/CuccExitPortraitDialog;

    iput-object p2, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$2:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$1:Lcom/unipay/dialog/CuccExitPortraitDialog;

    const-string v2, "client_link.png"

    invoke-virtual {v1, v2}, Lcom/unipay/dialog/CuccExitPortraitDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$1:Lcom/unipay/dialog/CuccExitPortraitDialog;

    const-string v2, "client_link_down.png"

    invoke-virtual {v1, v2}, Lcom/unipay/dialog/CuccExitPortraitDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$1:Lcom/unipay/dialog/CuccExitPortraitDialog;

    const-string v2, "client_link.png"

    invoke-virtual {v1, v2}, Lcom/unipay/dialog/CuccExitPortraitDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$1:Lcom/unipay/dialog/CuccExitPortraitDialog;

    invoke-static {v0}, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2(Lcom/unipay/dialog/CuccExitPortraitDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_3
    const-string v1, "com.unicom.android.game"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$1:Lcom/unipay/dialog/CuccExitPortraitDialog;

    invoke-static {v1}, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2(Lcom/unipay/dialog/CuccExitPortraitDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$1:Lcom/unipay/dialog/CuccExitPortraitDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/CuccExitPortraitDialog;->dismiss()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://wostore.cn/game"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/unipay/dialog/lIIIlIllllllIlII;->_$1:Lcom/unipay/dialog/CuccExitPortraitDialog;

    invoke-static {v1}, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2(Lcom/unipay/dialog/CuccExitPortraitDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
