.class public Lcom/baidu/game/model/ServerInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4e6e14e918466c73L


# instance fields
.field private H:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "N"

    iput-object v0, p0, Lcom/baidu/game/model/ServerInfo;->N:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRecommend()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/model/ServerInfo;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/model/ServerInfo;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/model/ServerInfo;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/game/model/ServerInfo;->status:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/model/ServerInfo;->O:Ljava/lang/String;

    return-object v0
.end method

.method public setRecommend(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/model/ServerInfo;->N:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/model/ServerInfo;->H:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/model/ServerInfo;->M:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/game/model/ServerInfo;->status:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/model/ServerInfo;->O:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget v1, p0, Lcom/baidu/game/model/ServerInfo;->status:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/game/model/ServerInfo;->M:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "[\ufffd\ufffd]"

    goto :goto_0

    :sswitch_1
    const-string v0, "[\ufffd\u01bc\ufffd]"

    goto :goto_0

    :sswitch_2
    const-string v0, "[\ufffd\ufffd]"

    goto :goto_0

    :sswitch_3
    const-string v0, "[\u03ac\ufffd\ufffd]"

    goto :goto_0

    :sswitch_4
    const-string v0, "[\u0363\u05b9]"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method
