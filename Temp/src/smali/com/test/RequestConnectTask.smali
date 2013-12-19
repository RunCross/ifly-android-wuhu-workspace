.class public Lcom/test/RequestConnectTask;
.super Ljava/lang/Object;


# instance fields
.field public param:Ljava/lang/String;

.field public sender:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/test/RequestConnectTask;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/test/RequestConnectTask;->param:Ljava/lang/String;

    iput p3, p0, Lcom/test/RequestConnectTask;->sender:I

    return-void
.end method
