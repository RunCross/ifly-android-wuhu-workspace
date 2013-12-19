.class Lcn/paypalm/pppayment/b;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/UserMessageAct;


# direct methods
.method public constructor <init>(Lcn/paypalm/pppayment/UserMessageAct;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/b;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/b;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "address"

    aput-object v3, v2, v9

    const-string v3, "read"

    aput-object v3, v2, v10

    const-string v3, "body"

    aput-object v3, v2, v11

    const-string v3, "date"

    aput-object v3, v2, v12

    const/4 v3, 0x5

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string v0, "date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v0, ""

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_0
    iget-object v0, p0, Lcn/paypalm/pppayment/b;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "address"

    aput-object v3, v2, v9

    const-string v3, "read"

    aput-object v3, v2, v10

    const-string v3, "body"

    aput-object v3, v2, v11

    const-string v3, "date"

    aput-object v3, v2, v12

    const/4 v3, 0x5

    const-string v4, "type"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcn/paypalm/pppayment/b;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/UserMessageAct;->y(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/paypalm/pppayment/b;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v4}, Lcn/paypalm/pppayment/UserMessageAct;->z(Lcn/paypalm/pppayment/UserMessageAct;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "date"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/paypalm/pppayment/b;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/UserMessageAct;->k(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/b;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v3, v1}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/b;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->k(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/b;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/UserMessageAct;->k(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    move-object v6, v0

    goto/16 :goto_0
.end method
