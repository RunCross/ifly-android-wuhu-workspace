.class public final enum Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/strumsoft/websocket/phonegap/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Draft"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DRAFT75:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

.field public static final enum DRAFT76:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

.field private static final synthetic a:[Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    const-string v1, "DRAFT75"

    invoke-direct {v0, v1, v2}, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;->DRAFT75:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    new-instance v0, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    const-string v1, "DRAFT76"

    invoke-direct {v0, v1, v3}, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;->DRAFT76:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    sget-object v1, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;->DRAFT75:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    aput-object v1, v0, v2

    sget-object v1, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;->DRAFT76:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    aput-object v1, v0, v3

    sput-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;->a:[Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;
    .locals 1

    const-class v0, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    return-object v0
.end method

.method public static values()[Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;->a:[Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    array-length v1, v0

    new-array v2, v1, [Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
