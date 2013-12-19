.class public final enum Lcom/playpiegames/clib/E_CODE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playpiegames/clib/E_CODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES:Lcom/playpiegames/clib/E_CODE;

.field public static final enum RSA:Lcom/playpiegames/clib/E_CODE;

.field public static final enum RSA_EP:Lcom/playpiegames/clib/E_CODE;

.field private static final synthetic a:[Lcom/playpiegames/clib/E_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/playpiegames/clib/E_CODE;

    const-string v1, "RSA"

    invoke-direct {v0, v1, v2}, Lcom/playpiegames/clib/E_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playpiegames/clib/E_CODE;->RSA:Lcom/playpiegames/clib/E_CODE;

    new-instance v0, Lcom/playpiegames/clib/E_CODE;

    const-string v1, "RSA_EP"

    invoke-direct {v0, v1, v3}, Lcom/playpiegames/clib/E_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playpiegames/clib/E_CODE;->RSA_EP:Lcom/playpiegames/clib/E_CODE;

    new-instance v0, Lcom/playpiegames/clib/E_CODE;

    const-string v1, "AES"

    invoke-direct {v0, v1, v4}, Lcom/playpiegames/clib/E_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playpiegames/clib/E_CODE;->AES:Lcom/playpiegames/clib/E_CODE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/playpiegames/clib/E_CODE;

    sget-object v1, Lcom/playpiegames/clib/E_CODE;->RSA:Lcom/playpiegames/clib/E_CODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/playpiegames/clib/E_CODE;->RSA_EP:Lcom/playpiegames/clib/E_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playpiegames/clib/E_CODE;->AES:Lcom/playpiegames/clib/E_CODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/playpiegames/clib/E_CODE;->a:[Lcom/playpiegames/clib/E_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playpiegames/clib/E_CODE;
    .locals 1

    const-class v0, Lcom/playpiegames/clib/E_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/playpiegames/clib/E_CODE;

    return-object v0
.end method

.method public static values()[Lcom/playpiegames/clib/E_CODE;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/playpiegames/clib/E_CODE;->a:[Lcom/playpiegames/clib/E_CODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/playpiegames/clib/E_CODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
