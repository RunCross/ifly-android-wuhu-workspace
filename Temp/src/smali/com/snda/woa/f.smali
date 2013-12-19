.class public Lcom/snda/woa/f;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:[Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/snda/woa/f;->c:Ljava/lang/String;

    sput-object v1, Lcom/snda/woa/f;->d:Ljava/lang/String;

    sput-object v1, Lcom/snda/woa/f;->e:Ljava/lang/String;

    sput-object v1, Lcom/snda/woa/f;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/snda/woa/f;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    iput-object v0, p0, Lcom/snda/woa/f;->n:Ljava/lang/String;

    sget-object v0, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget v1, Lcom/snda/woa/ce;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/snda/woa/f;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/login.shtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/f;->q:Ljava/lang/String;

    const-string v0, "GB2312"

    iput-object v0, p0, Lcom/snda/woa/f;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/snda/woa/f;->n:Ljava/lang/String;

    iput-object p4, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    iput-object p5, p0, Lcom/snda/woa/f;->i:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/snda/woa/f;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snda/woa/f;->k:Z

    iput-object p1, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    iput-object v0, p0, Lcom/snda/woa/f;->n:Ljava/lang/String;

    sget-object v0, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget v1, Lcom/snda/woa/ce;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/snda/woa/f;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/login.shtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/f;->q:Ljava/lang/String;

    const-string v0, "GB2312"

    iput-object v0, p0, Lcom/snda/woa/f;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/snda/woa/f;->o:Ljava/lang/String;

    iput-object p4, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    iput-object p5, p0, Lcom/snda/woa/f;->i:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/snda/woa/f;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snda/woa/f;->k:Z

    iput-object p1, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;ZZZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    iput-object v0, p0, Lcom/snda/woa/f;->n:Ljava/lang/String;

    sget-object v0, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget v1, Lcom/snda/woa/ce;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/snda/woa/f;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/login.shtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/f;->q:Ljava/lang/String;

    const-string v0, "GB2312"

    iput-object v0, p0, Lcom/snda/woa/f;->r:Ljava/lang/String;

    sput-object p1, Lcom/snda/woa/f;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/snda/woa/f;->f(Ljava/lang/String;)V

    sput-object p2, Lcom/snda/woa/f;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    iput-object p5, p0, Lcom/snda/woa/f;->i:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/snda/woa/f;->j:Z

    iput-boolean p8, p0, Lcom/snda/woa/f;->l:Z

    iput-boolean p7, p0, Lcom/snda/woa/f;->k:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    iput-object v0, p0, Lcom/snda/woa/f;->n:Ljava/lang/String;

    sget-object v0, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget v1, Lcom/snda/woa/ce;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/snda/woa/f;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/login.shtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/f;->q:Ljava/lang/String;

    const-string v0, "GB2312"

    iput-object v0, p0, Lcom/snda/woa/f;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    iput-object p4, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    iput-object p5, p0, Lcom/snda/woa/f;->i:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/snda/woa/f;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snda/woa/f;->l:Z

    iput-object p1, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/snda/woa/bm;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    new-instance v1, Lcom/snda/woa/bm;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/snda/woa/bm;-><init>(I)V

    const-string v0, "PtLoginService"

    const-string v2, "call handleSuccessResp()"

    invoke-static {v0, v2}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SndaID"

    const-string v2, "^$^"

    invoke-static {p1, v0, v2}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, v1, Lcom/snda/woa/bm;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/snda/woa/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snda/woa/f;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    const-string v3, "pt"

    invoke-static {v2, v3, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    iget-boolean v2, p0, Lcom/snda/woa/f;->j:Z

    if-eqz v2, :cond_1

    const-string v2, "SESSIONKEY"

    const-string v3, "^$^"

    invoke-static {p1, v2, v3}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PtLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tmpSessionKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PtLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "authenPt="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    invoke-static {v0, v2, v6, v7}, Lcom/snda/woa/u;->b(Ljava/lang/String;Ljava/lang/String;J)Lcom/snda/woa/u;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snda/woa/u;)V

    :cond_1
    :goto_1
    const-string v0, "SessionID"

    const-string v2, "^$^"

    invoke-static {p1, v0, v2}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/snda/woa/bm;->c:Ljava/lang/String;

    const-string v0, "extParamOut"

    const-string v2, "^$^"

    invoke-static {p1, v0, v2}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snda/woa/cm;->b:Ljava/lang/String;

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    const-string v2, "tempt"

    invoke-static {v0, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    const-string v3, "pt"

    invoke-static {v2, v3, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    const-string v3, "tempt"

    invoke-static {v2, v3, v4}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    const-string v2, "pt"

    invoke-static {v0, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/snda/woa/f;->l:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/snda/woa/f;->k:Z

    if-eqz v2, :cond_1

    :cond_5
    sget-object v2, Lcom/snda/woa/f;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    sget-object v3, Lcom/snda/woa/f;->c:Ljava/lang/String;

    invoke-static {v0, v3, v6, v7}, Lcom/snda/woa/u;->b(Ljava/lang/String;Ljava/lang/String;J)Lcom/snda/woa/u;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snda/woa/u;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bm;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    sget-object v2, Lcom/snda/woa/f;->d:Ljava/lang/String;

    sget-object v3, Lcom/snda/woa/f;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/snda/woa/f;->d()Lcom/snda/woa/bm;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/snda/woa/f;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    iget-object v4, p0, Lcom/snda/woa/f;->r:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1, v4}, Lcom/snda/woa/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snda/woa/bz;->c()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/snda/woa/bm;

    invoke-virtual {v4}, Lcom/snda/woa/bz;->a()I

    move-result v1

    invoke-direct {v0, v1, v6}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snda/woa/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "requestcode=205"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/snda/woa/f;->e(Ljava/lang/String;)V

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "\u8054\u7f51\u5931\u8d25"

    :cond_4
    const-string v1, "GUID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    const-string v1, "GUID"

    const-string v4, "^$^"

    invoke-static {v0, v1, v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "errsession"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    invoke-direct {p0}, Lcom/snda/woa/f;->d()Lcom/snda/woa/bm;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/snda/woa/f;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    iget-object v4, p0, Lcom/snda/woa/f;->r:Ljava/lang/String;

    invoke-static {v1, p1, p2, v0, v4}, Lcom/snda/woa/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snda/woa/bz;->c()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/snda/woa/bm;

    invoke-virtual {v1}, Lcom/snda/woa/bz;->a()I

    move-result v1

    invoke-direct {v0, v1, v6}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snda/woa/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PtLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v1, v0

    if-nez v1, :cond_9

    new-instance v0, Lcom/snda/woa/bm;

    const v1, -0xa4cf6b

    invoke-direct {v0, v1}, Lcom/snda/woa/bm;-><init>(I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "AuthenState"

    const-string v4, "^$^"

    invoke-static {v1, v0, v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "RetValue"

    const-string v2, "^$^"

    invoke-static {v1, v0, v2}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "RetValue"

    const-string v2, "^$^"

    invoke-static {v1, v0, v2}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const-string v0, "loginok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0=0^$^"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snda/woa/f;->a(Ljava/lang/String;)Lcom/snda/woa/bm;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, v1}, Lcom/snda/woa/f;->b(Ljava/lang/String;)Lcom/snda/woa/bm;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v0, "AuthenState"

    const-string v4, "^$^"

    invoke-static {v1, v0, v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0=0^$^"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snda/woa/f;->a(Ljava/lang/String;)Lcom/snda/woa/bm;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v0, "AuthenState"

    const-string v4, "^$^"

    invoke-static {v1, v0, v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sput-object v2, Lcom/snda/woa/f;->d:Ljava/lang/String;

    sput-object v3, Lcom/snda/woa/f;->e:Ljava/lang/String;

    sput-boolean v7, Lcom/snda/woa/f;->g:Z

    const-string v0, "ECardPos"

    const-string v2, "^$^"

    invoke-static {v1, v0, v2}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|"

    invoke-static {v0, v2}, Lcom/snda/woa/cn;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-boolean v0, p0, Lcom/snda/woa/f;->j:Z

    if-eqz v0, :cond_f

    const-string v0, "SESSIONKEY"

    const-string v3, "^$^"

    invoke-static {v1, v0, v3}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    sput-object v0, Lcom/snda/woa/f;->c:Ljava/lang/String;

    :cond_f
    const-string v0, "PtLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "errMsg="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snda/woa/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/snda/woa/bm;

    const v1, -0xa4cf86

    sget-object v3, Lcom/snda/woa/f;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V

    iput-object v2, v0, Lcom/snda/woa/bm;->f:[Ljava/lang/String;

    iget-object v1, p0, Lcom/snda/woa/f;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    sput-object v6, Lcom/snda/woa/f;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    const-string v0, "AuthenState"

    const-string v4, "^$^"

    invoke-static {v1, v0, v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "AuthenState"

    const-string v4, "^$^"

    invoke-static {v1, v0, v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    sput-object v2, Lcom/snda/woa/f;->d:Ljava/lang/String;

    sput-object v3, Lcom/snda/woa/f;->e:Ljava/lang/String;

    sput-boolean v7, Lcom/snda/woa/f;->g:Z

    const-string v0, "AuthenState"

    const-string v2, "^$^"

    invoke-static {v1, v0, v2}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/snda/woa/bm;

    const v2, -0xa4cf7c

    sget-object v3, Lcom/snda/woa/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V

    const-string v2, "Challenge"

    const-string v3, "^$^"

    invoke-static {v1, v2, v3}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/snda/woa/bm;->h:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    const-string v3, "ekeysn"

    const-string v4, "SerialNum"

    const-string v5, "^$^"

    invoke-static {v1, v4, v5}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/snda/woa/f;->j:Z

    if-eqz v2, :cond_12

    const-string v2, "SESSIONKEY"

    const-string v3, "^$^"

    invoke-static {v1, v2, v3}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    sput-object v1, Lcom/snda/woa/f;->c:Ljava/lang/String;

    :cond_12
    iget-object v1, p0, Lcom/snda/woa/f;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    sput-object v6, Lcom/snda/woa/f;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    new-instance v0, Lcom/snda/woa/bm;

    const v2, -0xa4cf72

    sget-object v3, Lcom/snda/woa/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V

    const-string v2, "RandomNum"

    const-string v3, "^$^"

    invoke-static {v1, v2, v3}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/snda/woa/bm;->g:Ljava/lang/String;

    goto :goto_1

    :cond_14
    const-string v0, "AuthenState"

    const-string v4, "^$^"

    invoke-static {v1, v0, v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sput-object v2, Lcom/snda/woa/f;->d:Ljava/lang/String;

    sput-object v3, Lcom/snda/woa/f;->e:Ljava/lang/String;

    sput-boolean v7, Lcom/snda/woa/f;->g:Z

    new-instance v0, Lcom/snda/woa/bm;

    const v2, -0xa4cf90

    sget-object v3, Lcom/snda/woa/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V

    const-string v2, "CheckCodeUrl"

    const-string v3, "^$^"

    invoke-static {v1, v2, v3}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snda/woa/bm;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/snda/woa/f;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    sput-object v6, Lcom/snda/woa/f;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0, v1}, Lcom/snda/woa/f;->b(Ljava/lang/String;)Lcom/snda/woa/bm;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/snda/woa/bm;
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/snda/woa/f;->g:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/snda/woa/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snda/woa/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cf;->c(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/snda/woa/f;->c(Ljava/lang/String;)Lcom/snda/woa/bm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snda/woa/f;->g:Z

    iput-object v1, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    iput-object v1, p0, Lcom/snda/woa/f;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/snda/woa/f;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    const-string v0, "DescMsg"

    const-string v1, "^$^"

    invoke-static {p1, v0, v1}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snda/woa/f;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/snda/woa/f;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/snda/woa/f;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/snda/woa/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bm;

    move-result-object v0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snda/woa/ap;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snda/woa/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "&pubKeyVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/snda/woa/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/snda/woa/f;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "extParamIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/snda/woa/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-direct {p0}, Lcom/snda/woa/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/snda/woa/bm;
    .locals 4

    const/4 v2, 0x1

    sget-object v0, Lcom/snda/woa/f;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "DescMsg"

    const-string v1, "^$^"

    invoke-static {p1, v0, v1}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snda/woa/f;->f:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/snda/woa/f;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "|"

    invoke-static {p1, v0}, Lcom/snda/woa/cn;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v2, :cond_1

    aget-object v0, v0, v2

    sput-object v0, Lcom/snda/woa/f;->f:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/snda/woa/f;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/av;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snda/woa/f;->f:Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/snda/woa/f;->f:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/snda/woa/bm;

    const-string v2, "RetValue"

    const-string v3, "^$^"

    invoke-static {p1, v2, v3}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/snda/woa/bm;

    iget-object v2, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/av;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "201"

    iget-object v0, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cf;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, Lcom/snda/woa/f;->c:Ljava/lang/String;

    :cond_0
    sget-object v4, Lcom/snda/woa/f;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/snda/woa/f;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "205"

    const-string v4, "PtLoginService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SessionKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SessionKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    move-object v0, v2

    :try_start_0
    iget-object v2, p0, Lcom/snda/woa/f;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "207"

    const-string v2, "&GUID="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "&CheckCode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/snda/woa/f;->o:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string v1, "&AutoLogin=1"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&SaveTime=30"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&RequestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v8, :cond_5

    const-string v0, "Account"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&Account="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "aaaa"

    invoke-static {v2}, Lcom/snda/woa/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v0, "203"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "&ECardPwd="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/snda/woa/f;->m:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/snda/woa/f;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "Account"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&Account="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "aaaa"

    invoke-static {v2}, Lcom/snda/woa/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const-string v0, "202"

    const-string v2, "PtLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&EKeyPwd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/snda/woa/f;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "&EKeyPwd="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/snda/woa/f;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "&EKeySN="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    const-string v5, "ekeysn"

    invoke-static {v4, v5}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_7
    const-string v2, "201"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "&"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Account="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v4, Lcom/snda/woa/f;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&Pwd="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v4, Lcom/snda/woa/f;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/snda/woa/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v2, Lcom/snda/woa/f;->g:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    sput-object v2, Lcom/snda/woa/f;->d:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/snda/woa/f;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v2, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private d()Lcom/snda/woa/bm;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/snda/woa/f;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/snda/woa/f;->q:Ljava/lang/String;

    const-string v4, "requestcode=204"

    iget-object v5, p0, Lcom/snda/woa/f;->r:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/snda/woa/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snda/woa/bz;->c()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/snda/woa/bm;

    invoke-virtual {v1}, Lcom/snda/woa/bz;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PtLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get guid resp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/snda/woa/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PtLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get guid resp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/snda/woa/f;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/snda/woa/bm;

    const v2, -0xa4d09b

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/av;->a(Landroid/content/Context;)I

    move-result v1

    new-instance v0, Lcom/snda/woa/bm;

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snda/woa/bm;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "PtLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "json String: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "resultMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GUID"

    const-string v1, "^$^"

    invoke-static {p1, v0, v1}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/snda/woa/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snda/woa/f;->b:Ljava/lang/String;

    const-string v0, "PtLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VarControlTools.pwdLoginGuid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snda/woa/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyWord"

    const-string v1, "^$^"

    invoke-static {p1, v0, v1}, Lcom/snda/woa/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/aj;->b(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/snda/woa/f;->h:Landroid/content/Context;

    const-string v1, "tempt"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/snda/woa/bm;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/snda/woa/f;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/snda/woa/f;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/snda/woa/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PtLoginService"

    const-string v2, "\u901a\u884c\u8bc1\u767b\u5f55\u51fa\u73b0\u5f02\u5e38:"

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/snda/woa/bm;

    const v1, -0xa4cf6a

    invoke-direct {v0, v1}, Lcom/snda/woa/bm;-><init>(I)V

    goto :goto_0
.end method
