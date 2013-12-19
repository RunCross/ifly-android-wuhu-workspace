.class public Lmm/purchasesdk/ui/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v4, [I

    aput p0, v2, v3

    aput p0, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const v1, -0x49494a

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    int-to-float v2, p1

    aput v2, v1, v3

    int-to-float v2, p1

    aput v2, v1, v5

    int-to-float v2, p1

    aput v2, v1, v4

    const/4 v2, 0x3

    int-to-float v3, p1

    aput v3, v1, v2

    const/4 v2, 0x4

    int-to-float v3, p2

    aput v3, v1, v2

    const/4 v2, 0x5

    int-to-float v3, p2

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, p2

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v3, p2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0
.end method
