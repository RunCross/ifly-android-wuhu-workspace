.class public Lcom/unipay/dialog/CuccExitPortraitDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/CuccExitPortraitDialog$PSmsOneSureListener;,
        Lcom/unipay/dialog/CuccExitPortraitDialog$CuccExitCallback;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final ENSURE:I = 0x1

.field public static final OTHERPAY:I = 0x5


# instance fields
.field private _$1:Lcom/unipay/tools/DensityUtil;

.field private _$2:Landroid/content/Context;

.field private _$3:Lcom/unipay/dialog/CuccExitPortraitDialog$CuccExitCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unipay/dialog/CuccExitPortraitDialog$CuccExitCallback;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$3:Lcom/unipay/dialog/CuccExitPortraitDialog$CuccExitCallback;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    iget-object v1, p0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$1:Lcom/unipay/tools/DensityUtil;

    invoke-direct {p0}, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$1()V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/CuccExitPortraitDialog;)Lcom/unipay/dialog/CuccExitPortraitDialog$CuccExitCallback;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$3:Lcom/unipay/dialog/CuccExitPortraitDialog$CuccExitCallback;

    return-object v0
.end method

.method private _$1()V
    .locals 28

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/unipay/dialog/CuccExitPortraitDialog;->requestWindowFeature(I)Z

    const/high16 v5, 0x3f80

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v8

    const/high16 v5, 0x4000

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x4040

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v9

    const/high16 v5, 0x40a0

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v7

    const/high16 v5, 0x41a0

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x41f0

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v10

    const/high16 v5, 0x4220

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v11

    const/high16 v5, 0x4120

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v12

    const/high16 v5, 0x4248

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v13

    const/high16 v5, 0x428c

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x428c

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x42dc

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x4316

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x4348

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/CuccExitPortraitDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-int v6, v5

    iget v5, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v5

    move-wide/from16 v16, v0

    const-wide v18, 0x3fe3333333333333L

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v5, v0

    :goto_0
    div-int/lit8 v16, v5, 0x28

    mul-int/lit8 v17, v5, 0x2

    div-int/lit8 v17, v17, 0x28

    mul-int/lit8 v18, v5, 0x3

    div-int/lit8 v18, v18, 0x28

    const-string v19, "xyf"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "dm.widthPixels ="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";dm.heightPixels = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v15, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/CuccExitPortraitDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const v19, 0x3dcccccd

    const/16 v20, 0x0

    const/16 v21, 0xff

    const/16 v22, 0xff

    const/16 v23, 0xff

    invoke-static/range {v20 .. v23}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v15, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/ScrollView;->setPadding(IIII)V

    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v20, 0x4120

    const/16 v21, 0xf0

    const/16 v22, 0xf0

    const/16 v23, 0xf0

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v20, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v9, v7, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/high16 v7, 0x4120

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/unipay/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    invoke-virtual {v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xf

    invoke-virtual {v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/16 v21, -0x2

    move/from16 v0, v21

    invoke-direct {v7, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xd

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v21, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v22, "unicom_base/exit_close.png"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const-string v22, "exit_close.png"

    move-object/from16 v0, v22

    invoke-static {v7, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/16 v22, -0x2

    move/from16 v0, v22

    invoke-direct {v10, v11, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v10, 0xff

    const/16 v11, 0xf0

    const/16 v22, 0xf0

    move/from16 v0, v22

    invoke-static {v10, v11, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v7, v10, v0, v11, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v11, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v10, v11, v0, v12, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v18, "client_link.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/CuccExitPortraitDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v9, v2, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v22, "\u66f4\u591a\u6e38\u620f\u8bf7\u70b9\u8fd9\u91cc "

    new-instance v23, Landroid/text/SpannableString;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v24, Landroid/text/style/ForegroundColorSpan;

    const/16 v25, 0x64

    const/16 v26, 0x64

    const/16 v27, 0x64

    invoke-static/range {v25 .. v27}, Landroid/graphics/Color;->rgb(III)I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v26, 0x21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v22, 0x4140

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v22, 0x11

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v8, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v18, 0xff

    const/16 v22, 0xf0

    const/16 v23, 0xf0

    move/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v18, 0x0

    const/16 v22, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    mul-int/lit8 v25, v5, 0x8

    div-int/lit8 v25, v25, 0x28

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const-string v23, "wo_game.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/CuccExitPortraitDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-direct {v10, v0, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v10, 0xc8

    const/16 v18, 0xc8

    const/16 v23, 0xc8

    move/from16 v0, v18

    move/from16 v1, v23

    invoke-static {v10, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v10, v5, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v17, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v18, v6, 0x2

    move/from16 v0, v18

    invoke-direct {v5, v0, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u9000\u51fa"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v13, "unicom_base/exit_button.png"

    invoke-virtual {v5, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v13, "exit_button.png"

    invoke-static {v5, v13}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v5, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-direct {v5, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    move/from16 v0, v18

    invoke-direct {v13, v0, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-direct {v5, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/16 v18, -0x2

    move/from16 v0, v18

    invoke-direct {v12, v13, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v5, v12, v0, v13, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    int-to-double v0, v6

    move-wide/from16 v23, v0

    const-wide v25, 0x3fe999999999999aL

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v13, v0, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x96

    const/16 v13, 0x96

    const/16 v16, 0x96

    move/from16 v0, v16

    invoke-static {v8, v13, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/unipay/dialog/IlIIlIllllllIlII;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Lcom/unipay/dialog/IlIIlIllllllIlII;-><init>(Lcom/unipay/dialog/CuccExitPortraitDialog;Landroid/widget/ImageView;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/unipay/dialog/lIIIlIllllllIlII;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11}, Lcom/unipay/dialog/lIIIlIllllllIlII;-><init>(Lcom/unipay/dialog/CuccExitPortraitDialog;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/unipay/dialog/IIIIlIllllllIlII;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/unipay/dialog/IIIIlIllllllIlII;-><init>(Lcom/unipay/dialog/CuccExitPortraitDialog;Landroid/widget/Button;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/unipay/dialog/llllIlllllllIlII;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/unipay/dialog/llllIlllllllIlII;-><init>(Lcom/unipay/dialog/CuccExitPortraitDialog;Landroid/widget/Button;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/unipay/dialog/CuccExitPortraitDialog;->setContentView(Landroid/view/View;)V

    iput v6, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/CuccExitPortraitDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/unipay/dialog/CuccExitPortraitDialog;->setCanceledOnTouchOutside(Z)V

    return-void

    :cond_0
    iget v5, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    const-wide v16, 0x3fe3333333333333L

    mul-double v5, v5, v16

    double-to-int v6, v5

    iget v5, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v5

    move-wide/from16 v16, v0

    const-wide v18, 0x3feccccccccccccdL

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v5, v0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method static synthetic _$2(Lcom/unipay/dialog/CuccExitPortraitDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unicom_base/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/unipay/dialog/CuccExitPortraitDialog;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    array-length v6, v4

    invoke-static {v4, v3, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    const/high16 v6, 0x4348

    div-float/2addr v3, v6

    float-to-int v3, v3

    if-gtz v3, :cond_2

    :goto_0
    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    array-length v3, v4

    invoke-static {v4, v1, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public getMyContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    return-object v0
.end method

.method public getScreenWidth(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unipay/dialog/CuccExitPortraitDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object v2

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public setMyContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/CuccExitPortraitDialog;->_$2:Landroid/content/Context;

    return-void
.end method
