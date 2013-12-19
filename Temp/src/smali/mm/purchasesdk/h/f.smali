.class public Lmm/purchasesdk/h/f;
.super Ljava/lang/Object;


# instance fields
.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/h/f;->ak:Ljava/lang/String;

    iput-object v0, p0, Lmm/purchasesdk/h/f;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/h/f;->ak:Ljava/lang/String;

    return-void
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/h/f;->al:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/h/f;->x:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/h/f;->x:Ljava/lang/String;

    return-void
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/h/f;->al:Ljava/lang/String;

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/h/f;->ak:Ljava/lang/String;

    return-object v0
.end method
