.class public Lcom/unipay/dialog/PVacEnSureDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final ENSURE:I = 0x1


# instance fields
.field private _$1:Lcom/unipay/tools/DensityUtil;

.field private _$10:Landroid/content/Context;

.field private _$2:Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;

.field private _$3:Ljava/lang/String;

.field private _$4:Ljava/lang/String;

.field private _$5:Ljava/lang/String;

.field private _$6:Ljava/lang/String;

.field private _$7:Ljava/lang/String;

.field private _$8:Ljava/lang/String;

.field private _$9:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;)V
    .locals 2

    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/unipay/dialog/PVacEnSureDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$8:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$9:Ljava/lang/String;

    iput-object p4, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$7:Ljava/lang/String;

    iput-object p5, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$6:Ljava/lang/String;

    iput-object p6, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$5:Ljava/lang/String;

    iput-object p8, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$4:Ljava/lang/String;

    iput-object p7, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$3:Ljava/lang/String;

    iput-object p9, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$2:Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    iget-object v1, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$1:Lcom/unipay/tools/DensityUtil;

    invoke-direct {p0}, Lcom/unipay/dialog/PVacEnSureDialog;->_$1()V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/PVacEnSureDialog;)Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$2:Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;

    return-object v0
.end method

.method private _$1()V
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/PVacEnSureDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/unipay/dialog/PVacEnSureDialog;->getScreenWidth(Landroid/app/Activity;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/unipay/dialog/PVacEnSureDialog;->getScreenHeight(Landroid/app/Activity;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/unipay/dialog/PVacEnSureDialog;->getMode(II)I

    const/high16 v4, 0x3f80

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v5

    const/high16 v4, 0x4040

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4100

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v6

    const/high16 v4, 0x4170

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v7

    const/high16 v4, 0x4120

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v8

    const/high16 v4, 0x4220

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v9

    const/high16 v4, 0x4248

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x42b4

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v10

    const/high16 v4, 0x42dc

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x41a0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v11

    new-instance v12, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v4, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, -0x1

    invoke-virtual {v12, v4}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v13, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v4, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, -0x1

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v14, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, -0x333334

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v14, v6, v7, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v15, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, -0x1

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u60a8\u5373\u5c06\u8d2d\u4e70\uff1a"

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$3:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/unipay/unipay_sdk/UniPay;->isVacMonth(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$3:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v4, "\u60a8\u5373\u5c06\u9000\u8ba2\uff1a"

    :cond_0
    :goto_0
    new-instance v17, Landroid/text/SpannableString;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$5:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    const v19, -0x777778

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x21

    invoke-virtual/range {v17 .. v21}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    const/high16 v19, -0x100

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v19

    const/16 v20, 0x21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->setSingleLine()V

    new-instance v17, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-direct {v4, v0, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, -0x777778

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/text/SpannableString;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u60a8\u7684\u624b\u673a\u53f7\u7801:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$8:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const v20, -0x777778

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x0

    const/16 v21, 0x7

    const/16 v22, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const/high16 v20, -0x1

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x7

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v21

    const/16 v22, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->setSingleLine()V

    new-instance v19, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-direct {v4, v0, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, -0x777778

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5171\u9700\u652f\u4ed8\u8bdd\u8d39\uff1a"

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$3:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/unipay/unipay_sdk/UniPay;->isVacMonth(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$3:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v4, "\u6bcf\u6708\u53d6\u6d88\u652f\u4ed8\u8bdd\u8d39\uff1a"

    :cond_1
    :goto_1
    new-instance v21, Landroid/text/SpannableString;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$4:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\u5143"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    const v23, -0x777778

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v23, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x21

    invoke-virtual/range {v21 .. v25}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    const/high16 v23, -0x1

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$4:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v24, v24, v25

    const/16 v25, 0x21

    invoke-virtual/range {v21 .. v25}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    const/high16 v23, -0x100

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$4:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v4, v4, v23

    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableString;->length()I

    move-result v23

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->setSingleLine()V

    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v21, -0x777778

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v22, Landroid/text/SpannableString;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$6:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const v24, -0x777778

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    const/16 v25, 0x5

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/high16 v24, -0x100

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x5

    invoke-virtual/range {v22 .. v22}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->setSingleLine()V

    new-instance v22, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v23, -0x777778

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v24, Landroid/text/SpannableString;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "\u5e94\u7528\u63d0\u4f9b\u5546\uff1a"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$9:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    const v26, -0x777778

    invoke-direct/range {v25 .. v26}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x0

    const/16 v27, 0x6

    const/16 v28, 0x21

    invoke-virtual/range {v24 .. v28}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    const/high16 v26, -0x100

    invoke-direct/range {v25 .. v26}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x6

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableString;->length()I

    move-result v27

    const/16 v28, 0x21

    invoke-virtual/range {v24 .. v28}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->setSingleLine()V

    new-instance v24, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v25, Landroid/view/ViewGroup$LayoutParams;

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, -0x777778

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v26, Landroid/view/ViewGroup$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, -0x2

    invoke-direct/range {v26 .. v28}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v26, Landroid/text/SpannableString;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$7:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0x777778

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    const/16 v29, 0x5

    const/16 v30, 0x21

    invoke-virtual/range {v26 .. v30}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const/high16 v28, -0x100

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x5

    invoke-virtual/range {v26 .. v26}, Landroid/text/SpannableString;->length()I

    move-result v29

    const/16 v30, 0x21

    invoke-virtual/range {v26 .. v30}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->setSingleLine()V

    new-instance v26, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v27, -0x333334

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v28, Landroid/view/ViewGroup$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, -0x2

    invoke-direct/range {v28 .. v30}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v28, -0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v28, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v29, Landroid/view/ViewGroup$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x2

    invoke-direct/range {v29 .. v31}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v29, "\u8bf7\u70b9\u51fb\u300a\u786e\u5b9a\u300b\u53d1\u9001\u77ed\u4fe1\u786e\u8ba4\u8d2d\u4e70\n\uff08\u672c\u6b21\u652f\u4ed8\u4e0d\u542b\u901a\u4fe1\u8d39\uff09"

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v29, -0x100

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v6, v8, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v8, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v8, v7, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v16, "  \u786e\u5b9a  "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v16, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v17, -0x333334

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v17, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v18, "  \u53d6\u6d88  "

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v4, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v6, v9, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v9, 0x11

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v9, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v18, -0x2

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v18, "chinaunicom.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/PVacEnSureDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v16, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, -0x333334

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v5, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v6, v5, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v18, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const-string v10, "wostore_logo.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/unipay/dialog/PVacEnSureDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v10, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v10, v15, v6, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, -0x100

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41b0

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v6, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x2

    const/16 v18, -0x2

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v15, "China Unicom"

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, -0x100

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x4150

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v6, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v11, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "V"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x55

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/unipay/dialog/PVacEnSureDialog;->setContentView(Landroid/view/View;)V

    new-instance v4, Lcom/unipay/dialog/IIIllIIIllIIIIlI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8}, Lcom/unipay/dialog/IIIllIIIllIIIIlI;-><init>(Lcom/unipay/dialog/PVacEnSureDialog;Landroid/widget/Button;)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/unipay/dialog/lIIllIIIllIIIIlI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/unipay/dialog/lIIllIIIllIIIIlI;-><init>(Lcom/unipay/dialog/PVacEnSureDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$3:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v4, "\u60a8\u5373\u5c06\u8ba2\u8d2d\uff1a"

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PVacEnSureDialog;->_$3:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const-string v4, "\u6bcf\u6708\u5171\u9700\u652f\u4ed8\u8bdd\u8d39\uff1a"

    goto/16 :goto_1
.end method


# virtual methods
.method public getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$10:Landroid/content/Context;

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
    invoke-virtual {p0, v2}, Lcom/unipay/dialog/PVacEnSureDialog;->readInputStream(Ljava/io/InputStream;)[B

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

.method public getMode(II)I
    .locals 7

    const/4 v0, 0x5

    const/16 v6, 0x3c0

    const/16 v5, 0x320

    const/16 v4, 0x1e0

    const/16 v3, 0x500

    const/4 v1, 0x3

    const/16 v2, 0x140

    if-ne p1, v2, :cond_0

    if-eq p2, v4, :cond_1

    :cond_0
    if-ne p1, v4, :cond_3

    const/16 v2, 0x140

    if-ne p2, v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-ne p1, v4, :cond_4

    if-eq p2, v5, :cond_5

    :cond_4
    if-ne p1, v5, :cond_6

    if-ne p2, v4, :cond_6

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const/16 v2, 0x21c

    if-ne p1, v2, :cond_7

    if-eq p2, v6, :cond_8

    :cond_7
    if-ne p1, v6, :cond_9

    const/16 v2, 0x21c

    if-ne p2, v2, :cond_9

    :cond_8
    const/4 v0, 0x2

    goto :goto_0

    :cond_9
    const/16 v2, 0x280

    if-ne p1, v2, :cond_a

    if-eq p2, v6, :cond_b

    :cond_a
    if-ne p1, v6, :cond_c

    const/16 v2, 0x280

    if-ne p2, v2, :cond_c

    :cond_b
    const/4 v0, 0x4

    goto :goto_0

    :cond_c
    const/16 v2, 0x2d0

    if-ne p1, v2, :cond_d

    if-eq p2, v3, :cond_2

    :cond_d
    if-ne p1, v3, :cond_e

    const/16 v2, 0x2d0

    if-eq p2, v2, :cond_2

    :cond_e
    if-ne p1, v5, :cond_f

    if-eq p2, v3, :cond_2

    :cond_f
    if-ne p1, v3, :cond_10

    if-eq p2, v5, :cond_2

    :cond_10
    const/16 v2, 0x300

    if-ne p1, v2, :cond_11

    if-eq p2, v3, :cond_2

    :cond_11
    if-ne p1, v3, :cond_12

    const/16 v2, 0x300

    if-eq p2, v2, :cond_2

    :cond_12
    const/16 v0, 0x438

    if-ne p1, v0, :cond_13

    const/16 v0, 0x6f0

    if-eq p2, v0, :cond_14

    :cond_13
    const/16 v0, 0x6f0

    if-ne p1, v0, :cond_15

    const/16 v0, 0x438

    if-ne p2, v0, :cond_15

    :cond_14
    const/4 v0, 0x6

    goto :goto_0

    :cond_15
    move v0, v1

    goto :goto_0
.end method

.method public getScreenHeight(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
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
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/PVacEnSureDialog;->_$2:Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;->VacResult(I)V

    invoke-virtual {p0}, Lcom/unipay/dialog/PVacEnSureDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

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
