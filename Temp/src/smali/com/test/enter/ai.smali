.class final Lcom/test/enter/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/test/enter/WorldSelectActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/WorldSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/ai;->a:Lcom/test/enter/WorldSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    long-to-int v0, p4

    sput v0, Lcom/test/enter/EnterDef;->CurrentWorld_:I

    iget-object v0, p0, Lcom/test/enter/ai;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v0, v0, Lcom/test/enter/WorldSelectActivity;->c:Ljava/util/ArrayList;

    sget v1, Lcom/test/enter/EnterDef;->CurrentWorld_:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/enter/ad;

    iget v0, v0, Lcom/test/enter/ad;->f:I

    sput v0, Lcom/test/enter/EnterDef;->SelectWorld_:I

    iget-object v0, p0, Lcom/test/enter/ai;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v0, v0, Lcom/test/enter/WorldSelectActivity;->c:Ljava/util/ArrayList;

    sget v1, Lcom/test/enter/EnterDef;->CurrentWorld_:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/enter/ad;

    iget-object v0, v0, Lcom/test/enter/ad;->g:Ljava/lang/String;

    sput-object v0, Lcom/test/enter/EnterDef;->SelectUrlRoot_:Ljava/lang/String;

    iget-object v0, p0, Lcom/test/enter/ai;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v0, v0, Lcom/test/enter/WorldSelectActivity;->c:Ljava/util/ArrayList;

    sget v1, Lcom/test/enter/EnterDef;->CurrentWorld_:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/enter/ad;

    iget-object v0, v0, Lcom/test/enter/ad;->h:Ljava/lang/String;

    sput-object v0, Lcom/test/enter/EnterDef;->SelectUrlTop_:Ljava/lang/String;

    iget-object v0, p0, Lcom/test/enter/ai;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v0, v0, Lcom/test/enter/WorldSelectActivity;->c:Ljava/util/ArrayList;

    sget v1, Lcom/test/enter/EnterDef;->CurrentWorld_:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/enter/ad;

    iget-object v0, v0, Lcom/test/enter/ad;->i:Ljava/lang/String;

    sput-object v0, Lcom/test/enter/EnterDef;->SelectUrlBilling_:Ljava/lang/String;

    iget-object v0, p0, Lcom/test/enter/ai;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v0, v0, Lcom/test/enter/WorldSelectActivity;->c:Ljava/util/ArrayList;

    sget v1, Lcom/test/enter/EnterDef;->CurrentWorld_:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/enter/ad;

    iget v0, v0, Lcom/test/enter/ad;->j:I

    sput v0, Lcom/test/enter/EnterDef;->OpenBilling_:I

    iget-object v1, p0, Lcom/test/enter/ai;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v0, p0, Lcom/test/enter/ai;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v0, v0, Lcom/test/enter/WorldSelectActivity;->c:Ljava/util/ArrayList;

    sget v2, Lcom/test/enter/EnterDef;->CurrentWorld_:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/enter/ad;

    iget v0, v0, Lcom/test/enter/ad;->c:I

    invoke-virtual {v1, v0}, Lcom/test/enter/WorldSelectActivity;->Next(I)V

    return-void
.end method
