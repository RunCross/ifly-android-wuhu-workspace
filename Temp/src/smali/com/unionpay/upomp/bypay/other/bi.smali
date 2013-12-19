.class public Lcom/unionpay/upomp/bypay/other/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/bi;->a:Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->b:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;->b:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bd:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->c:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;->b:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aZ:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->e:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;->b:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->ba:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->d:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;->b:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bb:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->g:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;->b:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bc:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/E;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/bi;->a:Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;

    invoke-direct {v0, v1}, Lcom/unionpay/upomp/bypay/other/E;-><init>(Lcom/unionpay/upomp/bypay/activity/OnUserCardManageActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/E;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
