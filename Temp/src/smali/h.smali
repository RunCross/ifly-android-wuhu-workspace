.class public abstract Lh;
.super Ljava/lang/Object;


# static fields
.field private static b:I


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lh;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lh;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lh;->b:I

    iput v0, p0, Lh;->a:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/telephony/CellLocation;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/telephony/ServiceState;I)V
    .locals 0

    return-void
.end method
