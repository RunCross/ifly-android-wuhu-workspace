.class public Lcom/test/EditTextWrapper;
.super Landroid/widget/EditText;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/test/EditTextWrapper;->a:I

    iput-boolean v4, p0, Lcom/test/EditTextWrapper;->f:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/test/EditTextWrapper;->d:I

    invoke-static {}, Lcom/test/GLRenderer;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/test/GLRenderer;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetY()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/test/EditTextWrapper;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/test/EditTextWrapper;->setMinimumWidth(I)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/test/EditTextWrapper;->setMaxWidth(I)V

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/test/EditTextWrapper;->setImeOptions(I)V

    const/high16 v2, 0x2000

    invoke-virtual {p0, v2}, Lcom/test/EditTextWrapper;->setImeOptions(I)V

    invoke-virtual {p0, p2}, Lcom/test/EditTextWrapper;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/test/EditTextWrapper;->setMaxLines(I)V

    invoke-virtual {p0, v3}, Lcom/test/EditTextWrapper;->setInputType(I)V

    invoke-virtual {p0, v3}, Lcom/test/EditTextWrapper;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "allowEmoji"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "allowDecoEmoji"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p3, p0, Lcom/test/EditTextWrapper;->b:I

    iput p4, p0, Lcom/test/EditTextWrapper;->c:I

    const/16 v0, 0x7d0

    invoke-virtual {v3, v4, v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Lcom/test/e;

    invoke-direct {v1, p0, v0}, Lcom/test/e;-><init>(Lcom/test/EditTextWrapper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0, v1}, Lcom/test/EditTextWrapper;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iput-object v3, p0, Lcom/test/EditTextWrapper;->e:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/test/EditTextWrapper;->e:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/test/EditTextWrapper;->b:I

    iget v2, p0, Lcom/test/EditTextWrapper;->c:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/test/EditTextWrapper;->setGravity(I)V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/test/EditTextWrapper;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/test/EditTextWrapper;->moveScreenOut()V

    invoke-virtual {p0}, Lcom/test/EditTextWrapper;->getTextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/test/EditTextWrapper;->removeIllustChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/test/EditTextWrapper;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/test/EditTextWrapper;->nativeIMEComplete(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/test/EditTextWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/test/EditTextWrapper;->a()V

    return-void
.end method


# virtual methods
.method public getTextString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/test/EditTextWrapper;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideIme()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/test/EditTextWrapper;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/test/EditTextWrapper;->moveScreenOut()V

    invoke-virtual {p0}, Lcom/test/EditTextWrapper;->getTextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/test/EditTextWrapper;->removeIllustChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/test/EditTextWrapper;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/test/EditTextWrapper;->nativeIMEComplete(Ljava/lang/String;I)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/test/EditTextWrapper;->f:Z

    return v0
.end method

.method public moveScreenOut()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/test/EditTextWrapper;->e:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public moveShowScreen()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/test/EditTextWrapper;->e:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/test/EditTextWrapper;->b:I

    iget v2, p0, Lcom/test/EditTextWrapper;->c:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public native nativeIMEComplete(Ljava/lang/String;I)V
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/test/EditTextWrapper;->a()V

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public removeIllustChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    array-length v7, v5

    move v3, v4

    move v2, v4

    :goto_0
    if-lt v3, v7, :cond_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v8

    const-string v0, "EditTextWrapper#closeIme( %d :  %x : %s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aget-char v10, v5, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    aget-char v10, v5, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v10, 0x2

    aget-char v11, v5, v3

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v9}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    aget-char v0, v5, v3

    const v9, 0xdbb7

    if-gt v9, v0, :cond_2

    const v9, 0xdbbb

    if-ge v9, v0, :cond_3

    :cond_2
    invoke-static {v8}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    :try_start_0
    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const-string v10, "Shift_JIS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v10, "EditTextWrapper#checkLength size = %d"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v10, v11}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v10, p0, Lcom/test/EditTextWrapper;->d:I

    add-int v11, v2, v0

    if-lt v10, v11, :cond_0

    add-int/2addr v0, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_2
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v2, v3

    move v3, v2

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/test/EditTextWrapper;->d:I

    return-void
.end method

.method public setHashCode(I)V
    .locals 0

    iput p1, p0, Lcom/test/EditTextWrapper;->a:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/test/EditTextWrapper;->setInputType(I)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/test/EditTextWrapper;->f:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/test/EditTextWrapper;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updatePosition(I)V
    .locals 0

    return-void
.end method
