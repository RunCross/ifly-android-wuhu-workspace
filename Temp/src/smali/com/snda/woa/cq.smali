.class public Lcom/snda/woa/cq;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/cq;->c:Ljava/lang/String;

    iput p1, p0, Lcom/snda/woa/cq;->a:I

    iget v0, p0, Lcom/snda/woa/cq;->a:I

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    iget v0, p0, Lcom/snda/woa/cq;->a:I

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/cq;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/cq;->c:Ljava/lang/String;

    iput p1, p0, Lcom/snda/woa/cq;->a:I

    iput-object p2, p0, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    iget v0, p0, Lcom/snda/woa/cq;->a:I

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/cq;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/cq;->c:Ljava/lang/String;

    iput p1, p0, Lcom/snda/woa/cq;->a:I

    iput-object p2, p0, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/snda/woa/cq;->c:Ljava/lang/String;

    return-void
.end method
