.class public Lcom/unipay/unipay_sdk/UniPay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/unipay_sdk/lIllllIIlllIlllI;,
        Lcom/unipay/unipay_sdk/lIllIlllIIllIlII;,
        Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;,
        Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;,
        Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;,
        Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;,
        Lcom/unipay/unipay_sdk/IllllIllIllllllI;,
        Lcom/unipay/unipay_sdk/llIllllIllllllll;,
        Lcom/unipay/unipay_sdk/IIllllIlIIIIIIII;,
        Lcom/unipay/unipay_sdk/IIlIIllIIlIIIIII;,
        Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;,
        Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;,
        Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;,
        Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;,
        Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;,
        Lcom/unipay/unipay_sdk/lIlIlIllllIlIlll;,
        Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;,
        Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;,
        Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;,
        Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;,
        Lcom/unipay/unipay_sdk/lIIlIIlIIIIIlIIl;,
        Lcom/unipay/unipay_sdk/llIIlIIIIIIIlllI;,
        Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;,
        Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;,
        Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;,
        Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;,
        Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;,
        Lcom/unipay/unipay_sdk/llllIIIllllllllI;,
        Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;,
        Lcom/unipay/unipay_sdk/llIIllIlIlIllIlI;,
        Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;,
        Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;
    }
.end annotation


# static fields
.field public static final ALIPAY_WAP:I = 0x7

.field public static final CANCEL:I = 0x3

.field public static final FAILED:I = 0x2

.field public static final OTHERPAY:I = 0x6

.field public static final SMS_SEND:I = 0x5

.field public static final SUCCESS:I = 0x1

.field public static final SUCCESS_SMS:I = 0x9

.field public static final VAC_SEND:I = 0x8

.field private static _$19:I = 0x0

.field private static _$33:Z = false

.field private static _$34:Z = false

.field private static final _$42:Ljava/lang/String; = "2"

.field private static final _$43:I = 0x2710

.field private static _$44:Lcom/unipay/unipay_sdk/UniPay;

.field public static echangeCode:I

.field public static singleRequestTimes:I


# instance fields
.field _$1:Ljava/lang/Runnable;

.field private _$10:Lcom/unipay/net/Parameters;

.field private _$11:Lcom/unipay/net/HttpNet;

.field private _$12:Lcom/unipay/net/AsyncMultimode;

.field private _$13:Lcom/unipay/errormsg/SqliteUtils;

.field private _$14:Lcom/unipay/beans/LoginRsp;

.field private _$15:Lcom/unipay/beans/PayUpompRsp;

.field private _$16:Lcom/unipay/beans/UniPay3rdRsp;

.field private _$17:Lcom/unipay/beans/CheckPayReg;

.field private _$18:Lcom/unipay/beans/PayviaVACRsp;

.field private _$2:Landroid/os/Handler;

.field private _$20:Landroid/app/ProgressDialog;

.field private _$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

.field private _$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

.field private _$23:Landroid/content/IntentFilter;

.field private _$24:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

.field private _$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

.field private _$26:Lcom/unipay/beans/GameBaseBean;

.field private _$27:Lcom/unipay/beans/PayValueBean;

.field private _$28:Landroid/content/Context;

.field private _$29:Lcom/unipay/tools/ExceedingTools;

.field private _$3:Landroid/app/KeyguardManager$KeyguardLock;

.field private _$30:Z

.field private _$31:Ljava/lang/String;

.field private _$32:Lcom/unipay/tools/CheckRedeemRsp;

.field private _$35:Z

.field private _$36:Z

.field private _$37:Z

.field private _$38:Z

.field private _$39:Z

.field private _$4:Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;

.field private _$40:Z

.field private _$41:Z

.field _$5:Ljava/lang/String;

.field _$6:Ljava/lang/String;

.field _$7:Ljava/lang/String;

.field private _$8:Ljava/lang/String;

.field private _$9:Ljava/lang/String;

.field public usertype:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unipay/unipay_sdk/UniPay;->_$34:Z

    sput-boolean v0, Lcom/unipay/unipay_sdk/UniPay;->_$33:Z

    sput v0, Lcom/unipay/unipay_sdk/UniPay;->_$19:I

    sput v0, Lcom/unipay/unipay_sdk/UniPay;->singleRequestTimes:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$41:Z

    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$40:Z

    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$39:Z

    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$38:Z

    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$37:Z

    iput-boolean v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$36:Z

    iput-boolean v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$35:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$31:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    new-instance v0, Lcom/unipay/net/Parameters;

    invoke-direct {v0}, Lcom/unipay/net/Parameters;-><init>()V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$7:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$6:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$5:Ljava/lang/String;

    new-instance v0, Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$2:Landroid/os/Handler;

    new-instance v0, Lcom/unipay/unipay_sdk/IlIlIlIlIIllIllI;

    invoke-direct {v0, p0}, Lcom/unipay/unipay_sdk/IlIlIlIlIIllIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$1:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic _$1(I)I
    .locals 0

    sput p0, Lcom/unipay/unipay_sdk/UniPay;->_$19:I

    return p0
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/CheckPayReg;)Lcom/unipay/beans/CheckPayReg;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$17:Lcom/unipay/beans/CheckPayReg;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/LoginRsp;)Lcom/unipay/beans/LoginRsp;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$14:Lcom/unipay/beans/LoginRsp;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/PayviaVACRsp;)Lcom/unipay/beans/PayviaVACRsp;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$18:Lcom/unipay/beans/PayviaVACRsp;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/UniPay3rdRsp;)Lcom/unipay/beans/UniPay3rdRsp;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$16:Lcom/unipay/beans/UniPay3rdRsp;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/tools/CheckRedeemRsp;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$32:Lcom/unipay/tools/CheckRedeemRsp;

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/tools/CheckRedeemRsp;)Lcom/unipay/tools/CheckRedeemRsp;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$32:Lcom/unipay/tools/CheckRedeemRsp;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;)Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    return-object p1
.end method

