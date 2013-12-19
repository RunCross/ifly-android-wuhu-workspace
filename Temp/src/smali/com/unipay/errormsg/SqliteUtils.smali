.class public Lcom/unipay/errormsg/SqliteUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;
    }
.end annotation


# instance fields
.field public COLUMN_ADV:Ljava/lang/String;

.field public COLUMN_KEY:Ljava/lang/String;

.field public COLUMN_MSG:Ljava/lang/String;

.field public COLUMN_NOTICE:Ljava/lang/String;

.field private _$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

.field private _$2:Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;

.field private _$3:Landroid/content/Context;

.field private _$4:Ljava/lang/String;

.field private _$5:Ljava/lang/String;

.field private _$6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "errormsg"

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$6:Ljava/lang/String;

    const-string v0, "errorCode"

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_KEY:Ljava/lang/String;

    const-string v0, "errorMessage"

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_MSG:Ljava/lang/String;

    const-string v0, "errorNotice"

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_NOTICE:Ljava/lang/String;

    const-string v0, "errorAdv"

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_ADV:Ljava/lang/String;

    const-string v0, "errorCode DESC"

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$5:Ljava/lang/String;

    const-string v0, "error_msg.db"

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$4:Ljava/lang/String;

    iput-object p1, p0, Lcom/unipay/errormsg/SqliteUtils;->_$3:Landroid/content/Context;

    new-instance v0, Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    iget-object v1, p0, Lcom/unipay/errormsg/SqliteUtils;->_$3:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/errormsg/SqliteUtils;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$6:Ljava/lang/String;

    return-object v0
.end method

.method private _$1()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/4 v2, 0x0

    const-string v3, "\u652f\u4ed8\u6210\u529f"

    const-string v4, "\u652f\u4ed8\u6210\u529f\uff0c\u7a0d\u540e\u60a8\u5c06\u6536\u5230\u63d0\u793a\u77ed\u4fe1"

    const-string v5, "\u65e0"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x3e9

    const-string v3, "\u8ba2\u8d2d\u7528\u6237\u4e0d\u5b58\u5728"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x3ea

    const-string v3, "\u8ba2\u8d2d\u7528\u6237\u72b6\u6001\u88ab\u505c\u6b62"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x3eb

    const-string v3, "\u8ba2\u8d2d\u7528\u6237\u6b20\u8d39\uff0c\u9884\u4ed8\u8d39\u7528\u6237\u8ba1\u8d39\u5931\u8d25"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u4f59\u989d\u53ef\u80fd\u4e0d\u8db3"

    const-string v5, "\u67e5\u770b\u624b\u673a\u5e10\u53f7\u4f59\u989d\u662f\u5426\u8db3\u591f\uff0c\u8fdb\u884c\u5145\u503c;:;\u4f7f\u7528\u5176\u4ed6\u65b9\u5f0f\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x3ec

    const-string v3, "\u8ba2\u8d2d\u7528\u6237\u5728\u9ed1\u540d\u5355"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x3ed

    const-string v3, "\u65e0\u6548\u7528\u6237\uff0c\u7528\u6237\u4e0d\u518d\u5f53\u524d\u5e73\u53f0\u7ec8"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x3ee

    const-string v3, "\u6b64\u4e1a\u52a1\u80fd\u529b\u5df2\u88ab\u5c4f\u853d"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x3ef

    const-string v3, "\u7528\u6237\u65e0\u6cd5\u5c4f\u853d/\u6062\u590d\u4e1a\u52a1\u80fd\u529b"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x44b

    const-string v3, "\u5176\u4ed6\u9519\u8bef"

    const-string v4, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x2711

    const-string v3, "\u7528\u6237\u4e0d\u5b58\u5728"

    const-string v4, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x2712

    const-string v3, "\u5f00\u53d1\u8005\u4e0d\u652f\u6301VAC"

    const-string v4, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x2713

    const-string v3, "\u4e1a\u52a1\u4e0d\u5b58\u5728"

    const-string v4, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x2714

    const-string v3, "\u4e1a\u52a1\u72b6\u6001\u4e0d\u6b63\u5e38"

    const-string v4, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x2715

    const-string v3, "\u6e20\u9053\u4ee3\u7801\u9519\u8bef"

    const-string v4, "\u60a8\u4f7f\u7528\u7684\u6e38\u620f\u6709\u66f4\u65b0\uff0c\u9700\u8981\u91cd\u65b0\u5b89\u88c5\u624d\u80fd\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4ece\u8054\u901a\u6c83\u5546\u5e97\u91cd\u65b0\u4e0b\u8f7d\u6e38\u620f\u5305\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x2717

    const-string v3, "\u8d85\u65f6\u5f53\u6708\u9650\u989d"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u652f\u4ed8\u8d85\u8fc7\u5f53\u6708\u9650\u989d"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x2718

    const-string v3, "\u8d85\u8fc7\u5f53\u65e5\u9650\u989d"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u652f\u4ed8\u8d85\u8fc7\u5f53\u65e5\u9650\u989d"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u8005\u660e\u5929\u518d\u8fdb\u884c\u652f\u4ed8\u3002"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x2719

    const-string v3, "\u4efb\u52a1\u4e0d\u5b58\u5728(\u5185\u90e8\u5f02\u5e38)"

    const-string v4, "\u652f\u4ed8\u670d\u52a1\u6682\u65f6\u4e0d\u53ef\u7528"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x271a

    const-string v3, "\u6570\u636e\u5e93\u64cd\u4f5c\u5931\u8d25(\u5185\u90e8\u5f02\u5e38)"

    const-string v4, "\u652f\u4ed8\u670d\u52a1\u6682\u65f6\u4e0d\u53ef\u7528"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x271b

    const-string v3, "\u4e1a\u52a1\u4e0d\u5c5e\u4e8e\u8be5CP"

    const-string v4, "\u60a8\u4f7f\u7528\u7684\u6e38\u620f\u6709\u66f4\u65b0\uff0c\u9700\u8981\u91cd\u65b0\u5b89\u88c5\u624d\u80fd\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4ece\u8054\u901a\u6c83\u5546\u5e97\u91cd\u65b0\u4e0b\u8f7d\u6e38\u620f\u5305\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x271c

    const-string v3, "\u91cd\u590d\u6fc0\u6d3b"

    const-string v4, "\u652f\u4ed8\u6210\u529f"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x450

    const-string v3, "\u7528\u6237\u4e0d\u5b58\u5728"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u8005\u91cd\u65b0\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0x451

    const-string v3, "\u7528\u6237\u72b6\u6001\u4e0d\u6b63\u5e38"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u8005\u91cd\u65b0\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0xc1c

    const-string v3, "\u7528\u6237\u4e0d\u662f\u4e00\u4e2a\u9884\u4ed8\u8d39\u7528\u6237"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u8005\u91cd\u65b0\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0xc1d

    const-string v3, "\u7528\u6237\u4f59\u989d\u4e0d\u8db3"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u67e5\u770b\u624b\u673a\u8d26\u53f7\u4f59\u989d\u662f\u5426\u8db3\u591f\uff0c\u8fdb\u884c\u5145\u503c;:;\u4f7f\u7528\u5176\u4ed6\u65b9\u5f0f\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0xc1e

    const-string v3, "\u538b\u7f29\u4f59\u989d\u5931\u8d25"

    const-string v4, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u67e5\u770b\u624b\u673a\u8d26\u53f7\u4f59\u989d\u662f\u5426\u8db3\u591f\uff0c\u8fdb\u884c\u5145\u503c;:;\u4f7f\u7528\u5176\u4ed6\u65b9\u5f0f\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0xc1f

    const-string v3, "\u6ca1\u6709\u9700\u8981\u7684\u8ba1\u8d39\u4fe1\u606f"

    const-string v4, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0xc20

    const-string v3, "\u5199CDR\u5931\u8d25"

    const-string v4, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    const/16 v2, 0xc24

    const-string v3, "\u7b49\u5019SCP\u54cd\u5e94\u5931\u8d25"

    const-string v4, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v5, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/unipay/errormsg/SqliteUtils;->clearDB()V

    invoke-virtual {p0, v0}, Lcom/unipay/errormsg/SqliteUtils;->insertToDB(Ljava/util/ArrayList;)V

    return-void
