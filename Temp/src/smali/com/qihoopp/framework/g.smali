.class final Lcom/qihoopp/framework/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/qihoopp/framework/e;

.field final synthetic b:Lcom/qihoopp/framework/f;


# direct methods
.method constructor <init>(Lcom/qihoopp/framework/f;Lcom/qihoopp/framework/e;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/framework/g;->b:Lcom/qihoopp/framework/f;

    iput-object p2, p0, Lcom/qihoopp/framework/g;->a:Lcom/qihoopp/framework/e;

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
