.class final enum Lj$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lj$a;

.field public static final enum b:Lj$a;

.field public static final enum c:Lj$a;

.field public static final enum d:Lj$a;

.field private static final synthetic e:[Lj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lj$a;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$a;->a:Lj$a;

    new-instance v0, Lj$a;

    const-string v1, "ESCAPE"

    invoke-direct {v0, v1, v3}, Lj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$a;->b:Lj$a;

    new-instance v0, Lj$a;

    const-string v1, "ESC_CRNL"

    invoke-direct {v0, v1, v4}, Lj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$a;->c:Lj$a;

    new-instance v0, Lj$a;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v5}, Lj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$a;->d:Lj$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lj$a;

    sget-object v1, Lj$a;->a:Lj$a;

    aput-object v1, v0, v2

    sget-object v1, Lj$a;->b:Lj$a;

    aput-object v1, v0, v3

    sget-object v1, Lj$a;->c:Lj$a;

    aput-object v1, v0, v4

    sget-object v1, Lj$a;->d:Lj$a;

    aput-object v1, v0, v5

    sput-object v0, Lj$a;->e:[Lj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$a;
    .locals 1

    const-class v0, Lj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$a;

    return-object v0
.end method

.method public static values()[Lj$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lj$a;->e:[Lj$a;

    array-length v1, v0

    new-array v2, v1, [Lj$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
