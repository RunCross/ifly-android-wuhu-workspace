.class public Lmm/purchasesdk/j/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field a:Ljava/util/List;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/j/a;->a:Ljava/util/List;

    iput-object p1, p0, Lmm/purchasesdk/j/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lmm/purchasesdk/j/a;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "person"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "body"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "type"

    aput-object v1, v2, v0

    iget-object v0, p0, Lmm/purchasesdk/j/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lmm/purchasesdk/j/a;->uri:Landroid/net/Uri;

    const-string v5, "date desc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "person"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "address"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "body"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "date"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lmm/purchasesdk/j/b;

    invoke-direct {v6}, Lmm/purchasesdk/j/b;-><init>()V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmm/purchasesdk/j/b;->setName(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmm/purchasesdk/j/b;->G(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmm/purchasesdk/j/b;->F(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmm/purchasesdk/j/b;->E(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmm/purchasesdk/j/b;->H(Ljava/lang/String;)V

    iget-object v7, p0, Lmm/purchasesdk/j/a;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/j/a;->a:Ljava/util/List;

    return-object v0
.end method
