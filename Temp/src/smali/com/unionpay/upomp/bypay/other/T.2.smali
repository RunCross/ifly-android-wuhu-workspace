.class public Lcom/unionpay/upomp/bypay/other/T;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unionpay/upomp/bypay/other/bH;

    invoke-direct {v0, p0, p1}, Lcom/unionpay/upomp/bypay/other/bH;-><init>(Lcom/unionpay/upomp/bypay/other/T;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/bH;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method