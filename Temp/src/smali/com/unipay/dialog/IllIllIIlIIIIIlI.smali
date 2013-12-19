.class Lcom/unipay/dialog/IllIllIIlIIIIIlI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/lIlllIIIIIIIlIll;

.field final synthetic _$2:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/lIlllIIIIIIIlIll;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IllIllIIlIIIIIlI;->_$1:Lcom/unipay/dialog/lIlllIIIIIIIlIll;

    iput-object p2, p0, Lcom/unipay/dialog/IllIllIIlIIIIIlI;->_$2:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/IllIllIIlIIIIIlI;->_$2:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