.method static synthetic _$1()Lcom/unipay/unipay_sdk/UniPay;
    .locals 1

    sget-object v0, Lcom/unipay/unipay_sdk/UniPay;->_$44:Lcom/unipay/unipay_sdk/UniPay;

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    return-object p1
.end method

.method private _$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/unipay_sdk/UniPay;->_$9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unipay/unipay_sdk/UniPay;->_$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/unipay_sdk/UniPay;->_$3(I)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _$1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v0}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "serviceid"

    const-string v2, "UniPay3rd"

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "cpId"

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "sdkVersion"

    sget-object v2, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "appid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&consumeCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&payType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&userType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&imsi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&mdn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&passwd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$17:Lcom/unipay/beans/CheckPayReg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$17:Lcom/unipay/beans/CheckPayReg;

    invoke-virtual {v0}, Lcom/unipay/beans/CheckPayReg;->getPasswd()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&fid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getFidvac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&CPreturnURL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getCallbackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&CPorderID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getOrderid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardNo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardPwd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardFee="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "hmac"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getAuthKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/unipay/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$14:Lcom/unipay/beans/LoginRsp;

    invoke-virtual {v0}, Lcom/unipay/beans/LoginRsp;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private _$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/unipay/tools/MultimodeConfig;->setHandphone(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/unipay/unipay_sdk/UniPay;->_$2(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->CLIENT_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/unipay_sdk/lIllllIIlllIlllI;

    invoke-direct {v4, p0}, Lcom/unipay/unipay_sdk/lIllllIIlllIlllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->requestWithHead(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method private _$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    new-instance v0, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    const-wide/16 v2, 0x3a98

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;JJ)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    new-instance v0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    const-wide/16 v2, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;-><init>(Lcom/unipay/unipay_sdk/UniPay;JJ)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->start()Landroid/os/CountDownTimer;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const/high16 v2, 0x4000

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/unipay/tools/PhoneInfoTools;->isUnicomCard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {v0, p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$24:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$23:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$24:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$23:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v4, p2}, Lcom/unipay/unipay_sdk/UniPay;->sendMsg(ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$24:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "33"

    const-string v3, "\u53d1\u9001\u77ed\u4fe1\u5f02\u5e38"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u53d1\u9001\u77ed\u4fe1\u5f02\u5e38"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v2}, Lcom/unipay/tools/PhoneInfoTools;->isUnicomCard(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {v0, p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$24:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$23:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$24:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$23:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v4, p2}, Lcom/unipay/unipay_sdk/UniPay;->sendMsg(ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v2}, Lcom/unipay/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unipay/tools/PhoneInfoTools;->isUnicomCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {v2, p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$24:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$23:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$24:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v5, p0, Lcom/unipay/unipay_sdk/UniPay;->_$23:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->cancel()V

    :cond_6
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->cancel()V

    :cond_7
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$30()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method private _$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8bf7\u6c42\u6570\u636e\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    const-string v1, "3"

    iget v2, p0, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/unipay/unipay_sdk/UniPay;->doRequestShenzhouTradeNum(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->URL_UNIPAY:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    invoke-direct {v4, p0}, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->request(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/unipay_sdk/UniPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$30:Z

    return p1
.end method

.method static synthetic _$1(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$6(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private _$10()Z
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic _$10(Lcom/unipay/unipay_sdk/UniPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$30:Z

    return v0
.end method

.method static synthetic _$11(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$8()V

    return-void
.end method

.method private _$11()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v1}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v1}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v1}, Lcom/unipay/beans/GameBaseBean;->getPrmCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v2}, Lcom/unipay/tools/PhoneInfoTools;->getFidVac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getFidVac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setFidvac(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic _$12(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/tools/ExceedingTools;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$29:Lcom/unipay/tools/ExceedingTools;

    return-object v0
.end method

.method private _$12()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v1}, Lcom/unipay/tools/PhoneInfoTools;->isNetWorkVilable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getAPN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic _$13(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$24:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    return-object v0
.end method

.method private _$13()V
    .locals 3

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$16()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    const/4 v1, 0x1

    const-string v2, "\u652f\u4ed8\u6210\u529f!"

    invoke-interface {v0, v1, v2}, Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;->PayResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic _$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    return-object v0
.end method

.method private _$14()V
    .locals 5

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$16()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "12"

    const-string v3, "\u53d6\u6d88\u652f\u4ed8"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    const/4 v1, 0x3

    const-string v2, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8!"

    invoke-interface {v0, v1, v2}, Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;->PayResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic _$15(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    return-object v0
.end method

.method private _$15()V
    .locals 3

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$16()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    const/4 v1, 0x6

    const-string v2, "cp\u7b2c\u4e09\u65b9"

    invoke-interface {v0, v1, v2}, Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;->PayResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic _$16(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/net/AsyncMultimode;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    return-object v0
.end method

.method private _$16()V
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$4:Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$4:Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;->cancel()V

    const/4 v0, 0x0

    sput v0, Lcom/unipay/unipay_sdk/UniPay;->_$19:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$4:Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;

    :cond_0
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$35()V

    return-void
.end method

.method static synthetic _$17(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/net/Parameters;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    return-object v0
.end method

.method private _$17()V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->isNetWorkVilable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "imsi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " imei:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "106551981"

    const-string v2, "com.unipay.vac_action"

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "13"

    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private _$18()I
    .locals 2

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/lIllIlIlIIllIllI;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/lIllIlIlIIllIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$32()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic _$18(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$5()V

    return-void
.end method

.method private _$19()V
    .locals 5

    sget v0, Lcom/unipay/unipay_sdk/UniPay;->echangeCode:I

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$2(I)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->VAC_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;

    invoke-direct {v4, p0}, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->request(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method static synthetic _$19(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$2()V

    return-void
.end method

.method private _$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBALVNmdDhhFRx+s23QBPrYijEOOnc9Jnd40EQy+TtCHLpo/yM8Eq2/rP2/6lOtJRaP1Y5LZ+4Cv8Cuuq/zgIeABMHonj1GHjzh6VbXCvQ0YZVj784QOPGbgnEFnNPSLc7hnxBZetYmA7FTClbqhMEx0clo+Dv/zB8LStjChlQl5DlAgMBAAECgYEAiyJwZmKK4RtPc8urux2qiMp9Osu8UtB7dBVlw9s73qP6mve1+ECTGpz0+oNSBX90l8DtiGL+3VDFDR4BBJLtTmIM7ZAYjj7+xdo58WU8zepKWmYHc9v6MFKnfwArUFhVEDwuVbzGpQGFJCVRjJlz1TDnbJ4dw3LcOTWBiABNG0ECQQDkwIBT7PuyCMyEZuf3hp86ZxD/prVZh0WjsP+yvhhUd2zReND37wiUTqgjuuT7OQBNKEqju6+OTqLYEaOhFps9AkEAyuY1RxM1OTQkDj9ZDEtIou4Zu0uxaooVp65dEG48YYdoM6Lw7bbeyxtNwWssozZt1PJ2icfEJ9jKmmj5H0lGyQJBAK5n8q+KPLCVstCz4OJBGr+de0Ffql7TGw5d0eZGtygXUbk3wyN1dPYWLm3nfdPotskdEiNZ4tS+MbxJXpdgNAUCQFmj30HpcIg3Sv6oahUOZabl/qRKyrVBEFQmqqMJsM993UGC6WJ8em3NQEsFqJDrCRcdj9VLVpQsKUaSvg1eeFECQD/eYDniU0fbgMmLk6RBBwQVejIHMlFU6/tzen6fxxgslmB0WvYfI1ZBWqS0sqYaiau86+LD73LkC82sq6Y19WY="

    invoke-static {p2, v0}, Lcom/unipay/Alipay/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$2()V
    .locals 5

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$16()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "2"

    const-string v3, "\u652f\u4ed8\u8bf7\u6c42\u5df2\u63d0\u4ea4\uff01"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    const/4 v1, 0x7

    const-string v2, "\u652f\u4ed8\u8bf7\u6c42\u5df2\u63d0\u4ea4\uff01"

    invoke-interface {v0, v1, v2}, Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;->PayResult(ILjava/lang/String;)V

    return-void
.end method

.method private _$2(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "appid=&consumeCode=&fid=&imsi=&mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&redeemCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getAuthKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v1}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "serviceid"

    const-string v3, "CheckRedeem"

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "cpId"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v3}, Lcom/unipay/tools/PhoneInfoTools;->getCpid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "hmac"

    invoke-virtual {v1, v2, v0}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$2(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$14()V

    return-void
.end method

.method static synthetic _$2(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/unipay_sdk/UniPay;->_$4(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$2(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _$2(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v0}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "serviceid"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _$20()Ljava/lang/String;
    .locals 2

    const-string v0, "partner=\"2088801514117927\""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "seller=\"pay@wostore.cn\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "out_trade_no=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "subject=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v1}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v1}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "body=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v1}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "total_fee=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify_url=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unipay/Alipay/PartnerConfig;->getNotify_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic _$20(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$3()V

    return-void
.end method

.method static synthetic _$21(Lcom/unipay/unipay_sdk/UniPay;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$2:Landroid/os/Handler;

    return-object v0
.end method

.method private _$21()Ljava/lang/String;
    .locals 1

    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method static synthetic _$22(Lcom/unipay/unipay_sdk/UniPay;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$21()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$22()Z
    .locals 2

    const-string v0, "2088801514117927"

    const-string v1, "pay@wostore.cn"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic _$23(Lcom/unipay/unipay_sdk/UniPay;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$20()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$23()V
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/llllIlIlIIllIllI;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/llllIlIlIIllIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private _$24()V
    .locals 3

    new-instance v0, Lcom/unipay/Alipay/MobileSecurePayHelper;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/Alipay/MobileSecurePayHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unipay/Alipay/MobileSecurePayHelper;->detectMobile_sp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$26()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    new-instance v2, Lcom/unipay/unipay_sdk/lIIlIIlIIIIIlIIl;

    invoke-direct {v2, p0}, Lcom/unipay/unipay_sdk/lIIlIIlIIIIIlIIl;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2}, Lcom/unipay/Alipay/MobileSecurePayHelper;->showDownloadConfirmDialog(Landroid/content/Context;Lcom/unipay/Alipay/MobileSecurePayHelper$DialogListener;)V

    goto :goto_0
.end method

.method static synthetic _$24(Lcom/unipay/unipay_sdk/UniPay;)Z
    .locals 1

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$22()Z

    move-result v0

    return v0
.end method

.method static synthetic _$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$16:Lcom/unipay/beans/UniPay3rdRsp;

    return-object v0
.end method

.method private _$25()V
    .locals 7

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8bf7\u6c42\u6570\u636e\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    const-string v1, "1"

    iget v2, p0, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->URL_UNIPAY:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;

    invoke-direct {v4, p0}, Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->request(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method private _$26()V
    .locals 7

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8bf7\u6c42\u6570\u636e\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    const-string v1, "1"

    iget v2, p0, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/unipay/unipay_sdk/UniPay;->doRequestTradeNum(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    invoke-direct {v4, p0}, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->request(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method static synthetic _$26(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$27()V

    return-void
.end method

.method static synthetic _$27(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    return-object v0
.end method

.method private _$27()V
    .locals 7

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8bf7\u6c42\u6570\u636e\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    const-string v1, "4"

    iget v2, p0, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/unipay/unipay_sdk/UniPay;->doRequestTradeNum1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->URL_UPOMP:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    invoke-direct {v4, p0}, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->request(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method private _$28()V
    .locals 5

    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->isNetWorkVilable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vac"

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setPayType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "13"

    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic _$28(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$16()V

    return-void
.end method

.method private _$29()V
    .locals 5

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$6()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->CLIENT_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;

    invoke-direct {v4, p0}, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->requestWithHead(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method static synthetic _$29(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$25()V

    return-void
.end method

.method private _$3()V
    .locals 3

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$16()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    const/4 v1, 0x7

    const-string v2, "\u652f\u4ed8\u8bf7\u6c42\u5df2\u63d0\u4ea4\uff01"

    invoke-interface {v0, v1, v2}, Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;->PayResult(ILjava/lang/String;)V

    return-void
.end method

.method private _$3(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$12()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;

    invoke-direct {v1, p0, p1}, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "13"

    const-string v3, "\u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic _$3(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$17()V

    return-void
.end method

.method static synthetic _$3(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/unipay_sdk/UniPay;->_$5(Ljava/lang/String;)V

    return-void
.end method

.method private _$3(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Ljava/lang/String;)V

    return-void
.end method

.method private _$30()V
    .locals 5

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$7()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->CLIENT_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/unipay_sdk/llllIIIllllllllI;

    invoke-direct {v4, p0}, Lcom/unipay/unipay_sdk/llllIIIllllllllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->requestWithHead(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method static synthetic _$30(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$23()V

    return-void
.end method

.method private _$31()V
    .locals 10

    const-wide/high16 v8, 0x4059

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$11()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$12()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$39:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$33()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$10()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$18()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, "vacmsg"

    const-string v2, "i"

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v2, "vacmsg"

    const-string v3, "p"

    invoke-direct {p0, v1, v2, v3}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Unicom"

    invoke-static {v0, v2}, Lcom/unipay/crypt/CryptUtil;->decryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getPhone()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$28()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$17()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$17()V

    goto :goto_0

    :cond_2
    const-string v0, "VAC\u652f\u4ed8\u7c7b\u578b\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "SIM\u5361\u4e0d\u6b63\u786e"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "\u56de\u8c03\u5730\u5740\u683c\u5f0f\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$38:Z

    if-eqz v0, :cond_8

    const-string v0, "sms"

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setPayType(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$29:Lcom/unipay/tools/ExceedingTools;

    invoke-virtual {v0}, Lcom/unipay/tools/ExceedingTools;->checkExceeding()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$29:Lcom/unipay/tools/ExceedingTools;

    new-instance v1, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1}, Lcom/unipay/tools/ExceedingTools;->showExceedDialog(Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/unipay/dialog/SmsEnSureDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getCompany()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v5}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v6}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/unipay/unipay_sdk/lIllIlllIIllIlII;

    invoke-direct {v7, p0}, Lcom/unipay/unipay_sdk/lIllIlllIIllIlII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v7}, Lcom/unipay/dialog/SmsEnSureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/SmsEnSureDialog$SmsEnSureResultListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/SmsEnSureDialog;->show()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/unipay/dialog/PSmsEnSureDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getCompany()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v5}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v6}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;

    invoke-direct {v7, p0}, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v7}, Lcom/unipay/dialog/PSmsEnSureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/PSmsEnSureDialog$PSmsEnSureResultListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/PSmsEnSureDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "17"

    const-string v3, "\u624b\u673a\u7f51\u7edc\u6216\u8005\u914d\u7f6e\u6587\u4ef6\u9519\u8bef"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u624b\u673a\u7f51\u7edc\u6216\u8005\u914d\u7f6e\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "17"

    const-string v3, "\u914d\u7f6e\u6587\u4ef6\u9519\u8bef"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u914d\u7f6e\u6587\u4ef6\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic _$31(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$24()V

    return-void
.end method

.method static synthetic _$32(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/LoginRsp;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$14:Lcom/unipay/beans/LoginRsp;

    return-object v0
.end method

.method private _$32()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->isUnicomCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/unipay/tools/PhoneInfoTools;->isUnicomCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v2}, Lcom/unipay/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unipay/tools/PhoneInfoTools;->isUnicomCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method static synthetic _$33(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$30()V

    return-void
.end method

.method private _$33()Z
    .locals 2

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getCallbackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic _$34(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/CheckPayReg;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$17:Lcom/unipay/beans/CheckPayReg;

    return-object v0
.end method

.method private _$34()Z
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$32()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic _$35(Lcom/unipay/unipay_sdk/UniPay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$31:Ljava/lang/String;

    return-object v0
.end method

.method private _$35()V
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$3:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$3:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$3:Landroid/app/KeyguardManager$KeyguardLock;

    :cond_0
    return-void
.end method

.method static synthetic _$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    return-object v0
.end method

.method private _$36()V
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$3:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const-string v1, "unicomsdk"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$3:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$3:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    :cond_0
    return-void
.end method

.method static synthetic _$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    return-object v0
.end method

.method static synthetic _$38(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$15()V

    return-void
.end method

.method static synthetic _$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    return-object v0
.end method

.method private _$4()V
    .locals 3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v0}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "serviceid"

    const-string v2, "getphonems"

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "userimsi"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "Sdkversion"

    sget-object v2, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$4(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Ljava/lang/String;)V

    return-void
.end method

.method private _$4(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$4(Lcom/unipay/unipay_sdk/UniPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$37:Z

    return v0
.end method

.method static synthetic _$40(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$31()V

    return-void
.end method

.method static synthetic _$5(Lcom/unipay/unipay_sdk/UniPay;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic _$5(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$9:Ljava/lang/String;

    return-object p1
.end method

.method private _$5()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&consumeCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getFidvac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&mdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&payType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&returnUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getCallbackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&orderid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getOrderid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getAuthKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v1}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v1}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "serviceid"

    const-string v3, "BuyConsumeCode2"

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "cpId"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getPrmCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "hmac"

    invoke-virtual {v1, v2, v0}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v1}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unipay/unipay_sdk/UniPay;->isVacMonth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "serviceid"

    const-string v3, "VacMonthly"

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _$5(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$13()V

    return-void
.end method

.method static synthetic _$6(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/errormsg/SqliteUtils;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$13:Lcom/unipay/errormsg/SqliteUtils;

    return-object v0
.end method

.method static synthetic _$6(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$8:Ljava/lang/String;

    return-object p1
.end method

.method private _$6()V
    .locals 3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v0}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "serviceid"

    const-string v2, "UniPayRegister"

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "Imsi"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "Mdn"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "Sdkversion"

    sget-object v2, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static _$6(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic _$7(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayviaVACRsp;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$18:Lcom/unipay/beans/PayviaVACRsp;

    return-object v0
.end method

.method static synthetic _$7(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$31:Ljava/lang/String;

    return-object p1
.end method

.method private _$7()V
    .locals 4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v0}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "serviceid"

    const-string v2, "ptregister"

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "username"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v1, "loginpass"

    const-string v2, "abcdefg"

    invoke-static {v2}, Lcom/unipay/tools/PhoneInfoTools;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _$7(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$16()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    :cond_0
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;->PayResult(ILjava/lang/String;)V

    return-void
.end method

.method private _$8()V
    .locals 5

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$4()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->CLIENT_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;

    invoke-direct {v4, p0}, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->requestWithHead(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method static synthetic _$8(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$28()V

    return-void
.end method

.method static synthetic _$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    return-void
.end method

.method private _$8(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$16()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;->PayResult(ILjava/lang/String;)V

    return-void
.end method

.method private _$9(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/unipay/tools/Utilities;->getInstances()Lcom/unipay/tools/Utilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/tools/Utilities;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/unipay/tools/Utilities;->getInstances()Lcom/unipay/tools/Utilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/tools/Utilities;->getFeetype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getPrmCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getFidvac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/unipay/tools/Utilities;->getInstances()Lcom/unipay/tools/Utilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/tools/Utilities;->getCpparam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/unipay/tools/MyApplication;->versionCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZTEos10"

    invoke-static {v0, v1}, Lcom/unipay/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic _$9(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$19()V

    return-void
.end method

.method private _$9()Z
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    sget-boolean v0, Lcom/unipay/unipay_sdk/UniPay;->_$33:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/unipay/unipay_sdk/UniPay;
    .locals 1

    sget-object v0, Lcom/unipay/unipay_sdk/UniPay;->_$44:Lcom/unipay/unipay_sdk/UniPay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v0}, Lcom/unipay/unipay_sdk/UniPay;-><init>()V

    sput-object v0, Lcom/unipay/unipay_sdk/UniPay;->_$44:Lcom/unipay/unipay_sdk/UniPay;

    :cond_0
    sget-object v0, Lcom/unipay/unipay_sdk/UniPay;->_$44:Lcom/unipay/unipay_sdk/UniPay;

    return-object v0
.end method


# virtual methods
.method public DismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public checkStatus()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$7:Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$6:Ljava/lang/String;

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getFidvac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$5:Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$7:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$7:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$6:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$6:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->isUnicomCard(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setImsi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->isUnicomCard(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setImsi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setImsi(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setImsi(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setImsi(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->productImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setImsi(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method

.method public doRequestShenzhouTradeNum(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "appid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&consumeCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&payType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&userType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&imsi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&mdn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&passwd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$17:Lcom/unipay/beans/CheckPayReg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$17:Lcom/unipay/beans/CheckPayReg;

    invoke-virtual {v0}, Lcom/unipay/beans/CheckPayReg;->getPasswd()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&fid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getFidvac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&CPreturnURL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getCallbackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&CPorderID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getOrderid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardNo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardPwd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardFee="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getAuthKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v1}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "serviceid"

    const-string v3, "UniPay3rd"

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "cpId"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "sdkversion"

    sget-object v3, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "hmac"

    invoke-virtual {v1, v2, v0}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$14:Lcom/unipay/beans/LoginRsp;

    invoke-virtual {v0}, Lcom/unipay/beans/LoginRsp;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1
.end method

.method public doRequestTradeNum(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "appid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&consumeCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&payType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&userType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&imsi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&mdn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&passwd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$17:Lcom/unipay/beans/CheckPayReg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$17:Lcom/unipay/beans/CheckPayReg;

    invoke-virtual {v0}, Lcom/unipay/beans/CheckPayReg;->getPasswd()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&fid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getFidvac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&CPreturnURL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getCallbackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&CPorderID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getOrderid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardNo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardPwd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&cardFee="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getAuthKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v1}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "serviceid"

    const-string v3, "UniPay3rd"

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "cpId"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "sdkVersion"

    sget-object v3, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "hmac"

    invoke-virtual {v1, v2, v0}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$14:Lcom/unipay/beans/LoginRsp;

    invoke-virtual {v0}, Lcom/unipay/beans/LoginRsp;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1
.end method

.method public doRequestTradeNum1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "appid=90284814120130313100241966600&consumeCode=90284814120130313100241966600001&payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&userType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&mdn=18633627080&passwd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getPasswd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getFidvac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&CPreturnURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getCallbackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&CPorderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getOrderid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cardType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cardNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cardPwd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cardFee="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getAuthKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    invoke-virtual {v1}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "serviceid"

    const-string v3, "UniPay3rd"

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "cpId"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "sdkVersion"

    sget-object v3, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$10:Lcom/unipay/net/Parameters;

    const-string v2, "hmac"

    invoke-virtual {v1, v2, v0}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exit(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/unipay/log/LogUtils;->writeLog_exit(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getDataFromInputStream(Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;
    .locals 5

    const/4 v2, 0x0

    const/16 v0, 0x400

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    const/16 v4, 0x400

    :try_start_0
    invoke-virtual {p1, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-object v0

    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/wostore/tabledata/DataParser;->parser([B)Lcom/unipay/wostore/tabledata/DataAdapter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz p1, :cond_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_6
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v2

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/unipay/beans/GameBaseBean;)V
    .locals 5

    iput-object p2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    new-instance v0, Lcom/unipay/net/HttpNet;

    invoke-direct {v0}, Lcom/unipay/net/HttpNet;-><init>()V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$11:Lcom/unipay/net/HttpNet;

    new-instance v0, Lcom/unipay/net/AsyncMultimode;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$11:Lcom/unipay/net/HttpNet;

    invoke-direct {v0, v1}, Lcom/unipay/net/AsyncMultimode;-><init>(Lcom/unipay/net/HttpNet;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setmGameBaseBean(Lcom/unipay/beans/GameBaseBean;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unipay/unipay_sdk/UniPay;->_$34:Z

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$11()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/log/LogUtils;->writeLog_device(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$29()V

    :goto_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$31:Ljava/lang/String;

    const-string v3, "0"

    const-string v4, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$31:Ljava/lang/String;

    const-string v3, "1"

    const-string v4, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCpOtherPay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$41:Z

    return v0
.end method

.method public isCustomerCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$35:Z

    return v0
.end method

.method public isOtherPay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$40:Z

    return v0
.end method

.method public isSupportOtherPay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$37:Z

    return v0
.end method

.method public isSupportSms()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$38:Z

    return v0
.end method

.method public isSupportVacPay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$39:Z

    return v0
.end method

.method public isVacCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$36:Z

    return v0
.end method

.method public isVacMonth(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public otherPayChoice()V
    .locals 5

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$11()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$12()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$33()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$18()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$18()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "19"

    const-string v3, "\u65e0\u6cd5\u68c0\u6d4b\u5230SIM\u5361"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u65e0\u6cd5\u68c0\u6d4b\u5230SIM\u5361"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "20"

    const-string v3, "\u56de\u8c03\u5730\u5740\u9519\u8bef"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u56de\u8c03\u5730\u5740\u683c\u5f0f\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "13"

    const-string v3, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "17"

    const-string v3, "\u624b\u673a\u7f51\u7edc\u6216\u8005\u914d\u7f6e\u9519\u8bef"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u624b\u673a\u7f51\u7edc\u6216\u8005\u914d\u7f6e\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pay(Landroid/content/Context;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;)V
    .locals 11

    const-wide/high16 v9, 0x4059

    const/4 v8, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setmPayValueBean(Lcom/unipay/beans/PayValueBean;)V

    iput-object p3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    new-instance v0, Lcom/unipay/tools/ExceedingTools;

    invoke-direct {v0, p1}, Lcom/unipay/tools/ExceedingTools;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$29:Lcom/unipay/tools/ExceedingTools;

    iput-boolean v6, p0, Lcom/unipay/unipay_sdk/UniPay;->_$30:Z

    sput v6, Lcom/unipay/unipay_sdk/UniPay;->singleRequestTimes:I

    new-instance v0, Lcom/unipay/errormsg/SqliteUtils;

    invoke-direct {v0, p1}, Lcom/unipay/errormsg/SqliteUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$13:Lcom/unipay/errormsg/SqliteUtils;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$13:Lcom/unipay/errormsg/SqliteUtils;

    invoke-virtual {v0, v8}, Lcom/unipay/errormsg/SqliteUtils;->initDatabase(Z)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setUA(Ljava/lang/String;)V

    new-instance v0, Lcom/unipay/net/HttpNet;

    invoke-direct {v0}, Lcom/unipay/net/HttpNet;-><init>()V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$11:Lcom/unipay/net/HttpNet;

    new-instance v0, Lcom/unipay/net/AsyncMultimode;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$11:Lcom/unipay/net/HttpNet;

    invoke-direct {v0, v1}, Lcom/unipay/net/AsyncMultimode;-><init>(Lcom/unipay/net/HttpNet;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$12:Lcom/unipay/net/AsyncMultimode;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "4"

    const-string v3, "\u652f\u4ed8\u5f00\u59cb"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->isVacMonth(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/unipay/unipay_sdk/UniPay;->_$33:Z

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$38:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$39:Z

    if-eqz v0, :cond_0

    const-string v0, "\u652f\u4ed8\u65b9\u5f0f\u8bbe\u7f6e\u9519\u8bef!"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/unipay/unipay_sdk/UniPay;->_$33:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$39:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$38:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "21"

    const-string v3, "\u53c2\u6570\u9519\u8bef!(\u975e\u8054\u7f51\u6e38\u620f\u4e0d\u652f\u6301\u5305\u6708\u4e1a\u52a1)"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u53c2\u6570\u8bbe\u7f6e\u9519\u8bef\uff01(\u975e\u8054\u7f51\u6e38\u620f\u4e0d\u652f\u6301\u5305\u6708\u4e1a\u52a1)"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/unipay/unipay_sdk/UniPay;->_$33:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$32()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "22"

    const-string v3, "\u975e\u8054\u901a\u5361\u4e0d\u652f\u6301\u5305\u6708\u4e1a\u52a1"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u975e\u8054\u901a\u5361\u4e0d\u652f\u6301\u5305\u6708\u4e1a\u52a1\uff01"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$9()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "23"

    const-string v3, "VAC\u652f\u4ed8\u91d1\u989d\u8d85\u989d"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VAC\u652f\u4ed8\u91d1\u989d\u6709\u8bef\uff01"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/unipay/unipay_sdk/UniPay;->_$34:Z

    if-eqz v0, :cond_11

    sget v0, Lcom/unipay/unipay_sdk/UniPay;->_$19:I

    if-gtz v0, :cond_10

    sget v0, Lcom/unipay/unipay_sdk/UniPay;->_$19:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unipay/unipay_sdk/UniPay;->_$19:I

    new-instance v0, Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;

    const-wide/16 v2, 0x3a98

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;JJ)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$4:Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$4:Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;->start()Landroid/os/CountDownTimer;

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$36()V

    invoke-virtual {p2}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, ""

    invoke-virtual {p2}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iput-boolean v6, p0, Lcom/unipay/unipay_sdk/UniPay;->_$35:Z

    :goto_1
    invoke-virtual {p2}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, ""

    invoke-virtual {p2}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    iput-boolean v6, p0, Lcom/unipay/unipay_sdk/UniPay;->_$36:Z

    :goto_2
    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$38:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$39:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$37:Z

    if-eqz v0, :cond_f

    :cond_7
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "5"

    const-string v3, "\u7b2c\u4e00\u6b21\u786e\u8ba4\u652f\u4ed8\u754c\u9762"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$34()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/unipay/dialog/UniPayEnSureDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v4}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v5}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;

    invoke-direct {v7, p0}, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v7}, Lcom/unipay/dialog/UniPayEnSureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/unipay/dialog/UniPayEnSureDialog$UniPayEnsureListenr;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/UniPayEnSureDialog;->show()V

    goto/16 :goto_0

    :cond_8
    iput-boolean v8, p0, Lcom/unipay/unipay_sdk/UniPay;->_$35:Z

    goto :goto_1

    :cond_9
    iput-boolean v8, p0, Lcom/unipay/unipay_sdk/UniPay;->_$36:Z

    goto :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$37:Z

    if-eqz v0, :cond_b

    new-instance v0, Lcom/unipay/dialog/UniPayEnSureDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v4}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v5}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;

    invoke-direct {v7, p0}, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/unipay/dialog/UniPayEnSureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/unipay/dialog/UniPayEnSureDialog$UniPayEnsureListenr;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/UniPayEnSureDialog;->show()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "24"

    const-string v3, "\u8d85\u8fc7VAC\u91d1\u989d\u4e14\u7b2c\u4e09\u65b9\u652f\u4ed8\u4e0d\u53ef\u7528"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4e0d\u652f\u6301\u7b2c\u4e09\u65b9\u652f\u4ed8"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$34()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/unipay/dialog/PUnipayEnsureOneDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v4}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v5}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v7, Lcom/unipay/unipay_sdk/llIIllIlIlIllIlI;

    invoke-direct {v7, p0}, Lcom/unipay/unipay_sdk/llIIllIlIlIllIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v7}, Lcom/unipay/dialog/PUnipayEnsureOneDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unipay/dialog/PUnipayEnsureOneDialog$PUniPayOneSureListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/PUnipayEnsureOneDialog;->show()V

    goto/16 :goto_0

    :cond_d
    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$37:Z

    if-eqz v0, :cond_e

    new-instance v0, Lcom/unipay/dialog/PUnipayEnsureOneDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v4}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/UniPay;->_$26:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v5}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v7, Lcom/unipay/unipay_sdk/llIIllIlIlIllIlI;

    invoke-direct {v7, p0}, Lcom/unipay/unipay_sdk/llIIllIlIlIllIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v7}, Lcom/unipay/dialog/PUnipayEnsureOneDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unipay/dialog/PUnipayEnsureOneDialog$PUniPayOneSureListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/PUnipayEnsureOneDialog;->show()V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "24"

    const-string v3, "\u8d85\u8fc7VAC\u91d1\u989d\u4e14\u7b2c\u4e09\u65b9\u652f\u4ed8\u4e0d\u53ef\u7528"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4e0d\u652f\u6301\u7b2c\u4e09\u65b9\u652f\u4ed8"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "25"

    const-string v3, "\u4e0d\u6ee1\u8db3\u652f\u4ed8\u6761\u4ef6"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4e0d\u6ee1\u8db3\u652f\u4ed8\u6761\u4ef6"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "26"

    const-string v3, "15\u79d2\u4e4b\u5185\u65e0\u6cd5\u91cd\u590d\u53d1\u8d77\u652f\u4ed8"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "15\u79d2\u4e4b\u5185\u65e0\u6cd5\u91cd\u590d\u53d1\u8d77\u652f\u4ed8"

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "27"

    const-string v3, "\u6ca1\u6709\u521d\u59cb\u5316SDK"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u8bf7\u5148\u521d\u59cb\u5316SDK"

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public selectedsrv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, p2, p3}, Lcom/unipay/log/LogUtils;->writeLog_selectsrv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendMsg(ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string v0, "isms2"

    :goto_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.android.internal.telephony.ISms$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendText"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    const-string v0, "isms"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, "\u7528\u6237\u9274\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5..."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$22:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$21:Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->cancel()V

    :cond_2
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->_$16()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$27:Lcom/unipay/beans/PayValueBean;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$25:Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    invoke-virtual {p0, v0, v1, v2}, Lcom/unipay/unipay_sdk/UniPay;->pay(Landroid/content/Context;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;)V

    goto :goto_1
.end method

.method public setCpOtherPay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$41:Z

    return-void
.end method

.method public setLoginRsp(Lcom/unipay/beans/LoginRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$14:Lcom/unipay/beans/LoginRsp;

    return-void
.end method

.method public setOtherPay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$40:Z

    return-void
.end method

.method public setPaySelected(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$39:Z

    iput-boolean p2, p0, Lcom/unipay/unipay_sdk/UniPay;->_$37:Z

    return-void
.end method

.method public setSupportOtherPay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$37:Z

    return-void
.end method

.method public setSupportSms(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$38:Z

    return-void
.end method

.method public setSupportVacPay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$39:Z

    return-void
.end method

.method public setUsertype(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$20:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public upompResultOnActivity(Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-class v1, Lcom/unipay/beans/upomp;

    invoke-static {v1, v0}, Lcom/unipay/xmlParser/XMLUtil;->parserXml(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/beans/upomp;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v2, ""

    const-string v3, "1"

    const-string v4, "\u94f6\u8054\u652f\u4ed8\u6210\u529f"

    const-string v5, "true"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;

    invoke-direct {v2, p0, v0}, Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/upomp;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v2, ""

    const-string v3, "3"

    const-string v4, "\u94f6\u8054\u652f\u4ed8\u5931\u8d25"

    const-string v5, "true"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/unipay/unipay_sdk/IIIlIlIlIIllIllI;

    invoke-direct {v2, p0}, Lcom/unipay/unipay_sdk/IIIlIlIlIIllIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "3"

    const-string v3, "\u94f6\u8054\u8fd4\u56dedata=null"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->_$28:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/lIIlIlIlIIllIllI;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/lIIlIlIlIIllIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
