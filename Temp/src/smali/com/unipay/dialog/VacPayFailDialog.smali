.class public Lcom/unipay/dialog/VacPayFailDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final OTHER:I = 0x0

.field public static final REPAY:I = 0x1


# instance fields
.field private _$1:Lcom/unipay/errormsg/ErrorMsgBean;

.field private _$2:Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;

.field private _$3:Lcom/unipay/tools/DensityUtil;

.field private _$4:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unipay/errormsg/ErrorMsgBean;Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;)V
    .locals 2

    const v0, 0x103000e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/unipay/dialog/VacPayFailDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    iput-object p3, p0, Lcom/unipay/dialog/VacPayFailDialog;->_$2:Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;

    iput-object p2, p0, Lcom/unipay/dialog/VacPayFailDialog;->_$1:Lcom/unipay/errormsg/ErrorMsgBean;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    iget-object v1, p0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/VacPayFailDialog;->_$3:Lcom/unipay/tools/DensityUtil;

    invoke-direct {p0}, Lcom/unipay/dialog/VacPayFailDialog;->_$1()V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/VacPayFailDialog;)Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/VacPayFailDialog;->_$2:Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;

    return-object v0
.end method

.method private _$1()V
    .locals 20

    const/high16 v3, 0x3f80

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v4

    const/high16 v3, 0x4000

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v5

    const/high16 v3, 0x4040

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v6

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v7

    const/high16 v3, 0x41a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x41f0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v8

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v9

    const/high16 v3, 0x4220

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v10

    const/high16 v3, 0x4270

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v11

    const/high16 v3, 0x42f0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4348

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v13, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v3, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x1

    invoke-virtual {v13, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v14, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v3, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v15, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v15, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v3, v6, v0, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/4 v3, 0x0

    invoke-static {v15, v3}, Lcom/unipay/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v16, "\u624b\u673a\u8bdd\u8d39\u652f\u4ed8"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v16, 0x41a0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v3, v9, v0, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v9, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v17, "unicom_base/chinaunicom.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/VacPayFailDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v16, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    const/16 v17, 0xff

    const/16 v18, 0xf0

    const/16 v19, 0xf0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v8, v4, v8, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v9, v8, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v11, "unicom_base/wostore_logo.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/unipay/dialog/VacPayFailDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v8, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v8

    move-wide/from16 v16, v0

    const-wide v18, 0x3feccccccccccccdL

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v8, v0

    invoke-direct {v3, v8, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, -0x777778

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v11, -0x2

    invoke-direct {v3, v8, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v7, v8, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v8, "unicom_extend/chahao.jpg"

    invoke-virtual {v3, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v8, "chahao.jpg"

    invoke-static {v3, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x10

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    const-string v8, "\u554a\u54e6\uff0c\u652f\u4ed8\u5931\u8d25\u4e86\u2026\u2026"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, -0x1

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41a0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v10, -0x2

    invoke-direct {v3, v8, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v9, v8, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$1:Lcom/unipay/errormsg/ErrorMsgBean;

    invoke-virtual {v8}, Lcom/unipay/errormsg/ErrorMsgBean;->getNotice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v10, v11, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v10, v11, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$1:Lcom/unipay/errormsg/ErrorMsgBean;

    invoke-virtual {v3}, Lcom/unipay/errormsg/ErrorMsgBean;->getAdv()Ljava/lang/String;

    move-result-object v3

    const-string v11, ";:;"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v11, v3

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v16, "\u5efa\u8bae\u60a8:1."

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-object v16, v3, v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "      2."

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    aget-object v3, v3, v11

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v8, Landroid/widget/TableLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v8, v3}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v3, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v3, v9, v10, v11}, Landroid/widget/TableLayout;->setPadding(IIII)V

    new-instance v10, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v10, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v3, v11, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x4080

    invoke-virtual {v10, v3}, Landroid/widget/TableRow;->setWeightSum(F)V

    const/16 v3, 0x11

    invoke-virtual {v10, v3}, Landroid/widget/TableRow;->setGravity(I)V

    new-instance v11, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v11, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f80

    iput v3, v11, Landroid/widget/TableRow$LayoutParams;->weight:F

    iget v3, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x5

    iput v3, v11, Landroid/widget/TableRow$LayoutParams;->width:I

    const/4 v3, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v9, v3, v9, v0}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_1

    const-string v9, "\u5176\u5b83\r\n\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/16 v9, 0x64

    const/16 v16, 0x64

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v16, "unicom_extend/btn_an.jpg"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    const-string v16, "btn_an.jpg"

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    new-instance v9, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v3, "\u8fd4\u56de\u5e94\u7528"

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setTextColor(I)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v11, "unicom_base/vac_back.png"

    invoke-virtual {v3, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v11, "vac_back.png"

    invoke-static {v3, v11}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    new-instance v3, Lcom/unipay/dialog/llIIIlllIlIlIIIl;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9}, Lcom/unipay/dialog/llIIIlllIlIlIIIl;-><init>(Lcom/unipay/dialog/VacPayFailDialog;Landroid/widget/Button;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v10, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v10}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/unipay/dialog/VacPayFailDialog;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u5efa\u8bae\u60a8:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v3, v3, v11

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    const-string v9, "\u5176\u5b83\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic _$2(Lcom/unipay/dialog/VacPayFailDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/unipay/dialog/VacPayFailDialog;->_$4:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/unipay/dialog/VacPayFailDialog;->readInputStream(Ljava/io/InputStream;)[B

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/VacPayFailDialog;->_$2:Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;->VacFailOperation(I)V

    invoke-virtual {p0}, Lcom/unipay/dialog/VacPayFailDialog;->dismiss()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

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
