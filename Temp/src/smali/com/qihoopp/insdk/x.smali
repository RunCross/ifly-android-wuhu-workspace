.class final Lcom/qihoopp/insdk/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/qihoopp/insdk/v;

.field final synthetic b:Lcom/qihoopp/insdk/w;


# direct methods
.method constructor <init>(Lcom/qihoopp/insdk/w;Lcom/qihoopp/insdk/v;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/insdk/x;->b:Lcom/qihoopp/insdk/w;

    iput-object p2, p0, Lcom/qihoopp/insdk/x;->a:Lcom/qihoopp/insdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
