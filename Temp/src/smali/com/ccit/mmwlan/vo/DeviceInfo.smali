.class public Lcom/ccit/mmwlan/vo/DeviceInfo;
.super Ljava/lang/Object;


# instance fields
.field private filePath:Ljava/lang/String;

.field private strImei:Ljava/lang/String;

.field private strImsi:Ljava/lang/String;

.field private strMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strMac:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStrImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImei:Ljava/lang/String;

    return-object v0
.end method

.method public getStrImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strMac:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setStrImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImei:Ljava/lang/String;

    return-void
.end method

.method public setStrImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImsi:Ljava/lang/String;

    return-void
.end method

.method public setStrMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strMac:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceInfo ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    strImei = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    strImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    strMac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
