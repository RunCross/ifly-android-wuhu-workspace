.class Lcn/paypalm/pppayment/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/a/d;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/a/d;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Del"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v0}, Lcn/paypalm/pppayment/a/d;->a(Lcn/paypalm/pppayment/a/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v1}, Lcn/paypalm/pppayment/a/d;->a(Lcn/paypalm/pppayment/a/d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    iget-object v2, v2, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v6, :cond_1

    iget-object v2, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    iget-object v2, v2, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    iget-object v3, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    iget-object v3, v3, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    new-array v2, v4, [B

    iget-object v3, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v3}, Lcn/paypalm/pppayment/a/d;->b(Lcn/paypalm/pppayment/a/d;)[B

    move-result-object v3

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-virtual {v2}, Lcn/paypalm/pppayment/a/d;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v3}, Lcn/paypalm/pppayment/a/d;->b(Lcn/paypalm/pppayment/a/d;)[B

    move-result-object v3

    iget-object v4, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/a/d;->a()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v2}, Lcn/paypalm/pppayment/a/d;->a(Lcn/paypalm/pppayment/a/d;)Landroid/widget/TextView;

    move-result-object v2

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v1, v5, v0}, Landroid/widget/TextView;->setText([CII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    iget-object v0, v0, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    iget-object v0, v0, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v0}, Lcn/paypalm/pppayment/a/d;->a(Lcn/paypalm/pppayment/a/d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v0}, Lcn/paypalm/pppayment/a/d;->c(Lcn/paypalm/pppayment/a/d;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v0

    iget-object v0, v0, Lcn/paypalm/pppayment/BankcardPayAct;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    iget-object v1, v1, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    iget-object v1, v1, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_4

    new-array v2, v4, [B

    iget-object v3, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v3}, Lcn/paypalm/pppayment/a/d;->b(Lcn/paypalm/pppayment/a/d;)[B

    move-result-object v3

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v3}, Lcn/paypalm/pppayment/a/d;->b(Lcn/paypalm/pppayment/a/d;)[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v0}, Lcn/paypalm/pppayment/a/d;->d(Lcn/paypalm/pppayment/a/d;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v2, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v2}, Lcn/paypalm/pppayment/a/d;->b(Lcn/paypalm/pppayment/a/d;)[B

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcn/paypalm/pppayment/global/Tools;->a([BI)[B

    move-result-object v0

    iget-object v2, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v2}, Lcn/paypalm/pppayment/a/d;->b(Lcn/paypalm/pppayment/a/d;)[B

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    iget-object v1, v1, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/paypalm/pppayment/a/b;->a:Lcn/paypalm/pppayment/a/d;

    invoke-static {v0}, Lcn/paypalm/pppayment/a/d;->a(Lcn/paypalm/pppayment/a/d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, " \u2022"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
