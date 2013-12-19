.class Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/errormsg/SqliteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteHelper"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/errormsg/SqliteUtils;


# direct methods
.method public constructor <init>(Lcom/unipay/errormsg/SqliteUtils;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->_$1:Lcom/unipay/errormsg/SqliteUtils;

    invoke-static {p1}, Lcom/unipay/errormsg/SqliteUtils;->_$2(Lcom/unipay/errormsg/SqliteUtils;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Lcom/unipay/errormsg/SqliteUtils;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->_$1:Lcom/unipay/errormsg/SqliteUtils;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->_$1:Lcom/unipay/errormsg/SqliteUtils;

    invoke-static {v1}, Lcom/unipay/errormsg/SqliteUtils;->_$1(Lcom/unipay/errormsg/SqliteUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->_$1:Lcom/unipay/errormsg/SqliteUtils;

    iget-object v1, v1, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->_$1:Lcom/unipay/errormsg/SqliteUtils;

    iget-object v1, v1, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_MSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->_$1:Lcom/unipay/errormsg/SqliteUtils;

    iget-object v1, v1, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_NOTICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->_$1:Lcom/unipay/errormsg/SqliteUtils;

    iget-object v1, v1, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_ADV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXITS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->_$1:Lcom/unipay/errormsg/SqliteUtils;

    invoke-static {v1}, Lcom/unipay/errormsg/SqliteUtils;->_$1(Lcom/unipay/errormsg/SqliteUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
