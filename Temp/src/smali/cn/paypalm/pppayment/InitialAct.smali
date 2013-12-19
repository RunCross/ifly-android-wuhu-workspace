.class public Lcn/paypalm/pppayment/InitialAct;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/ProgressDialog;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcn/paypalm/pppayment/global/a;

.field private g:Lcn/paypalm/pppayment/global/b;

.field private h:Lcn/paypalm/pppayment/global/Tools;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Ljava/util/ArrayList;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->i:Z

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->j:Z

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->k:Z

    const/4 v0, 0x1

    iput v0, p0, Lcn/paypalm/pppayment/InitialAct;->l:I

    new-instance v0, Lcn/paypalm/pppayment/aq;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/aq;-><init>(Lcn/paypalm/pppayment/InitialAct;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->n:Landroid/os/Handler;

    new-instance v0, Lcn/paypalm/pppayment/ap;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/ap;-><init>(Lcn/paypalm/pppayment/InitialAct;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->o:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/io/InputStream;)I
    .locals 13

    const/4 v0, 0x0

    const/16 v1, -0xb

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    const-wide/16 v4, 0x3940

    invoke-virtual {v2, p0, p1, v4, v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/io/InputStream;J)[B

    move-result-object v4

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    const-string v4, "map"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    move v4, v0

    :goto_0
    if-lt v4, v6, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :goto_1
    return v0

    :cond_0
    :try_start_3
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    move v3, v0

    :goto_2
    if-lt v3, v8, :cond_1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-interface {v7, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string v11, "data"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "address"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sput-object v10, Lcn/paypalm/pppayment/global/e;->a:Ljava/lang/String;

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v9, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v9, v10}, Lcn/paypalm/pppayment/global/a;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v2

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move v0, v1

    goto :goto_1

    :cond_4
    :try_start_6
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "merchant_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v9, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v9, v10}, Lcn/paypalm/pppayment/global/a;->h(Ljava/lang/String;)V

    iget-object v9, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v9, v10}, Lcn/paypalm/pppayment/global/a;->j(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move v0, v1

    goto :goto_1

    :cond_5
    :try_start_9
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "submer_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v9, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v9, v10}, Lcn/paypalm/pppayment/global/a;->i(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_6
    :try_start_a
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    move v0, v1

    goto/16 :goto_1

    :cond_6
    :try_start_c
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "system_code"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Lcn/paypalm/pppayment/InitialAct;->l:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    const-string v9, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v9, v10}, Lcn/paypalm/pppayment/global/a;->j(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_7
    :try_start_d
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    move v0, v1

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v2, p1

    :goto_8
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    throw v0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, p1

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v2, p1

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v2, p1

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v2, p1

    goto/16 :goto_5

    :catch_d
    move-exception v0

    goto/16 :goto_4
.end method

.method static synthetic a(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/b;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    return-object v0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v0, Lcn/paypalm/pppayment/e;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/e;-><init>(Lcn/paypalm/pppayment/InitialAct;)V

    invoke-virtual {v0}, Lcn/paypalm/pppayment/e;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Lcn/paypalm/pppayment/ao;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/ao;-><init>(Lcn/paypalm/pppayment/InitialAct;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    new-instance v1, Lcn/paypalm/pppayment/c;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/c;-><init>(Lcn/paypalm/pppayment/InitialAct;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    new-instance v1, Lcn/paypalm/pppayment/d;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/d;-><init>(Lcn/paypalm/pppayment/InitialAct;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    new-instance v0, Lcn/paypalm/pppayment/r;

    invoke-direct {v0, p0, p2}, Lcn/paypalm/pppayment/r;-><init>(Lcn/paypalm/pppayment/InitialAct;I)V

    invoke-virtual {v0}, Lcn/paypalm/pppayment/r;->start()V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/InitialAct;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/InitialAct;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/InitialAct;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/paypalm/pppayment/InitialAct;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/InitialAct;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/paypalm/pppayment/InitialAct;->i:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcn/paypalm/pppayment/g;

    invoke-direct {v0, p0, p1, p2}, Lcn/paypalm/pppayment/g;-><init>(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/paypalm/pppayment/g;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->j()V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcn/paypalm/pppayment/af;

    invoke-direct {v2, p0, p1}, Lcn/paypalm/pppayment/af;-><init>(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p2, p3}, Lcn/paypalm/pppayment/InitialAct;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->o:Landroid/os/Handler;

    new-instance v1, Lcn/paypalm/pppayment/h;

    invoke-direct {v1, p0, p2, p1}, Lcn/paypalm/pppayment/h;-><init>(Lcn/paypalm/pppayment/InitialAct;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->i()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->h()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->k()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/InitialAct;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    const/16 v0, -0xb

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "so/armeabi/paypalm_pp_payment"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v4, "mips"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "so/mips/paypalm_pp_payment"

    :cond_0
    :try_start_0
    const-string v3, "libpaypalm_pp_payment.so"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcn/paypalm/pppayment/InitialAct;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v4, v2}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/paypalm/pppayment/InitialAct;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private c()I
    .locals 10

    const/4 v9, 0x1

    const/4 v0, -0x2

    const/16 v2, -0xa

    const/16 v1, -0xb

    const/4 v3, 0x0

    const-string v4, "app_plugin_PluginSetting"

    invoke-virtual {p0, v4, v3}, Lcn/paypalm/pppayment/InitialAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "version"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v6}, Lcn/paypalm/pppayment/global/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v5, "PluginSn"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    const-string v6, "520004"

    invoke-virtual {v5, v6}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v5, "{\'opcode\':\'%s\',\'version\':\'%s\',\'imei\':\'%s\',\'imsi\':\'%s\',\'devicename\':\'%s\',\'devicetype\':\'%s\',\'merchantid\':\'%s\',\'systemcode\':\'%s\',\'submerid\':\'%s\'}"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v7}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v7}, Lcn/paypalm/pppayment/global/a;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-object v8, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v8}, Lcn/paypalm/pppayment/global/a;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v8}, Lcn/paypalm/pppayment/global/a;->d()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v8}, Lcn/paypalm/pppayment/global/a;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v8}, Lcn/paypalm/pppayment/global/a;->f()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v8}, Lcn/paypalm/pppayment/global/a;->h()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v8}, Lcn/paypalm/pppayment/global/a;->j()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    iget-object v8, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v8}, Lcn/paypalm/pppayment/global/a;->i()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    iget-object v6, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    invoke-virtual {v5, p0, v6}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0

    :cond_3
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v7, "tranresult"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v7, "resultinfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v5}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v5

    const-string v7, "000000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v7, "sn"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcn/paypalm/pppayment/global/b;->d(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v7, "banknolist"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcn/paypalm/pppayment/global/b;->F(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v7, "smsnumlist"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/paypalm/pppayment/global/b;->G(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PluginSn"

    iget-object v6, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v6}, Lcn/paypalm/pppayment/global/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "version"

    iget-object v6, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v6}, Lcn/paypalm/pppayment/global/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v5}, Lcn/paypalm/pppayment/global/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/paypalm/pppayment/global/a;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    const-string v5, "530004"

    invoke-virtual {v4, v5}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v4, "{\'opcode\':\'%s\',\'version\':\'%s\',\'imei\':\'%s\',\'imsi\':\'%s\',\'sn\':\'%s\'}"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v6}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v6}, Lcn/paypalm/pppayment/global/a;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    iget-object v7, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v7}, Lcn/paypalm/pppayment/global/a;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v7}, Lcn/paypalm/pppayment/global/a;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v7}, Lcn/paypalm/pppayment/global/a;->g()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    invoke-virtual {v4, p0, v5}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4, v5}, Lcn/paypalm/pppayment/global/a;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v5, "tranresult"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v5, "resultinfo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "000000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v4, "level"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/paypalm/pppayment/global/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v4, "banknolist"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/paypalm/pppayment/global/b;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v4, "smsnumlist"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/paypalm/pppayment/global/b;->G(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/InitialAct;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcn/paypalm/pppayment/InitialAct;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    return v0
.end method

.method private d()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    const-string v2, "540004"

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v1, "{\'opcode\':\'%s\'}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, -0xa

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "tranresult"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "resultinfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "crl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/b;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0
.end method

.method static synthetic d(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/a;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Lcn/paypalm/pppayment/a/e;

    invoke-direct {v0}, Lcn/paypalm/pppayment/a/e;-><init>()V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/a/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 6

    const/4 v0, -0x7

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    const-string v3, "531004"

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v2, "{\'opcode\':\'%s\',\'systemcode\':\'%s\'}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v5}, Lcn/paypalm/pppayment/global/a;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    iget-object v3, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v4, "tranresult"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v4, "resultinfo"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "000000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v4, "version"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/paypalm/pppayment/global/b;->j(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v4, "versioncode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/paypalm/pppayment/global/b;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v4, "updateurl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/b;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v0, :cond_1

    const/16 v0, 0xa

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "android.content.pm.PackageParser"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/File;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/util/DisplayMetrics;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v4, "parsePackage"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    const/16 v5, 0x40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v4, "collectCertificates"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mSignatures"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcn/paypalm/pppayment/InitialAct;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()I
    .locals 3

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v0, p0}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xc

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/Tools;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    sput-object v0, Lcn/paypalm/pppayment/global/e;->e:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/Tools;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v0, -0xa

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v2, "tranresult"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v2, "resultinfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v2, "alg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/paypalm/pppayment/global/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v2, "hash"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/paypalm/pppayment/global/b;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v2, "zip"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/b;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0
.end method

.method static synthetic f(Lcn/paypalm/pppayment/InitialAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->j()V

    return-void
.end method

.method private g()I
    .locals 6

    const/16 v1, -0xb

    :try_start_0
    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    const-string v2, "pp_payment_res.bin"

    invoke-virtual {v0, p0, v2}, Lcn/paypalm/pppayment/global/Tools;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/io/InputStream;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    const-string v2, "pp_payment_res.bin"

    invoke-virtual {v0, p0, v2}, Lcn/paypalm/pppayment/global/Tools;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v4}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/io/InputStream;J)[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x2800

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/paypalm/pppayment/InitialAct;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->m:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private h()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    sget-object v2, Lcn/paypalm/pppayment/global/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/b;->s(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    const-string v2, "260004"

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v1, "{\'opcode\':\'%s\',\'orderno\':\'%s\'}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/b;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->e:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, -0xa

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "tranresult"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "resultinfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, -0x3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "mername"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->u(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "orderdesc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "trantype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->w(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "payobject"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->x(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "paytime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->E(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "payamt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->t(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "curcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->y(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    const-string v3, "userid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/b;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto/16 :goto_0
.end method

.method static synthetic h(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic i(Lcn/paypalm/pppayment/InitialAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->a()V

    return-void
.end method

.method static synthetic j(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    new-instance v1, Lcn/paypalm/pppayment/f;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/f;-><init>(Lcn/paypalm/pppayment/InitialAct;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method static synthetic k(Lcn/paypalm/pppayment/InitialAct;)I
    .locals 1

    iget v0, p0, Lcn/paypalm/pppayment/InitialAct;->l:I

    return v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    iget-object v2, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0, p0, v1, v2}, Lcn/paypalm/pppayment/global/Tools;->b(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2P3002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->k(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic l(Lcn/paypalm/pppayment/InitialAct;)I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->g()I

    move-result v0

    return v0
.end method

.method private l()V
    .locals 1

    new-instance v0, Lcn/paypalm/pppayment/ac;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/ac;-><init>(Lcn/paypalm/pppayment/InitialAct;)V

    invoke-virtual {v0}, Lcn/paypalm/pppayment/ac;->start()V

    return-void
.end method

.method static synthetic m(Lcn/paypalm/pppayment/InitialAct;)I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->f()I

    move-result v0

    return v0
.end method

.method private m()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcn/paypalm/pppayment/InitialAct;)I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->c()I

    move-result v0

    return v0
.end method

.method static synthetic o(Lcn/paypalm/pppayment/InitialAct;)I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->d()I

    move-result v0

    return v0
.end method

.method static synthetic p(Lcn/paypalm/pppayment/InitialAct;)I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->e()I

    move-result v0

    return v0
.end method

.method static synthetic q(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Lcn/paypalm/pppayment/InitialAct;)I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->i()I

    move-result v0

    return v0
.end method

.method static synthetic s(Lcn/paypalm/pppayment/InitialAct;)I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->h()I

    move-result v0

    return v0
.end method

.method static synthetic t(Lcn/paypalm/pppayment/InitialAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->k()V

    return-void
.end method

.method static synthetic u(Lcn/paypalm/pppayment/InitialAct;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->i:Z

    return v0
.end method

.method static synthetic v(Lcn/paypalm/pppayment/InitialAct;)I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/InitialAct;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "\u65e0\u6cd5\u5b89\u88c5\u65b0\u7248\u672c"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u60a8\u5c06\u4f7f\u7528"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7248\u672c\u7ee7\u7eed\u652f\u4ed8\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u65e0\u6cd5\u5b89\u88c5\u65b0\u7248\u672c"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65b0\u7248\u672c\u5b89\u88c5\u6587\u4ef6\u5f02\u5e38\uff0c\u60a8\u5c06\u4f7f\u7528"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7248\u672c\u7ee7\u7eed\u652f\u4ed8\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u65e0\u6cd5\u5b89\u88c5\u65b0\u7248\u672c"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65b0\u7248\u672c\u5b89\u88c5\u6587\u4ef6\u9519\u8bef\uff0c\u60a8\u5c06\u4f7f\u7528"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7248\u672c\u7ee7\u7eed\u652f\u4ed8\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "isDestroy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->j:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/InitialAct;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    new-instance v0, Lcn/paypalm/pppayment/global/Tools;

    invoke-direct {v0}, Lcn/paypalm/pppayment/global/Tools;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "zsht_bundle_orders"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/paypalm/pppayment/global/e;->b:Ljava/lang/String;

    const-string v1, "zsht_bundle_phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/paypalm/pppayment/global/e;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.paypalm.pp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "sign"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/paypalm/pppayment/InitialAct;->l:I

    :cond_1
    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->j()V

    new-instance v0, Lcn/paypalm/pppayment/global/a;

    invoke-direct {v0}, Lcn/paypalm/pppayment/global/a;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    new-instance v0, Lcn/paypalm/pppayment/global/b;

    invoke-direct {v0}, Lcn/paypalm/pppayment/global/b;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->g:Lcn/paypalm/pppayment/global/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->m:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v1, p0}, Lcn/paypalm/pppayment/global/Tools;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v1, p0}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->f:Lcn/paypalm/pppayment/global/a;

    iget-object v1, p0, Lcn/paypalm/pppayment/InitialAct;->h:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v1, p0}, Lcn/paypalm/pppayment/global/Tools;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->f(Ljava/lang/String;)V

    const-string v0, "zsht_loading_process_dialog_anim"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p0, v0}, Lcn/paypalm/pppayment/InitialAct;->a(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->j:Z

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->l()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x2

    const-string v2, "intent.action.result.success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcn/paypalm/pppayment/InitialAct;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/InitialAct;->finish()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->k:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isLoading"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    :cond_0
    iget-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/InitialAct;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/paypalm/pppayment/InitialAct;->i:Z

    invoke-direct {p0}, Lcn/paypalm/pppayment/InitialAct;->a()V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isDestroy"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    const-string v0, "isLoading"

    iget-boolean v1, p0, Lcn/paypalm/pppayment/InitialAct;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
