.class public Lmm/purchasesdk/ui/aa;
.super Ljava/lang/Object;


# static fields
.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I

.field public static M:I

.field public static N:I

.field public static O:I

.field public static P:I

.field public static Q:I

.field public static R:I

.field public static S:I

.field public static T:I

.field public static U:I

.field public static V:I

.field public static a:F

.field public static b:F

.field private static b:Ljava/util/ArrayList;

.field public static c:F

.field public static d:F

.field public static d:Ljava/lang/Boolean;

.field private static d:Ljava/util/HashMap;

.field public static e:F

.field public static f:F

.field public static g:F

.field public static h:F

.field public static i:F

.field public static j:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x5

    const/high16 v4, 0x4180

    const/16 v3, 0x14

    const/16 v2, 0xa

    const/high16 v1, 0x3f80

    sput v3, Lmm/purchasesdk/ui/aa;->I:I

    const/16 v0, 0x50

    sput v0, Lmm/purchasesdk/ui/aa;->J:I

    const/16 v0, 0x37

    sput v0, Lmm/purchasesdk/ui/aa;->K:I

    const/16 v0, 0x1e0

    sput v0, Lmm/purchasesdk/ui/aa;->L:I

    const/16 v0, 0x118

    sput v0, Lmm/purchasesdk/ui/aa;->M:I

    sput v3, Lmm/purchasesdk/ui/aa;->N:I

    sput v5, Lmm/purchasesdk/ui/aa;->O:I

    sput v5, Lmm/purchasesdk/ui/aa;->P:I

    const/16 v0, 0xf

    sput v0, Lmm/purchasesdk/ui/aa;->Q:I

    const/high16 v0, 0x4220

    sput v0, Lmm/purchasesdk/ui/aa;->a:F

    const/high16 v0, 0x42a0

    sput v0, Lmm/purchasesdk/ui/aa;->b:F

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/lang/Boolean;

    sput v1, Lmm/purchasesdk/ui/aa;->c:F

    sput v1, Lmm/purchasesdk/ui/aa;->d:F

    sput v1, Lmm/purchasesdk/ui/aa;->e:F

    sput v2, Lmm/purchasesdk/ui/aa;->R:I

    sput v1, Lmm/purchasesdk/ui/aa;->f:F

    sput v4, Lmm/purchasesdk/ui/aa;->g:F

    sput v3, Lmm/purchasesdk/ui/aa;->T:I

    sput v2, Lmm/purchasesdk/ui/aa;->U:I

    sput v2, Lmm/purchasesdk/ui/aa;->V:I

    sput v4, Lmm/purchasesdk/ui/aa;->h:F

    const/high16 v0, 0x4190

    sput v0, Lmm/purchasesdk/ui/aa;->i:F

    const/high16 v0, 0x41a0

    sput v0, Lmm/purchasesdk/ui/aa;->j:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    const/4 v6, 0x1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v4, v6, :cond_1

    if-le v3, v6, :cond_1

    invoke-virtual {v5, p0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-gt v4, v6, :cond_2

    invoke-virtual {v5, p0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-gt v3, v6, :cond_0

    invoke-virtual {v5, v0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1}, Lmm/purchasesdk/ui/aa;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    const/high16 v1, 0x3f80

    sget v0, Lmm/purchasesdk/l/d;->k:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget v0, Lmm/purchasesdk/ui/aa;->d:F

    :goto_0
    invoke-static {v0, v0, p0}, Lmm/purchasesdk/ui/aa;->a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    sget v0, Lmm/purchasesdk/l/d;->k:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Lmm/purchasesdk/ui/aa;->d:F

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1}, Lmm/purchasesdk/ui/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v1, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReadImageFile"

    const-string v2, "read image fail......."

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lmm/purchasesdk/ui/aa;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "mmiap/image/vertical/logo2.png"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    :goto_1
    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lmm/purchasesdk/ui/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lmm/purchasesdk/ui/aa;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v1, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public static w()V
    .locals 6

    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "UIConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bitmap="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_2
    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static x()V
    .locals 2

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/logo1.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/title1_bg.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/title2_bg.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/button_back.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/icon_success.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/icon_false.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/icon_info.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/logo3.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/infoline.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/logo2.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/icon_chifubao.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/button_back.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/button_back_Press.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/button_finishbilling.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/button_finishbilling_press.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/top_button_back.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/ui/aa;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/top_button_back_press.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
