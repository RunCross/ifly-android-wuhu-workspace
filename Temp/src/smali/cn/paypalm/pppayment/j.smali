.class Lcn/paypalm/pppayment/j;
.super Ljava/lang/Thread;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcn/paypalm/pppayment/BankcardAgreement;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/BankcardAgreement;)V
    .locals 1

    iput-object p1, p0, Lcn/paypalm/pppayment/j;->b:Lcn/paypalm/pppayment/BankcardAgreement;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/paypalm/pppayment/j;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/j;)Lcn/paypalm/pppayment/BankcardAgreement;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/j;->b:Lcn/paypalm/pppayment/BankcardAgreement;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    new-instance v0, Lcn/paypalm/pppayment/global/Tools;

    invoke-direct {v0}, Lcn/paypalm/pppayment/global/Tools;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/paypalm/pppayment/j;->b:Lcn/paypalm/pppayment/BankcardAgreement;

    const-string v3, "pp_payment_res.bin"

    invoke-virtual {v0, v1, v3}, Lcn/paypalm/pppayment/global/Tools;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v3, p0, Lcn/paypalm/pppayment/j;->b:Lcn/paypalm/pppayment/BankcardAgreement;

    const-wide/16 v4, 0x20a6

    invoke-virtual {v0, v3, v1, v4, v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/io/InputStream;J)[B

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v1, 0x2800

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/j;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/j;->b:Lcn/paypalm/pppayment/BankcardAgreement;

    iget-object v0, v0, Lcn/paypalm/pppayment/BankcardAgreement;->b:Landroid/os/Handler;

    new-instance v1, Lcn/paypalm/pppayment/t;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/t;-><init>(Lcn/paypalm/pppayment/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, ""

    iput-object v0, p0, Lcn/paypalm/pppayment/j;->a:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
