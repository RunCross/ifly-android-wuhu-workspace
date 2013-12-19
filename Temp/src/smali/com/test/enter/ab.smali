.class final Lcom/test/enter/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/enter/SignupActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/SignupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/ab;->a:Lcom/test/enter/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/test/enter/ab;->a:Lcom/test/enter/SignupActivity;

    iget-object v1, p0, Lcom/test/enter/ab;->a:Lcom/test/enter/SignupActivity;

    iget-object v1, v1, Lcom/test/enter/SignupActivity;->o:Landroid/widget/RelativeLayout;

    const-string v2, "http://ma.webpatch.sdg-china.com/MA/PROD/html/privacy_policy.html"

    invoke-static {v0, v1, v2}, Lcom/test/enter/EnterDef;->ShowWebview(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;)V

    return-void
.end method
