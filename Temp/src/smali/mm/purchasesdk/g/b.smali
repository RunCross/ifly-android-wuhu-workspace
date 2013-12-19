.class public Lmm/purchasesdk/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Lmm/purchasesdk/g/c;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected a:Landroid/database/sqlite/SQLiteDatabase;

.field protected a:Lmm/purchasesdk/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/g/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/g/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lmm/purchasesdk/h/f;)Ljava/lang/String;
    .locals 5

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lmm/purchasesdk/g/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "orderId"

    invoke-virtual {p0, v0}, Lmm/purchasesdk/g/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmm/purchasesdk/g/b;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " orderID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {}, Lmm/purchasesdk/e/b;->a()Lmm/purchasesdk/e/a;

    move-result-object v2

    iget-object v2, v2, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v2, v2, Lmm/purchasesdk/e/a$a;->ab:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lmm/purchasesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lmm/purchasesdk/g/a;

    invoke-direct {v0, p1}, Lmm/purchasesdk/g/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/g/b;->a:Lmm/purchasesdk/g/a;

    iget-object v0, p0, Lmm/purchasesdk/g/b;->a:Lmm/purchasesdk/g/a;

    invoke-virtual {v0}, Lmm/purchasesdk/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->open()V

    iget-object v0, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "auth"

    const-string v2, "appID = ? and paycode = ? and imsi = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "imsi"

    invoke-virtual {v0, v1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "paycode"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notBefore"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "notAfter"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "orderId"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->open()V

    iget-object v1, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "auth"

    const-string v3, "appID = ? and paycode = ? and imsi = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p9, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "auth"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    return-void
.end method

.method public a(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Z
    .locals 3

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lmm/purchasesdk/g/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "orderId"

    invoke-virtual {p0, v1}, Lmm/purchasesdk/g/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/e/b;->a()Lmm/purchasesdk/e/a;

    move-result-object v2

    iget-object v2, v2, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v2, v2, Lmm/purchasesdk/e/a$a;->ab:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lmm/purchasesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    const/16 v2, 0x68

    if-ne v0, v2, :cond_0

    invoke-virtual {p2, v1}, Lmm/purchasesdk/h/f;->p(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lmm/purchasesdk/g/b;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from auth"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "imsi"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apksignature"

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->open()V

    iget-object v1, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "copyright"

    const-string v3, "appID = ? and imsi = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "copyright"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->open()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "auth"

    new-array v2, v9, [Ljava/lang/String;

    aput-object p1, v2, v8

    const-string v3, "appid=? and paycode=? and imsi=? and notAfter>?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    const/4 v7, 0x2

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x3

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    goto :goto_0
.end method

.method protected close()V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/g/b;->a:Lmm/purchasesdk/g/a;

    invoke-virtual {v0}, Lmm/purchasesdk/g/a;->close()V

    return-void
.end method

.method public n()V
    .locals 2

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->open()V

    iget-object v0, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from copyright"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    return-void
.end method

.method protected open()V
    .locals 2

    new-instance v0, Lmm/purchasesdk/g/a;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmm/purchasesdk/g/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/g/b;->a:Lmm/purchasesdk/g/a;

    iget-object v0, p0, Lmm/purchasesdk/g/b;->a:Lmm/purchasesdk/g/a;

    invoke-virtual {v0}, Lmm/purchasesdk/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->open()V

    iget-object v0, p0, Lmm/purchasesdk/g/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "copyright"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "content"

    aput-object v3, v2, v7

    const-string v3, "apksignature"

    aput-object v3, v2, v8

    const-string v3, "appid=? and imsi=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    :goto_0
    return-object v5

    :cond_0
    const-string v1, "apksignature"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmm/purchasesdk/g/b;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "database signature="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lmm/purchasesdk/fingerprint/IdentifyApp;->checkSignature(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmm/purchasesdk/g/b;->TAG:Ljava/lang/String;

    const-string v2, "signature is error!"

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->n()V

    goto :goto_0

    :cond_1
    const-string v1, "content"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lmm/purchasesdk/g/b;->close()V

    goto :goto_0
.end method
