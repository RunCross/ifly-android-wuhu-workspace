.class public Lcom/shandagames/gameplus/model/GuestUser;
.super Ljava/lang/Object;


# instance fields
.field private guestid:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/GuestUser;->guestid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/GuestUser;->sid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/GuestUser;->username:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGuestid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/GuestUser;->guestid:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/GuestUser;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/GuestUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setGuestid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/GuestUser;->guestid:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/GuestUser;->sid:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/GuestUser;->username:Ljava/lang/String;

    return-void
.end method
