.class Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;

.field private final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$2;->this$1:Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
