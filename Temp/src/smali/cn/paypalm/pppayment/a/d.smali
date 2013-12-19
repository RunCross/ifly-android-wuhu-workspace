.class public Lcn/paypalm/pppayment/a/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/Vector;

.field public b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Lcn/paypalm/pppayment/BankcardPayAct;

.field private d:Landroid/widget/GridView;

.field private e:Lcn/paypalm/pppayment/global/Tools;

.field private f:Landroid/widget/TextView;

.field private g:[B

.field private h:Z


# direct methods
.method public constructor <init>(Lcn/paypalm/pppayment/BankcardPayAct;Lcn/paypalm/pppayment/global/Tools;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/paypalm/pppayment/a/d;->h:Z

    new-instance v0, Lcn/paypalm/pppayment/a/b;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/a/b;-><init>(Lcn/paypalm/pppayment/a/d;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/a/d;->b:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcn/paypalm/pppayment/a/d;->c:Lcn/paypalm/pppayment/BankcardPayAct;

    iput-object p2, p0, Lcn/paypalm/pppayment/a/d;->e:Lcn/paypalm/pppayment/global/Tools;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/paypalm/pppayment/a/d;->g:[B

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/a/d;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 13

    const/4 v12, 0x5

    const/4 v4, 0x1

    const/16 v11, 0xa

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v11, [Ljava/lang/String;

    const-string v0, "0"

    aput-object v0, v1, v2

    const-string v0, "1"

    aput-object v0, v1, v4

    const/4 v0, 0x2

    const-string v3, "2"

    aput-object v3, v1, v0

    const/4 v0, 0x3

    const-string v3, "3"

    aput-object v3, v1, v0

    const/4 v0, 0x4

    const-string v3, "4"

    aput-object v3, v1, v0

    const-string v0, "5"

    aput-object v0, v1, v12

    const/4 v0, 0x6

    const-string v3, "6"

    aput-object v3, v1, v0

    const/4 v0, 0x7

    const-string v3, "7"

    aput-object v3, v1, v0

    const/16 v0, 0x8

    const-string v3, "8"

    aput-object v3, v1, v0

    const/16 v0, 0x9

    const-string v3, "9"

    aput-object v3, v1, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    if-lt v0, v11, :cond_0

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    move v5, v2

    :goto_1
    const/16 v0, 0xc

    if-lt v5, v0, :cond_1

    return-object v6

    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-ne v5, v12, :cond_3

    const-string v0, "key"

    const-string v1, "Del"

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_3
    const/16 v0, 0xb

    if-ne v5, v0, :cond_4

    const-string v0, "key"

    const-string v1, "\u5b8c\u6210"

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v3, v2

    :cond_5
    :goto_3
    if-nez v3, :cond_2

    invoke-virtual {v8, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move v1, v2

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "key"

    invoke-interface {v9, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    move v3, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method static synthetic b(Lcn/paypalm/pppayment/a/d;)[B
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->g:[B

    return-object v0
.end method

.method static synthetic c(Lcn/paypalm/pppayment/a/d;)Lcn/paypalm/pppayment/BankcardPayAct;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->c:Lcn/paypalm/pppayment/BankcardPayAct;

    return-object v0
.end method

.method static synthetic d(Lcn/paypalm/pppayment/a/d;)Lcn/paypalm/pppayment/global/Tools;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->e:Lcn/paypalm/pppayment/global/Tools;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcn/paypalm/pppayment/a/d;->h:Z

    if-nez v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/paypalm/pppayment/a/d;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->c:Lcn/paypalm/pppayment/BankcardPayAct;

    iget-object v1, p0, Lcn/paypalm/pppayment/a/d;->c:Lcn/paypalm/pppayment/BankcardPayAct;

    const-string v2, "zsht_gv_keyboard"

    invoke-static {v1, v2, v9}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcn/paypalm/pppayment/a/d;->d:Landroid/widget/GridView;

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->d:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setClickable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/paypalm/pppayment/a/d;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-boolean v9, p0, Lcn/paypalm/pppayment/a/d;->h:Z

    :cond_0
    iget-object v6, p0, Lcn/paypalm/pppayment/a/d;->d:Landroid/widget/GridView;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcn/paypalm/pppayment/a/d;->c:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-direct {p0}, Lcn/paypalm/pppayment/a/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/a/d;->c:Lcn/paypalm/pppayment/BankcardPayAct;

    const-string v4, "zsht_griditems"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "key"

    aput-object v5, v4, v10

    new-array v5, v9, [I

    iget-object v7, p0, Lcn/paypalm/pppayment/a/d;->c:Lcn/paypalm/pppayment/BankcardPayAct;

    const-string v8, "zsht_bt_item"

    invoke-static {v7, v8, v9}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    aput v7, v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public a()[B
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v4, v3, [B

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-object v4

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v0, p0, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    invoke-static {v5, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
