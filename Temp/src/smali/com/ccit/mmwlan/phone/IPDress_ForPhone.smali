.class public Lcom/ccit/mmwlan/phone/IPDress_ForPhone;
.super Ljava/lang/Object;


# instance fields
.field private strApplySecCertIP:Ljava/lang/String;

.field private strSMSNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStrApplySecCertIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->strApplySecCertIP:Ljava/lang/String;

    return-object v0
.end method

.method public getStrSMSNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->strSMSNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setStrApplySecCertIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->strApplySecCertIP:Ljava/lang/String;

    return-void
.end method

.method public setStrSMSNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->strSMSNumber:Ljava/lang/String;

    return-void
.end method
