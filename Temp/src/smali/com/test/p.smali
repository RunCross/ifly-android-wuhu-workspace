.class final Lcom/test/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shandagames/gameplus/GamePlus$PayCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/test/RooneyJActivity;->e()I

    move-result v0

    invoke-static {v0}, Lcom/test/RooneyJActivity;->setCurrentMc(I)V

    :cond_0
    return-void
.end method
