.class public Lcom/shandagames/gameplus/util/VibrateUtil;
.super Ljava/lang/Object;


# static fields
.field public static isNeedVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/shandagames/gameplus/util/VibrateUtil;->isNeedVibrate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Vibrate(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p0}, Lcom/shandagames/gameplus/util/VibrateUtil;->getIsNeedVibrate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method public static Vibrate(Landroid/content/Context;[JZ)V
    .locals 2

    invoke-static {p0}, Lcom/shandagames/gameplus/util/VibrateUtil;->getIsNeedVibrate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getIsNeedVibrate(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isNeedVibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/shandagames/gameplus/util/VibrateUtil;->isNeedVibrate:Z

    return v0
.end method

.method public static setIsNeedVibrate(Landroid/content/Context;Z)V
    .locals 3

    sput-boolean p1, Lcom/shandagames/gameplus/util/VibrateUtil;->isNeedVibrate:Z

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isNeedVibrate"

    sget-boolean v2, Lcom/shandagames/gameplus/util/VibrateUtil;->isNeedVibrate:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
