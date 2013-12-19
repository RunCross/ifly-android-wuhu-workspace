.class final Lcom/test/enter/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/enter/ModeSelectActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/ModeSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/n;->a:Lcom/test/enter/ModeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/test/enter/EnterDef;->MODE_SIGNUP:I

    sput v0, Lcom/test/enter/EnterDef;->CurrentMode_:I

    iget-object v0, p0, Lcom/test/enter/n;->a:Lcom/test/enter/ModeSelectActivity;

    invoke-virtual {v0}, Lcom/test/enter/ModeSelectActivity;->GoWorldSelectPage()V

    return-void
.end method
