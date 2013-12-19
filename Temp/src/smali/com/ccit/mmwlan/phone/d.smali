.class public final Lcom/ccit/mmwlan/phone/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/ccit/mmwlan/phone/a;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/d;->a:Lcom/ccit/mmwlan/phone/a;

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/d;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/ccit/mmwlan/phone/a;

    invoke-direct {v1}, Lcom/ccit/mmwlan/phone/a;-><init>()V

    iput-object v1, p0, Lcom/ccit/mmwlan/phone/d;->a:Lcom/ccit/mmwlan/phone/a;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/d;->a:Lcom/ccit/mmwlan/phone/a;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, p0, Lcom/ccit/mmwlan/phone/d;->a:Lcom/ccit/mmwlan/phone/a;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/phone/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/d;->b:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/d;->b:Ljava/util/ArrayList;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
