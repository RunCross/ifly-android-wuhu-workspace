.class public Lcom/shandagames/gameplus/util/MessageUtil;
.super Ljava/lang/Object;


# static fields
.field public static final MESSAGE_TYPE_1:I = 0x1

.field public static final MESSAGE_TYPE_1_BTYES:[B = null

.field public static final MESSAGE_TYPE_2:I = 0x2

.field public static final MESSAGE_TYPE_2_BTYES:[B = null

.field public static final MESSAGE_TYPE_3:I = 0x3

.field public static final MESSAGE_TYPE_3_BTYES:[B = null

.field public static final MESSAGE_TYPE_4:I = 0x4

.field public static final MESSAGE_TYPE_4_BTYES:[B = null

.field public static final MESSAGE_TYPE_5:I = 0x5

.field public static final MESSAGE_TYPE_5_BTYES:[B = null

.field public static final MESSAGE_TYPE_6:I = 0x6

.field public static final MESSAGE_TYPE_6_BTYES:[B = null

.field public static final MESSAGE_TYPE_7:I = 0x7

.field public static final MESSAGE_TYPE_7_BTYES:[B = null

.field public static final MESSAGE_TYPE_ERROR:I = -0x1

.field public static final MessageEnd:[B = null

.field public static final MessageHeadLength:I = 0x9

.field public static final MessageSeparator:[B

.field public static final MessageStart:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    new-array v0, v3, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MessageSeparator:[B

    new-array v0, v3, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v2

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MessageEnd:[B

    const-string v0, "0001"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_1_BTYES:[B

    const-string v0, "0002"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_2_BTYES:[B

    const-string v0, "0003"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_3_BTYES:[B

    const-string v0, "0004"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_4_BTYES:[B

    const-string v0, "0005"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_5_BTYES:[B

    const-string v0, "0006"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_6_BTYES:[B

    const-string v0, "0007"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_7_BTYES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBeatMessage([B)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    array-length v2, p0

    invoke-static {p0}, Lcom/shandagames/gameplus/util/MessageUtil;->isMessageStart([B)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v0, v6}, Ljava/lang/String;-><init>([BII)V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Lcom/shandagames/gameplus/util/MessageUtil;->string2int(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_3

    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_7_BTYES:[B

    invoke-direct {v3, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    const-string v0, "checkBeatMessage errr "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static checkRegisterMessage([B)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    array-length v2, p0

    invoke-static {p0}, Lcom/shandagames/gameplus/util/MessageUtil;->isMessageStart([B)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v0, v6}, Ljava/lang/String;-><init>([BII)V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Lcom/shandagames/gameplus/util/MessageUtil;->string2int(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_3

    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_6_BTYES:[B

    invoke-direct {v3, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x9

    invoke-direct {v3, p0, v4, v0}, Ljava/lang/String;-><init>([BII)V

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/String;

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MessageSeparator:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0xa

    invoke-direct {v0, p0, v3, v6}, Ljava/lang/String;-><init>([BII)V

    const-string v3, "checkRegisterMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "err_reason "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "checkRegisterMessage errr "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static intToStringToByteArray(I)[B
    .locals 2

    const-string v0, ""

    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x64

    if-ge p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isMessageEnd([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MessageEnd:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMessageSeparator([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MessageSeparator:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMessageStart([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static readMessage([B)Lcom/shandagames/gameplus/model/MessageModel;
    .locals 8

    const/4 v1, 0x0

    const/16 v0, 0x9

    const/4 v7, 0x4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-gtz v3, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    array-length v3, p0

    invoke-static {p0}, Lcom/shandagames/gameplus/util/MessageUtil;->isMessageStart([B)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, v7}, Ljava/lang/String;-><init>([BII)V

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Lcom/shandagames/gameplus/util/MessageUtil;->string2int(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_5

    new-instance v4, Ljava/lang/String;

    sget-object v6, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_2_BTYES:[B

    invoke-direct {v4, v6, v2, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-lt v0, v4, :cond_6

    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/16 v0, 0x9

    invoke-direct {v4, p0, v0, v2}, Ljava/lang/String;-><init>([BII)V

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v0, v2, 0x9

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x9

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    sub-int v2, v3, v2

    invoke-direct {v5, p0, v0, v2}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Lcom/shandagames/gameplus/model/MessageModel;

    invoke-direct {v0}, Lcom/shandagames/gameplus/model/MessageModel;-><init>()V

    invoke-virtual {v0, v4}, Lcom/shandagames/gameplus/model/MessageModel;->setMessageid(Ljava/lang/String;)V

    const-string v2, "_t"

    invoke-static {v5, v2}, Lcom/shandagames/gameplus/util/JsonUtils;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_c"

    invoke-static {v5, v3}, Lcom/shandagames/gameplus/util/JsonUtils;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lcom/shandagames/gameplus/model/MessageModel;->setTitle(Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Lcom/shandagames/gameplus/model/MessageModel;->setContent(Ljava/lang/String;)V

    :cond_4
    const-string v2, "readMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "messageid "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "readMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_1
    aget-byte v4, p0, v0

    sget-object v5, Lcom/shandagames/gameplus/util/MessageUtil;->MessageSeparator:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public static readMessageType([B)I
    .locals 7

    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    invoke-static {p0}, Lcom/shandagames/gameplus/util/MessageUtil;->isMessageStart([B)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v5}, Ljava/lang/String;-><init>([BII)V

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lcom/shandagames/gameplus/util/MessageUtil;->string2int(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_2_BTYES:[B

    invoke-direct {v1, v2, v6, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_6_BTYES:[B

    invoke-direct {v1, v2, v6, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_7_BTYES:[B

    invoke-direct {v1, v2, v6, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static spellBeatMsg()[B
    .locals 5

    const/16 v1, 0xa

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/shandagames/gameplus/util/MessageUtil;->intToStringToByteArray(I)[B

    move-result-object v0

    new-array v1, v1, [B

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    array-length v2, v2

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_7_BTYES:[B

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_7_BTYES:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_7_BTYES:[B

    array-length v2, v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MessageEnd:[B

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MessageEnd:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static spellGetMsgReport(Lcom/shandagames/gameplus/model/MessageModel;)[B
    .locals 6

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/shandagames/gameplus/model/MessageModel;->getMessageid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/shandagames/gameplus/model/MessageModel;->getMessageid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/shandagames/gameplus/util/MessageUtil;->intToStringToByteArray(I)[B

    move-result-object v2

    new-array v0, v0, [B

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    sget-object v4, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    array-length v3, v3

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v3

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_5_BTYES:[B

    sget-object v4, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_5_BTYES:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_5_BTYES:[B

    array-length v3, v3

    add-int/2addr v2, v3

    array-length v3, v1

    invoke-static {v1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v2

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MessageEnd:[B

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MessageEnd:[B

    array-length v3, v3

    invoke-static {v2, v5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static spellRegisterMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v1

    add-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0x1

    array-length v4, v2

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    array-length v4, v3

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/shandagames/gameplus/util/MessageUtil;->intToStringToByteArray(I)[B

    move-result-object v4

    new-array v0, v0, [B

    sget-object v5, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    sget-object v6, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    array-length v6, v6

    invoke-static {v5, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v5, Lcom/shandagames/gameplus/util/MessageUtil;->MessageStart:[B

    array-length v5, v5

    array-length v6, v4

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v4, v5

    sget-object v5, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_1_BTYES:[B

    sget-object v6, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_1_BTYES:[B

    array-length v6, v6

    invoke-static {v5, v7, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v5, Lcom/shandagames/gameplus/util/MessageUtil;->MESSAGE_TYPE_1_BTYES:[B

    array-length v5, v5

    add-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v7, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v4

    sget-object v4, Lcom/shandagames/gameplus/util/MessageUtil;->MessageSeparator:[B

    invoke-static {v4, v7, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    array-length v4, v2

    invoke-static {v2, v7, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MessageSeparator:[B

    invoke-static {v2, v7, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    array-length v2, v3

    invoke-static {v3, v7, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lcom/shandagames/gameplus/util/MessageUtil;->MessageEnd:[B

    sget-object v3, Lcom/shandagames/gameplus/util/MessageUtil;->MessageEnd:[B

    array-length v3, v3

    invoke-static {v2, v7, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static string2int(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method
