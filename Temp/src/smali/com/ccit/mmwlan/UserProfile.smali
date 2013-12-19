.class public Lcom/ccit/mmwlan/UserProfile;
.super Ljava/lang/Object;


# instance fields
.field public appID:Ljava/lang/String;

.field public cardSlot:I

.field public loginType:I

.field public moServerHost:Lorg/apache/http/HttpHost;

.field public password:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    iput v1, p0, Lcom/ccit/mmwlan/UserProfile;->loginType:I

    iput-object v0, p0, Lcom/ccit/mmwlan/UserProfile;->moServerHost:Lorg/apache/http/HttpHost;

    iput-object v0, p0, Lcom/ccit/mmwlan/UserProfile;->appID:Ljava/lang/String;

    iput-object v0, p0, Lcom/ccit/mmwlan/UserProfile;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ccit/mmwlan/UserProfile;->password:Ljava/lang/String;

    return-void
.end method
