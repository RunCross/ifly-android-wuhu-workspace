.class public Lcom/unionpay/upomp/bypay/util/UPOMP;
.super Ljava/lang/Object;


# static fields
.field public static payResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/util/UPOMP;->payResult:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPayResult()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->F:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static init()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->b:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Z

    sput-boolean v3, Lcom/unionpay/upomp/bypay/other/aC;->b:Z

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->c:Z

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->a:I

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->d:Z

    sput v4, Lcom/unionpay/upomp/bypay/other/aC;->b:I

    sput v4, Lcom/unionpay/upomp/bypay/other/aC;->c:I

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->d:Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/widget/EditText;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->e:Z

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/widget/Button;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->e:Ljava/lang/String;

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->d:I

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->h:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->f:Z

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->g:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->i:Ljava/lang/String;

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->e:I

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->j:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/k;

    invoke-direct {v0}, Lcom/unionpay/upomp/bypay/other/k;-><init>()V

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Lcom/unionpay/upomp/bypay/other/k;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->k:Ljava/lang/String;

    sput-boolean v3, Lcom/unionpay/upomp/bypay/other/aC;->h:Z

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->l:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->n:Ljava/lang/String;

    const-string v0, "X7fyntm7"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->r:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->w:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->x:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->y:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->z:Ljava/lang/String;

    const-string v0, "useronuser"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->A:Ljava/lang/String;

    const-string v0, "config"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->B:Ljava/lang/String;

    const-string v0, "telnormal"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->C:Ljava/lang/String;

    const-string v0, "pannormal"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->D:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->E:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->j:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->F:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->G:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->H:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->I:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->K:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->J:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->K:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->L:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->M:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->N:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->O:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->P:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->Q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->R:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->S:Ljava/lang/String;

    const-string v0, "PluginInit.Req"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->T:Ljava/lang/String;

    const-string v0, "1.1.0"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->U:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->V:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->W:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->X:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->Y:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->Z:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aa:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ab:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ac:Ljava/lang/String;

    const-string v0, "2"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ad:Ljava/lang/String;

    const-string v0, "02-02-1.1.0"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ae:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->af:Ljava/lang/String;

    const-string v0, "3"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ag:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ah:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ai:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aj:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ak:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->al:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->am:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->an:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ao:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ap:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aq:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ar:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->as:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->at:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->au:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->av:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aw:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ax:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ay:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->az:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aA:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aB:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aC:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aD:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aE:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aF:Ljava/lang/String;

    const-string v0, "88888888"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aG:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aH:Ljava/lang/String;

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->f:I

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aI:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aJ:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aK:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aL:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aM:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aN:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aO:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->k:Z

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aP:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aQ:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aR:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aS:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aT:Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->l:Z

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->m:Z

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->n:Z

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->o:Z

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->aV:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aW:Ljava/lang/String;

    sput v3, Lcom/unionpay/upomp/bypay/other/aC;->g:I

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aX:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aY:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aZ:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ba:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bb:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bc:Ljava/lang/String;

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->h:I

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->i:I

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->b:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->c:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->d:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->e:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->f:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->g:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->h:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->i:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->j:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->k:[Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bd:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->be:Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->l:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->m:[Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->q:Z

    sput-boolean v3, Lcom/unionpay/upomp/bypay/other/aC;->r:Z

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->j:I

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->k:I

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->l:I

    sput v4, Lcom/unionpay/upomp/bypay/other/aC;->m:I

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->n:I

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->o:I

    sput v4, Lcom/unionpay/upomp/bypay/other/aC;->p:I

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->q:I

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->r:I

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->s:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bf:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bg:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bh:Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Ljava/util/List;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->r:[Ljava/lang/String;

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->t:I

    sput-byte v1, Lcom/unionpay/upomp/bypay/other/aC;->a:B

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Lcom/unionpay/upomp/bypay/other/bG;

    const/16 v0, 0x4e20

    sput v0, Lcom/unionpay/upomp/bypay/other/aC;->u:I

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->bj:Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->bk:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->t:Z

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Lcom/unionpay/upomp/bypay/other/at;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Lcom/unionpay/upomp/bypay/other/aU;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bl:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->u:Z

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->v:Z

    sput-byte v1, Lcom/unionpay/upomp/bypay/other/aC;->b:B

    sput-byte v1, Lcom/unionpay/upomp/bypay/other/aC;->c:B

    sput-byte v1, Lcom/unionpay/upomp/bypay/other/aC;->d:B

    sput-boolean v3, Lcom/unionpay/upomp/bypay/other/aC;->w:Z

    sput v1, Lcom/unionpay/upomp/bypay/other/aC;->v:I

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->x:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bn:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/util/UPOMP;->payResult:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->F:Ljava/lang/String;

    return-void
.end method
