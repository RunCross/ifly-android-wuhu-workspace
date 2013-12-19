.class Lcn/paypalm/pppayment/ac;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/InitialAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/InitialAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/ac;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcn/paypalm/pppayment/global/e;->e:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/paypalm/pppayment/global/e;->e:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcn/paypalm/pppayment/global/e;->e:Lorg/apache/http/client/HttpClient;

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/ac;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/InitialAct;->finish()V

    return-void
.end method
