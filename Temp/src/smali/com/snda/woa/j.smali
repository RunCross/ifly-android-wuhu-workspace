.class Lcom/snda/woa/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snda/woa/bf;


# direct methods
.method constructor <init>(Lcom/snda/woa/bf;I)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/j;->b:Lcom/snda/woa/bf;

    iput p2, p0, Lcom/snda/woa/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/snda/woa/j;->b:Lcom/snda/woa/bf;

    invoke-static {v0}, Lcom/snda/woa/bf;->c(Lcom/snda/woa/bf;)Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

    move-result-object v0

    iget v1, p0, Lcom/snda/woa/j;->a:I

    iget v2, p0, Lcom/snda/woa/j;->a:I

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snda/woa/j;->b:Lcom/snda/woa/bf;

    invoke-static {v3}, Lcom/snda/woa/bf;->a(Lcom/snda/woa/bf;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snda/woa/j;->b:Lcom/snda/woa/bf;

    invoke-static {v4}, Lcom/snda/woa/bf;->b(Lcom/snda/woa/bf;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
