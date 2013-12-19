.class public Lcom/test/WechatHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public SendShareImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    iput-object p5, v0, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    iput-object p2, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    iput-object p3, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0x96

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    new-instance v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    const-string v2, "webpage"

    invoke-static {v2}, Lcom/test/WechatHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    iput p4, v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    iget-object v1, p0, Lcom/test/WechatHelper;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SendText(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    iput-object p3, v0, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXTextObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/WXTextObject;-><init>()V

    iput-object p1, v1, Lcom/tencent/mm/sdk/openapi/WXTextObject;->text:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v2, v0}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    iput-object v1, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    new-instance v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    const-string v1, "webpage"

    invoke-static {v1}, Lcom/test/WechatHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    iput p2, v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    iget-object v1, p0, Lcom/test/WechatHelper;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "wx8a28ca23e5dfbad9"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/test/WechatHelper;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/test/WechatHelper;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wx8a28ca23e5dfbad9"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    return-void
.end method
