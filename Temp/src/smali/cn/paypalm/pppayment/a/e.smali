.class public Lcn/paypalm/pppayment/a/e;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Ljava/util/ArrayList;

.field private c:Lcn/paypalm/pppayment/global/ResponseData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/a/e;->a:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/a/e;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/a/e;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public characters([CII)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/a/e;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/a/e;->c:Lcn/paypalm/pppayment/global/ResponseData;

    iput-object v1, v0, Lcn/paypalm/pppayment/global/ResponseData;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/a/e;->c:Lcn/paypalm/pppayment/global/ResponseData;

    iput-object v1, v0, Lcn/paypalm/pppayment/global/ResponseData;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "handler"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/a/e;->c:Lcn/paypalm/pppayment/global/ResponseData;

    iput-object v1, v0, Lcn/paypalm/pppayment/global/ResponseData;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/a/e;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/a/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/paypalm/pppayment/a/e;->c:Lcn/paypalm/pppayment/global/ResponseData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/paypalm/pppayment/global/ResponseData;

    invoke-direct {v0}, Lcn/paypalm/pppayment/global/ResponseData;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/a/e;->c:Lcn/paypalm/pppayment/global/ResponseData;

    const-string v0, "code"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/a/e;->c:Lcn/paypalm/pppayment/global/ResponseData;

    iput-object v0, v1, Lcn/paypalm/pppayment/global/ResponseData;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/a/e;->a:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
