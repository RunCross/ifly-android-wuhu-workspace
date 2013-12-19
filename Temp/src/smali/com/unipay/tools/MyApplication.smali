.class public Lcom/unipay/tools/MyApplication;
.super Landroid/app/Application;


# static fields
.field public static final BASE_ASSETS:Ljava/lang/String; = "unicom_base/"

.field public static final EXTEND_ASSETS:Ljava/lang/String; = "unicom_extend/"

.field public static final SMS_ACTION:Ljava/lang/String; = "com.unipay.sms_action"

.field public static final SMS_PHONE:Ljava/lang/String; = "10655198000"

.field public static final VAC_ACTION:Ljava/lang/String; = "com.unipay.vac_action"

.field public static final VAC_PHONE:Ljava/lang/String; = "106551981"

.field public static final debug:Z

.field public static version:Ljava/lang/String;

.field public static versionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1.1.1"

    sput-object v0, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    const-string v0, "111"

    sput-object v0, Lcom/unipay/tools/MyApplication;->versionCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method
