.class final Lcom/tencent/mm/sdk/platformtools/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/d;->a:[B

    iput p2, p0, Lcom/tencent/mm/sdk/platformtools/d;->b:I

    iput p3, p0, Lcom/tencent/mm/sdk/platformtools/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/d;->a:[B

    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/d;->b:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public final length()I
    .locals 2

    iget v0, p0, Lcom/tencent/mm/sdk/platformtools/d;->c:I

    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/d;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    iget v0, p0, Lcom/tencent/mm/sdk/platformtools/d;->b:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/d;->b:I

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/tencent/mm/sdk/platformtools/d;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/CharSequences;->a(III)V

    iget-object v2, p0, Lcom/tencent/mm/sdk/platformtools/d;->a:[B

    invoke-static {v2, v0, v1}, Lcom/tencent/mm/sdk/platformtools/CharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/d;->a:[B

    iget v2, p0, Lcom/tencent/mm/sdk/platformtools/d;->b:I

    invoke-virtual {p0}, Lcom/tencent/mm/sdk/platformtools/d;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method
