.class public Lcom/shandagames/gameplus/model/GamePushDomain;
.super Ljava/lang/Object;


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/model/GamePushDomain;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/GamePushDomain;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/GamePushDomain;->url:Ljava/lang/String;

    return-void
.end method
