.class public Lcom/test/Task;
.super Ljava/lang/Object;


# static fields
.field public static final TASK_TYPE_CONNECT_ERROR:I = 0x0

.field public static final TASK_TYPE_CONNECT_GET:I = 0x1

.field public static final TASK_TYPE_CONNECT_POST:I = 0x2


# instance fields
.field public data:[B

.field public error:I

.field public sender:I

.field public taskType:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/test/Task;->error:I

    iput v0, p0, Lcom/test/Task;->taskType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/test/Task;->error:I

    iput p1, p0, Lcom/test/Task;->taskType:I

    iput-object p2, p0, Lcom/test/Task;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/test/Task;->data:[B

    iput p4, p0, Lcom/test/Task;->sender:I

    iput p5, p0, Lcom/test/Task;->error:I

    return-void
.end method
