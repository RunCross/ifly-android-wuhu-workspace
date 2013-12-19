.class public Lcom/snda/woa/bd;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/snda/woa/bd;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/bd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cf;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/snda/woa/bd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cf;->d(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/bd;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
