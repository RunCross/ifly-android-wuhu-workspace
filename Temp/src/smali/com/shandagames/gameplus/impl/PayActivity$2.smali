.class Lcom/shandagames/gameplus/impl/PayActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/impl/PayActivity;

.field private final synthetic val$mJs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/impl/PayActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PayActivity$2;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    iput-object p2, p0, Lcom/shandagames/gameplus/impl/PayActivity$2;->val$mJs:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$2;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->access$6(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PayActivity$2;->val$mJs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