.end method

.method private _$1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$3:Landroid/content/Context;

    const-string v1, "databaseSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInited"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic _$2(Lcom/unipay/errormsg/SqliteUtils;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$4:Ljava/lang/String;

    return-object v0
.end method

.method private _$2()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$3:Landroid/content/Context;

    const-string v1, "databaseSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isInited"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private _$3()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$3:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public QueryDB([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/unipay/errormsg/ErrorMsgBean;
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$2:Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;

    invoke-virtual {v0}, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/errormsg/SqliteUtils;->_$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/unipay/errormsg/SqliteUtils;->_$5:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    iget-object v3, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_KEY:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_MSG:Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_NOTICE:Ljava/lang/String;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_ADV:Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1

    :cond_0
    new-instance v1, Lcom/unipay/errormsg/ErrorMsgBean;

    aget-object v3, p3, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p3, v8

    const-string v5, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v6, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearDB()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$2:Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;

    invoke-virtual {v0}, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/errormsg/SqliteUtils;->_$6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public initDatabase(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/unipay/errormsg/SqliteUtils;->_$2()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;

    iget-object v1, p0, Lcom/unipay/errormsg/SqliteUtils;->_$3:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;-><init>(Lcom/unipay/errormsg/SqliteUtils;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$2:Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;

    :goto_0
    invoke-direct {p0}, Lcom/unipay/errormsg/SqliteUtils;->_$3()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    invoke-virtual {v0}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->requestUpdateMsg()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;

    iget-object v1, p0, Lcom/unipay/errormsg/SqliteUtils;->_$3:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;-><init>(Lcom/unipay/errormsg/SqliteUtils;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$2:Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;

    invoke-direct {p0}, Lcom/unipay/errormsg/SqliteUtils;->_$1()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unipay/errormsg/SqliteUtils;->_$1(Z)V

    goto :goto_0
.end method

.method public insertToDB(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unipay/errormsg/ErrorMsgBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$2:Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;

    invoke-virtual {v0}, Lcom/unipay/errormsg/IIIIlIIIlIIIIIII;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-object v4, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/errormsg/ErrorMsgBean;

    invoke-virtual {v0}, Lcom/unipay/errormsg/ErrorMsgBean;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_MSG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/errormsg/ErrorMsgBean;

    invoke-virtual {v0}, Lcom/unipay/errormsg/ErrorMsgBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_NOTICE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/errormsg/ErrorMsgBean;

    invoke-virtual {v0}, Lcom/unipay/errormsg/ErrorMsgBean;->getNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_ADV:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/errormsg/ErrorMsgBean;

    invoke-virtual {v0}, Lcom/unipay/errormsg/ErrorMsgBean;->getAdv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/errormsg/SqliteUtils;->_$6:Ljava/lang/String;

    iget-object v4, p0, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_MSG:Ljava/lang/String;

    invoke-virtual {v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method
