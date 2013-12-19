.class public Lcom/unipay/net/AsyncMultimode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/net/AsyncMultimode$RequestListener;
    }
.end annotation


# instance fields
.field private _$1:Lcom/unipay/net/HttpNet;


# direct methods
.method public constructor <init>(Lcom/unipay/net/HttpNet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unipay/net/AsyncMultimode;->_$1:Lcom/unipay/net/HttpNet;

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/net/AsyncMultimode;)Lcom/unipay/net/HttpNet;
    .locals 1

    iget-object v0, p0, Lcom/unipay/net/AsyncMultimode;->_$1:Lcom/unipay/net/HttpNet;

    return-object v0
.end method


# virtual methods
.method public request(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V
    .locals 6

    new-instance v0, Lcom/unipay/net/IIlIllllIIIllllI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/unipay/net/IIlIllllIIIllllI;-><init>(Lcom/unipay/net/AsyncMultimode;Ljava/lang/String;Lcom/unipay/net/Parameters;Ljava/lang/String;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    invoke-virtual {v0}, Lcom/unipay/net/IIlIllllIIIllllI;->start()V

    return-void
.end method

.method public requestWithHead(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V
    .locals 6

    new-instance v0, Lcom/unipay/net/llIlllllIIIllllI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/unipay/net/llIlllllIIIllllI;-><init>(Lcom/unipay/net/AsyncMultimode;Ljava/lang/String;Lcom/unipay/net/Parameters;Ljava/lang/String;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    invoke-virtual {v0}, Lcom/unipay/net/llIlllllIIIllllI;->start()V

    return-void
.end method
