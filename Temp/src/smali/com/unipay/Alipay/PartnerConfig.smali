.class public Lcom/unipay/Alipay/PartnerConfig;
.super Ljava/lang/Object;


# static fields
.field public static final ALIPAY_PLUGIN_NAME:Ljava/lang/String; = "alipay_plugin_20120428msp.apk"

.field public static final PARTNER:Ljava/lang/String; = "2088801514117927"

.field public static final RSA_ALIPAY_PUBLIC:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCC8rm3WEf3BOk0wfnCTMtWPiEVlmI0Yzej9E8H/wzDtRm/PhukWKD2lwkAyaV5EkJseKkRaGv9VxKWJ5GVYiRGWj3wwBdIrp8KXTenQMxACFwdZLrLv1Tmu1pV58E6YCrVIRobaWCNc1eIXugzbjvC2VUCPyhafZ4SplLYGDO5+wIDAQAB"

.field public static final RSA_PRIVATE:Ljava/lang/String; = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBALVNmdDhhFRx+s23QBPrYijEOOnc9Jnd40EQy+TtCHLpo/yM8Eq2/rP2/6lOtJRaP1Y5LZ+4Cv8Cuuq/zgIeABMHonj1GHjzh6VbXCvQ0YZVj784QOPGbgnEFnNPSLc7hnxBZetYmA7FTClbqhMEx0clo+Dv/zB8LStjChlQl5DlAgMBAAECgYEAiyJwZmKK4RtPc8urux2qiMp9Osu8UtB7dBVlw9s73qP6mve1+ECTGpz0+oNSBX90l8DtiGL+3VDFDR4BBJLtTmIM7ZAYjj7+xdo58WU8zepKWmYHc9v6MFKnfwArUFhVEDwuVbzGpQGFJCVRjJlz1TDnbJ4dw3LcOTWBiABNG0ECQQDkwIBT7PuyCMyEZuf3hp86ZxD/prVZh0WjsP+yvhhUd2zReND37wiUTqgjuuT7OQBNKEqju6+OTqLYEaOhFps9AkEAyuY1RxM1OTQkDj9ZDEtIou4Zu0uxaooVp65dEG48YYdoM6Lw7bbeyxtNwWssozZt1PJ2icfEJ9jKmmj5H0lGyQJBAK5n8q+KPLCVstCz4OJBGr+de0Ffql7TGw5d0eZGtygXUbk3wyN1dPYWLm3nfdPotskdEiNZ4tS+MbxJXpdgNAUCQFmj30HpcIg3Sv6oahUOZabl/qRKyrVBEFQmqqMJsM993UGC6WJ8em3NQEsFqJDrCRcdj9VLVpQsKUaSvg1eeFECQD/eYDniU0fbgMmLk6RBBwQVejIHMlFU6/tzen6fxxgslmB0WvYfI1ZBWqS0sqYaiau86+LD73LkC82sq6Y19WY="

.field public static final SELLER:Ljava/lang/String; = "pay@wostore.cn"

.field public static notify_url:Ljava/lang/String; = null

.field public static final sgin_type:Ljava/lang/String; = "RSA"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/unipay/Alipay/PartnerConfig;->notify_url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotify_url()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/Alipay/PartnerConfig;->notify_url:Ljava/lang/String;

    return-object v0
.end method

.method public static setNotify_url(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unipay/Alipay/PartnerConfig;->notify_url:Ljava/lang/String;

    return-void
.end method
