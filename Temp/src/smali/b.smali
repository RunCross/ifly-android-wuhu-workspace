.class public Lb;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field private b:La;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lb;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb;->b:La;

    iput-object v0, p0, Lb;->c:Landroid/content/Context;

    iput-object p1, p0, Lb;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()B
    .locals 5

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Ld;

    invoke-direct {v3}, Ld;-><init>()V

    iput-object v3, p0, Lb;->b:La;

    iget-object v3, p0, Lb;->b:La;

    iget-object v4, p0, Lb;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, La;->a(Landroid/content/Context;)I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v3, Le;

    invoke-direct {v3}, Le;-><init>()V

    iput-object v3, p0, Lb;->b:La;

    iget-object v3, p0, Lb;->b:La;

    iget-object v4, p0, Lb;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, La;->a(Landroid/content/Context;)I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v3, Lc;

    invoke-direct {v3}, Lc;-><init>()V

    iput-object v3, p0, Lb;->b:La;

    iget-object v3, p0, Lb;->b:La;

    iget-object v4, p0, Lb;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, La;->a(Landroid/content/Context;)I

    move-result v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    if-ne v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    new-instance v3, Lf;

    invoke-direct {v3}, Lf;-><init>()V

    iput-object v3, p0, Lb;->b:La;

    iget-object v3, p0, Lb;->b:La;

    iget-object v4, p0, Lb;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, La;->a(Landroid/content/Context;)I

    move-result v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    if-ne v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public a(B)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "default"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "MTK"

    goto :goto_0

    :pswitch_1
    const-string v0, "qrd_8225"

    goto :goto_0

    :pswitch_2
    const-string v0, "HTC_T328"

    goto :goto_0

    :pswitch_3
    const-string v0, "sumsang_note"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
