.class Lcom/snda/woa/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/snda/woa/cl;


# direct methods
.method constructor <init>(Lcom/snda/woa/cl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/ch;->d:Lcom/snda/woa/cl;

    iput p2, p0, Lcom/snda/woa/ch;->a:I

    iput-object p3, p0, Lcom/snda/woa/ch;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/snda/woa/ch;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/snda/woa/ch;->d:Lcom/snda/woa/cl;

    invoke-static {v0}, Lcom/snda/woa/cl;->a(Lcom/snda/woa/cl;)Lcom/snda/woa/android/callback/MobileLoginCallBack;

    move-result-object v0

    iget v1, p0, Lcom/snda/woa/ch;->a:I

    iget-object v2, p0, Lcom/snda/woa/ch;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/snda/woa/ch;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/snda/woa/android/callback/MobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
