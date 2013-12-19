.class public Lcom/shandagames/gameplus/local/UserPromptStorage$UserPrompt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shandagames/gameplus/local/UserPromptStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserPrompt"
.end annotation


# instance fields
.field public firstUser:Ljava/lang/String;

.field public secondUser:Ljava/lang/String;

.field public thirdUser:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/local/UserPromptStorage$UserPrompt;->firstUser:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/local/UserPromptStorage$UserPrompt;->secondUser:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/shandagames/gameplus/local/UserPromptStorage$UserPrompt;->thirdUser:Ljava/lang/String;

    return-void
.end method
