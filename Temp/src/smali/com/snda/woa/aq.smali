.class public Lcom/snda/woa/aq;
.super Lcom/snda/woa/co;


# instance fields
.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/snda/woa/co;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/snda/woa/aq;->h:J

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 10

    const/4 v8, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/snda/woa/aq;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v0, Lcom/snda/woa/z;->ao:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v2, Lcom/snda/woa/z;->B:Ljava/lang/String;

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-long v0, v6, v0

    iget-wide v6, p0, Lcom/snda/woa/aq;->h:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    sget-object v0, Lcom/snda/woa/z;->B:Ljava/lang/String;

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SDOAnalyzeAgent"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const-string v0, "SDOAnalyzeAgent"

    const-string v1, "No IMEI."

    invoke-static {v0, v1}, Lcom/snda/woa/au;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v3

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    :goto_1
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "SDOAnalyzeAgent"

    const-string v1, "No IMEI."

    invoke-static {v0, v1}, Lcom/snda/woa/au;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v3

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/snda/woa/z;->D:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/snda/woa/z;->E:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/snda/woa/z;->U:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v4, v2, v1}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->X:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/snda/woa/aq;->c:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->ac:Ljava/lang/String;

    iget-object v2, p0, Lcom/snda/woa/aq;->d:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->Z:Ljava/lang/String;

    iget-object v2, p0, Lcom/snda/woa/aq;->e:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->V:Ljava/lang/String;

    iget-object v2, p0, Lcom/snda/woa/aq;->f:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->W:Ljava/lang/String;

    const-string v2, "1.1"

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/snda/woa/aq;->g:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    :try_start_5
    sget-object v2, Lcom/snda/woa/z;->G:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v1

    :goto_4
    :try_start_7
    sget-object v2, Lcom/snda/woa/z;->y:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->H:Ljava/lang/String;

    sget-object v2, Lcom/snda/woa/z;->an:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->I:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->K:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    const/16 v1, 0x8

    iget-object v6, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/snda/woa/z;->L:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v6, v7}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/snda/woa/z;->M:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v6, v7}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0x36ee80

    div-int/2addr v1, v2

    :cond_3
    sget-object v2, Lcom/snda/woa/z;->N:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "*"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snda/woa/z;->O:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_4

    :goto_5
    :try_start_9
    invoke-static {p1}, Lcom/snda/woa/ar;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snda/woa/z;->P:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Wi-Fi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_4

    move-result v1

    if-eqz v1, :cond_4

    :try_start_a
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    sget-object v2, Lcom/snda/woa/z;->Y:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_4

    :cond_4
    :goto_6
    :try_start_b
    sget-object v1, Lcom/snda/woa/z;->T:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_4

    :try_start_c
    invoke-static {p1}, Lcom/snda/woa/ar;->c(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Lcom/snda/woa/z;->Q:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p0, v4, v2, v6, v7}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;D)V

    sget-object v2, Lcom/snda/woa/z;->R:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p0, v4, v2, v6, v7}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;D)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_4

    :cond_5
    :goto_7
    :try_start_d
    sget-object v1, Lcom/snda/woa/z;->aj:Ljava/lang/String;

    invoke-static {}, Lcom/snda/woa/ar;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/z;->S:Ljava/lang/String;

    invoke-static {p1}, Lcom/snda/woa/ar;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_4

    :try_start_e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-eq v2, v8, :cond_6

    if-eq v1, v8, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v8, Lcom/snda/woa/z;->ad:Ljava/lang/String;

    invoke-virtual {p0, v4, v8, v2}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    sget-object v2, Lcom/snda/woa/z;->ae:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    sget-object v1, Lcom/snda/woa/z;->af:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v7}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    sget-object v1, Lcom/snda/woa/z;->ag:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v6}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_4

    :cond_6
    :goto_8
    :try_start_f
    sget-object v1, Lcom/snda/woa/z;->al:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v1, v0}, Lcom/snda/woa/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_4

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/z;->B:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/snda/woa/z;->ao:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v4

    goto/16 :goto_0

    :cond_7
    :try_start_10
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_4

    move-result-object v1

    goto/16 :goto_2

    :catch_2
    move-exception v1

    :cond_8
    move-object v1, v2

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v0, v3

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v1, "SDOAnalyzeAgent"

    const-string v2, "Failed to get IMEI. Forget to add permission READ_PHONE_STATE? "

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto/16 :goto_7

    :catch_7
    move-exception v1

    goto/16 :goto_6

    :catch_8
    move-exception v1

    goto/16 :goto_5

    :catch_9
    move-exception v2

    goto/16 :goto_3
.end method
