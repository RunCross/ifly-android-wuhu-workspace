.class public Lcom/snda/woa/bt;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snda/woa/bt;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    iput v0, p0, Lcom/snda/woa/bt;->b:I

    return-void
.end method

.method static synthetic a(Lcom/snda/woa/bt;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/bt;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget v0, p0, Lcom/snda/woa/bt;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snda/woa/bt;->b:I

    return-void
.end method

.method private b()V
    .locals 1

    iget v0, p0, Lcom/snda/woa/bt;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snda/woa/bt;->b:I

    return-void
.end method

.method static synthetic b(Lcom/snda/woa/bt;)V
    .locals 0

    invoke-direct {p0}, Lcom/snda/woa/bt;->a()V

    return-void
.end method

.method static synthetic c(Lcom/snda/woa/bt;)I
    .locals 1

    iget v0, p0, Lcom/snda/woa/bt;->b:I

    return v0
.end method

.method static synthetic d(Lcom/snda/woa/bt;)V
    .locals 0

    invoke-direct {p0}, Lcom/snda/woa/bt;->b()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snda/woa/bt;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snda/woa/bt;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
