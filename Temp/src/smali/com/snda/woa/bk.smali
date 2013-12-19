.class public Lcom/snda/woa/bk;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snda/woa/bk;->c:J

    iput-object p1, p0, Lcom/snda/woa/bk;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/snda/woa/bk;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/bk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/bk;->b:Ljava/lang/String;

    return-object v0
.end method
