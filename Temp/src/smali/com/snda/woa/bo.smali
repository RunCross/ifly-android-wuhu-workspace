.class public Lcom/snda/woa/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snda/woa/android/callback/FastLoginCallBack;


# instance fields
.field private a:Lcom/snda/woa/android/callback/FastLoginCallBack;


# direct methods
.method public constructor <init>(Lcom/snda/woa/android/callback/FastLoginCallBack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/snda/woa/bo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/snda/woa/bo;

    iget-object v0, p1, Lcom/snda/woa/bo;->a:Lcom/snda/woa/android/callback/FastLoginCallBack;

    iput-object v0, p0, Lcom/snda/woa/bo;->a:Lcom/snda/woa/android/callback/FastLoginCallBack;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/snda/woa/bo;->a:Lcom/snda/woa/android/callback/FastLoginCallBack;

    goto :goto_0
.end method


# virtual methods
.method public callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/snda/woa/l;->m:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->o:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    sget-object v3, Lcom/snda/woa/l;->q:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "message"

    aput-object v3, v2, v6

    const-string v3, "sessionId"

    aput-object v3, v2, v7

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    aput-object p4, v3, v7

    invoke-static {v0, v1, v5, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/snda/woa/bo;->a:Lcom/snda/woa/android/callback/FastLoginCallBack;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/snda/woa/android/callback/FastLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
