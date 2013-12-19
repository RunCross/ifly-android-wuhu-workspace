.class public Lcom/shandagames/gameplus/model/LastMessageModel;
.super Ljava/lang/Object;


# instance fields
.field private _c:Ljava/lang/String;

.field private _t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get_c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/LastMessageModel;->_c:Ljava/lang/String;

    return-object v0
.end method

.method public get_t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/model/LastMessageModel;->_t:Ljava/lang/String;

    return-object v0
.end method

.method public set_c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/LastMessageModel;->_c:Ljava/lang/String;

    return-void
.end method

.method public set_t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/model/LastMessageModel;->_t:Ljava/lang/String;

    return-void
.end method
