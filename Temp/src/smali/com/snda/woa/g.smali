.class Lcom/snda/woa/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/snda/woa/bf;


# direct methods
.method constructor <init>(Lcom/snda/woa/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/g;->a:Lcom/snda/woa/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const v4, -0xa4cf7b

    iget-object v0, p0, Lcom/snda/woa/g;->a:Lcom/snda/woa/bf;

    invoke-static {v0}, Lcom/snda/woa/bf;->c(Lcom/snda/woa/bf;)Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

    move-result-object v0

    invoke-static {v4}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/woa/g;->a:Lcom/snda/woa/bf;

    invoke-static {v2}, Lcom/snda/woa/bf;->a(Lcom/snda/woa/bf;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snda/woa/g;->a:Lcom/snda/woa/bf;

    invoke-static {v3}, Lcom/snda/woa/bf;->b(Lcom/snda/woa/bf;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
