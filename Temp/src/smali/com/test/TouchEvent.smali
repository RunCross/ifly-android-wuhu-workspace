.class public Lcom/test/TouchEvent;
.super Ljava/lang/Object;


# instance fields
.field public action:I

.field public id:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/test/TouchEvent;->action:I

    iput p2, p0, Lcom/test/TouchEvent;->x:I

    iput p3, p0, Lcom/test/TouchEvent;->y:I

    iput p4, p0, Lcom/test/TouchEvent;->id:I

    return-void
.end method
