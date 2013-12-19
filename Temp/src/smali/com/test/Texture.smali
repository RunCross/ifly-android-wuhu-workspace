.class public Lcom/test/Texture;
.super Ljava/lang/Object;


# instance fields
.field public halfFontSizeHeight:I

.field public halfFontSizeWidth:I

.field public height:I

.field public overbase:I

.field public texHeight:I

.field public texId:I

.field public texWidth:I

.field public width:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/test/Texture;->initialize(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lcom/test/Texture;->initialize(IIIIII)V

    return-void
.end method


# virtual methods
.method public initialize(IIIIII)V
    .locals 0

    iput p1, p0, Lcom/test/Texture;->texId:I

    iput p2, p0, Lcom/test/Texture;->width:I

    iput p3, p0, Lcom/test/Texture;->height:I

    iput p4, p0, Lcom/test/Texture;->texWidth:I

    iput p5, p0, Lcom/test/Texture;->texHeight:I

    iput p6, p0, Lcom/test/Texture;->overbase:I

    return-void
.end method
