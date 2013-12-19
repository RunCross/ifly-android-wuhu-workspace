.class public Lcom/unipay/tools/MultimodeConfig;
.super Ljava/lang/Object;


# static fields
.field public static CLIENT_URL:Ljava/lang/String; = null

.field public static GETPASSWD_URL:Ljava/lang/String; = null

.field public static URL:Ljava/lang/String; = null

.field public static URL_UNIPAY:Ljava/lang/String; = null

.field public static URL_UPOMP:Ljava/lang/String; = null

.field public static VAC_URL:Ljava/lang/String; = null

.field public static VERCODE_URL:Ljava/lang/String; = null

.field private static _$1:Ljava/lang/String; = null

.field private static _$10:Ljava/lang/String; = null

.field private static _$11:Ljava/lang/String; = null

.field private static _$12:Z = false

.field private static _$13:Ljava/lang/String; = null

.field private static _$14:Ljava/lang/String; = null

.field private static _$15:Ljava/lang/String; = null

.field private static _$16:Ljava/lang/String; = null

.field private static final _$17:Ljava/lang/String; = "Subs123"

.field private static _$2:Lcom/unipay/beans/PayValueBean;

.field private static _$3:Lcom/unipay/beans/GameBaseBean;

.field private static _$4:J

.field private static _$5:Ljava/lang/String;

.field private static _$6:Ljava/lang/String;

.field private static _$7:Ljava/lang/String;

.field private static _$8:Ljava/lang/String;

.field private static _$9:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://client.wostore.cn:6106/appstore_agent/unistore/servicedata.do?"

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->CLIENT_URL:Ljava/lang/String;

    const-string v0, "http://client.wostore.cn:6106/appstore_agent/getverifycode.do?"

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->VERCODE_URL:Ljava/lang/String;

    const-string v0, "http://client.wostore.cn:6106/appstore_agent/getpassword.do?"

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->GETPASSWD_URL:Ljava/lang/String;

    const-string v0, "http://58.246.196.82:9008/servicedata.do?"

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->VAC_URL:Ljava/lang/String;

    const-string v0, "http://unipay3rd.wostore.cn:9055/servicedata.do?"

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->URL:Ljava/lang/String;

    const-string v0, "http://unipay3rd.wostore.cn:9055/servicedata.do?"

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->URL_UNIPAY:Ljava/lang/String;

    const-string v0, "http://210.51.195.25:8280/servicedata.do?"

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->URL_UPOMP:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$16:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$15:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$14:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$13:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unipay/tools/MultimodeConfig;->_$12:Z

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$11:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$10:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$9:Ljava/lang/String;

    const-string v0, "00000000000"

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$8:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$7:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$6:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$5:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unipay/tools/MultimodeConfig;->_$4:J

    const-string v0, ""

    sput-object v0, Lcom/unipay/tools/MultimodeConfig;->_$1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthKeyStr()Ljava/lang/String;
    .locals 1

    const-string v0, "Subs123"

    return-object v0
.end method

.method public static getAuthentime()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$1:Ljava/lang/String;

    return-object v0
.end method

.method public static getCallbackUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$9:Ljava/lang/String;

    return-object v0
.end method

.method public static getFidvac()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$10:Ljava/lang/String;

    return-object v0
.end method

.method public static getHandphone()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$8:Ljava/lang/String;

    return-object v0
.end method

.method public static getHelpMsg()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$7:Ljava/lang/String;

    return-object v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$15:Ljava/lang/String;

    return-object v0
.end method

.method public static getImsi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$16:Ljava/lang/String;

    return-object v0
.end method

.method public static getPasswd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$11:Ljava/lang/String;

    return-object v0
.end method

.method public static getPayType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$5:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhone()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$14:Ljava/lang/String;

    return-object v0
.end method

.method public static getStarttime()J
    .locals 2

    sget-wide v0, Lcom/unipay/tools/MultimodeConfig;->_$4:J

    return-wide v0
.end method

.method public static getUA()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$13:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$6:Ljava/lang/String;

    return-object v0
.end method

.method public static getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$3:Lcom/unipay/beans/GameBaseBean;

    return-object v0
.end method

.method public static getmPayValueBean()Lcom/unipay/beans/PayValueBean;
    .locals 1

    sget-object v0, Lcom/unipay/tools/MultimodeConfig;->_$2:Lcom/unipay/beans/PayValueBean;

    return-object v0
.end method

.method public static isNeedSave()Z
    .locals 1

    sget-boolean v0, Lcom/unipay/tools/MultimodeConfig;->_$12:Z

    return v0
.end method

.method public static setAuthentime(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$1:Ljava/lang/String;

    return-void
.end method

.method public static setCallbackUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$9:Ljava/lang/String;

    return-void
.end method

.method public static setFidvac(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$10:Ljava/lang/String;

    return-void
.end method

.method public static setHandphone(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$8:Ljava/lang/String;

    return-void
.end method

.method public static setHelpMsg(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$7:Ljava/lang/String;

    return-void
.end method

.method public static setImei(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$15:Ljava/lang/String;

    return-void
.end method

.method public static setImsi(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$16:Ljava/lang/String;

    return-void
.end method

.method public static setNeedSave(Z)V
    .locals 0

    sput-boolean p0, Lcom/unipay/tools/MultimodeConfig;->_$12:Z

    return-void
.end method

.method public static setPasswd(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$11:Ljava/lang/String;

    return-void
.end method

.method public static setPayType(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$5:Ljava/lang/String;

    return-void
.end method

.method public static setPhone(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$14:Ljava/lang/String;

    return-void
.end method

.method public static setStarttime(J)V
    .locals 0

    sput-wide p0, Lcom/unipay/tools/MultimodeConfig;->_$4:J

    return-void
.end method

.method public static setUA(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$13:Ljava/lang/String;

    return-void
.end method

.method public static setUserid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$6:Ljava/lang/String;

    return-void
.end method

.method public static setmGameBaseBean(Lcom/unipay/beans/GameBaseBean;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$3:Lcom/unipay/beans/GameBaseBean;

    return-void
.end method

.method public static setmPayValueBean(Lcom/unipay/beans/PayValueBean;)V
    .locals 0

    sput-object p0, Lcom/unipay/tools/MultimodeConfig;->_$2:Lcom/unipay/beans/PayValueBean;

    return-void
.end method
