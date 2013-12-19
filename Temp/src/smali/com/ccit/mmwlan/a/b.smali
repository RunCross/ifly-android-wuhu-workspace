.class public final Lcom/ccit/mmwlan/a/b;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Lcom/ccit/mmwlan/vo/b;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/lang/StringBuilder;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/a/b;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ccit/mmwlan/a/b;->c:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ccit/mmwlan/a/b;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ccit/mmwlan/a/b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lcom/ccit/mmwlan/a/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ccit/mmwlan/a/b;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/ccit/mmwlan/a/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    return-void
.end method

.method public final endDocument()V
    .locals 0

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/ccit/mmwlan/a/b;->d:Z

    iget-object v0, p0, Lcom/ccit/mmwlan/a/b;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ccit/mmwlan/a/b;->a:Lcom/ccit/mmwlan/vo/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "result"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ccit/mmwlan/a/b;->a:Lcom/ccit/mmwlan/vo/b;

    iget-object v1, p0, Lcom/ccit/mmwlan/a/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ccit/mmwlan/a/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    const-string v0, "errormsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ccit/mmwlan/a/b;->a:Lcom/ccit/mmwlan/vo/b;

    iget-object v1, p0, Lcom/ccit/mmwlan/a/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ccit/mmwlan/a/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method public final startDocument()V
    .locals 1

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/a/b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/a/b;->c:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "response"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ccit/mmwlan/a/b;->d:Z

    new-instance v0, Lcom/ccit/mmwlan/vo/b;

    invoke-direct {v0}, Lcom/ccit/mmwlan/vo/b;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/a/b;->a:Lcom/ccit/mmwlan/vo/b;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
