.class public Lcom/snda/woa/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snda/woa/android/callback/PwdLoginCallBack;


# instance fields
.field private a:Lcom/snda/woa/android/callback/AutoLoginCallBack;


# direct methods
.method public constructor <init>(Lcom/snda/woa/android/callback/AutoLoginCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snda/woa/aa;->a:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    return-void
.end method


# virtual methods
.method public callBack(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/aa;->a:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/snda/woa/android/callback/AutoLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eCardCallBack(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const v3, -0xa4cf6a

    const-string v0, "E"

    const-string v1, "pwd\u81ea\u52a8\u767b\u5f55\u4e0d\u9700\u8981ecard"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/snda/woa/aa;->a:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    invoke-static {v3}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/snda/woa/android/callback/AutoLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eKeyCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const v3, -0xa4cf6a

    const-string v0, "E"

    const-string v1, "pwd\u81ea\u52a8\u767b\u5f55\u4e0d\u9700\u8981ekey"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/snda/woa/aa;->a:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    invoke-static {v3}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/snda/woa/android/callback/AutoLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyCodeCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const v3, -0xa4cf6a

    const-string v0, "E"

    const-string v1, "pwd\u81ea\u52a8\u767b\u5f55\u4e0d\u9700\u8981verifycode"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/snda/woa/aa;->a:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    invoke-static {v3}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/snda/woa/android/callback/AutoLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
