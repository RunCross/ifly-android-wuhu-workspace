.class public Lmm/purchasesdk/h/h;
.super Lmm/purchasesdk/h/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmm/purchasesdk/h/f;-><init>()V

    return-void
.end method

.method private getMessage()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lmm/purchasesdk/h/h;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u77ed\u4fe1\u6b63\u5728\u4e0b\u53d1,\u8bf7\u7a0d\u540e\u3002\u3002\u3002"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u8bf7\u786e\u8ba4\u8bbe\u5907\u662f\u5426\u4e3apad\uff0c\u6216\u8005\u60a8\u662f\u5426\u5df2\u7ecf\u542f\u7528\u4e86\u5bc6\u7801"

    goto :goto_0

    :cond_1
    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u672c\u6b21\u7533\u8bf7\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u7533\u8bf7"

    goto :goto_0

    :cond_2
    const-string v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u540e\u53f0\u670d\u52a1\u7e41\u5fd9\u8bf7\u7a0d\u540e\u518d\u8bd5"

    goto :goto_0

    :cond_3
    const-string v1, "13"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u65b0\u7533\u8bf7"

    goto :goto_0
.end method


# virtual methods
.method public a([BLjava/lang/String;)Lmm/purchasesdk/h/h;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    invoke-static {v0}, Lmm/purchasesdk/l/d;->setErrMsg(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_1
    new-instance v0, Lmm/purchasesdk/h/h;

    invoke-direct {v0}, Lmm/purchasesdk/h/h;-><init>()V

    goto :goto_1

    :pswitch_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ReturnCode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/h/h;->C(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmm/purchasesdk/h/h;->C(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmm/purchasesdk/h/h;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "ErrorMsg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/h/h;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmm/purchasesdk/h/h;->setErrMsg(Ljava/lang/String;)V

    invoke-static {v1}, Lmm/purchasesdk/l/d;->setErrMsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public f()I
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lmm/purchasesdk/h/h;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x258

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x259

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x25b

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x25c

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x25d

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
    .end sparse-switch
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lmm/purchasesdk/l/d;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lmm/purchasesdk/h/h;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
