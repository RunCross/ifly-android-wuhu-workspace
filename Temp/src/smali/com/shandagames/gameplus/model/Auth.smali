.class public Lcom/shandagames/gameplus/model/Auth;
.super Ljava/lang/Object;


# instance fields
.field private isband:Ljava/lang/String;

.field private loginname:Ljava/lang/String;

.field private lwid:Ljava/lang/String;

.field private lwusername:Ljava/lang/String;

.field private ptaccount:Ljava/lang/String;

.field private resultcode:I

.field private sid:Ljava/lang/String;

.field private startguide:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private ucid:Ljava/lang/String;

.field private ucnickname:Ljava/lang/String;

.field private userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->userid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->sid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->isband:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->ptaccount:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->loginname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->startguide:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->ucid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->ucnickname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->lwid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->lwusername:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIsband()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->isband:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->loginname:Ljava/lang/String;

    return-object v0
.end method

.method public getLwid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->lwid:Ljava/lang/String;

    return-object v0
.end method

.method public getLwusername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->lwusername:Ljava/lang/String;

    return-object v0
.end method

.method public getPtaccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->ptaccount:Ljava/lang/String;

    return-object v0
.end method

.method public getResultcode()I
    .locals 1

    iget v0, p0, Lcom/shandagames/gameplus/model/Auth;->resultcode:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getStartguide()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->startguide:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUcid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->ucid:Ljava/lang/String;

    return-object v0
.end method

.method public getUcnickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->ucnickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/Auth;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public setIsband(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->isband:Ljava/lang/String;

    return-void
.end method

.method public setLoginname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->loginname:Ljava/lang/String;

    return-void
.end method

.method public setLwid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->lwid:Ljava/lang/String;

    return-void
.end method

.method public setLwusername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->lwusername:Ljava/lang/String;

    return-void
.end method

.method public setPtaccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->ptaccount:Ljava/lang/String;

    return-void
.end method

.method public setResultcode(I)V
    .locals 0

    iput p1, p0, Lcom/shandagames/gameplus/model/Auth;->resultcode:I

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->sid:Ljava/lang/String;

    return-void
.end method

.method public setStartguide(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->startguide:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->token:Ljava/lang/String;

    return-void
.end method

.method public setUcid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->ucid:Ljava/lang/String;

    return-void
.end method

.method public setUcnickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->ucnickname:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/Auth;->userid:Ljava/lang/String;

    return-void
.end method
