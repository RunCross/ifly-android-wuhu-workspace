.class public Lcom/snda/woa/android/Country;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/android/Country;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/android/Country;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/android/Country;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/android/Country;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/android/Country;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/snda/woa/android/Country;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/snda/woa/android/Country;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/snda/woa/android/Country;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/snda/woa/android/Country;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/snda/woa/android/Country;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBrief()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/android/Country;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/android/Country;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/android/Country;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getEnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/android/Country;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getHotLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/android/Country;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setBrief(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/android/Country;->c:Ljava/lang/String;

    return-void
.end method

.method public setCnName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/android/Country;->b:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/android/Country;->a:Ljava/lang/String;

    return-void
.end method

.method public setEnName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/android/Country;->d:Ljava/lang/String;

    return-void
.end method

.method public setHotLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/android/Country;->e:Ljava/lang/String;

    return-void
.end method
