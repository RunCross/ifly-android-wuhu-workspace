.class public Lcom/shandagames/gameplus/api/impl/network/GLRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final GET:Ljava/lang/String; = "get"

.field public static final POST:Ljava/lang/String; = "post"


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private formparams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "get"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "get"

    iput-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->method:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->formparams:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->attachments:Ljava/util/List;

    iput-object p1, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->method:Ljava/lang/String;

    iput-object p3, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->formparams:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "get"

    iput-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->method:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->formparams:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->attachments:Ljava/util/List;

    iput-object p1, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->method:Ljava/lang/String;

    iput-object p3, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->formparams:Ljava/util/List;

    iput-object p4, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->attachments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onSuccess(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    return-void
.end method

.method public run()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->method:Ljava/lang/String;

    const-string v2, "get"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/shandagames/gameplus/network/HttpConnecter;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "response data is null."

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->exception(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->onFailure(Ljava/util/Map;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->method:Ljava/lang/String;

    const-string v2, "post"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->formparams:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/shandagames/gameplus/network/HttpConnecter;->post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->formparams:Ljava/util/List;

    iget-object v3, p0, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->attachments:Ljava/util/List;

    invoke-static {v0, v2, v3}, Lcom/shandagames/gameplus/network/HttpConnecter;->post(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/shandagames/gameplus/log/LogDebugger;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->onFailure(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/shandagames/gameplus/util/JsonUtils;->bindDataToModel(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->onFailure(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const-string v0, "code"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->onSuccess(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->onFailure(Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    const-string v0, "response data is not json format."

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->exception(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;->onFailure(Ljava/util/Map;)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method
