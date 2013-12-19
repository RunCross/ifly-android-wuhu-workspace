.class public Lmm/purchasesdk/ui/ac;
.super Lmm/purchasesdk/ui/b;


# instance fields
.field private E:I

.field private final TAG:Ljava/lang/String;

.field private final Y:I

.field private final Z:I

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Handler;

.field private a:Landroid/webkit/WebView;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Ljava/util/HashMap;

.field private aw:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/ProgressBar;

.field private b:Lmm/purchasesdk/b;

.field private c:Landroid/widget/ImageView;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 3

    const/4 v1, 0x1

    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/ui/b;-><init>(Landroid/content/Context;I)V

    const-string v0, "WebViewLayout"

    iput-object v0, p0, Lmm/purchasesdk/ui/ac;->TAG:Ljava/lang/String;

    iput v1, p0, Lmm/purchasesdk/ui/ac;->Y:I

    const/4 v0, 0x2

    iput v0, p0, Lmm/purchasesdk/ui/ac;->Z:I

    new-instance v0, Lmm/purchasesdk/ui/ad;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/ad;-><init>(Lmm/purchasesdk/ui/ac;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/ac;->g:Landroid/view/View$OnClickListener;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/ac;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lmm/purchasesdk/ui/ac;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/ac;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lmm/purchasesdk/l/d;->setContext(Landroid/content/Context;)V

    :cond_1
    iput-object p3, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/os/Handler;

    iput-object p4, p0, Lmm/purchasesdk/ui/ac;->b:Landroid/os/Handler;

    iput-object p2, p0, Lmm/purchasesdk/ui/ac;->b:Lmm/purchasesdk/b;

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p5, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lmm/purchasesdk/ui/ac;->aw:Ljava/lang/String;

    const-string v0, "WebViewLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "murl ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/ac;->aw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput p6, p0, Lmm/purchasesdk/ui/ac;->E:I

    iput-object p7, p0, Lmm/purchasesdk/ui/ac;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/bg.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/ac;)I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/ui/ac;->E:I

    return v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/ac;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/ac;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/ac;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/ac;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/ac;->b:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/ui/ac;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/ac;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/ac;)Lmm/purchasesdk/b;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->b:Lmm/purchasesdk/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->U:I

    sget v3, Lmm/purchasesdk/ui/aa;->V:I

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v3, p0, Lmm/purchasesdk/ui/ac;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v9, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lmm/purchasesdk/l/d;->k:F

    const/high16 v2, 0x3f80

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x6e

    const/16 v3, 0x28

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mmiap/image/vertical/logo1.png"

    invoke-static {v3, v4}, Lmm/purchasesdk/ui/aa;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v3, p0, Lmm/purchasesdk/ui/ac;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5, v5, v9, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/ui/u;->u()V

    invoke-super {p0}, Lmm/purchasesdk/ui/b;->dismiss()V

    return-void
.end method

.method public f(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x2711

    const/4 v5, -0x2

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lmm/purchasesdk/ui/ac;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/ui/ac;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v1, v2, v3}, Lmm/purchasesdk/ui/ac;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/ac;->b:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lmm/purchasesdk/ui/ac;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    new-instance v2, Lmm/purchasesdk/ui/ae;

    invoke-direct {v2, p0, v0}, Lmm/purchasesdk/ui/ae;-><init>(Lmm/purchasesdk/ui/ac;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    new-instance v1, Lmm/purchasesdk/ui/af;

    invoke-direct {v1, p0}, Lmm/purchasesdk/ui/af;-><init>(Lmm/purchasesdk/ui/ac;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lmm/purchasesdk/ui/ac;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lmm/purchasesdk/ui/ac;->a:Landroid/widget/RelativeLayout;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/l/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/ac;->f(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/ac;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/ac;->setCancelable(Z)V

    invoke-super {p0}, Lmm/purchasesdk/ui/b;->show()V

    return-void
.end method
