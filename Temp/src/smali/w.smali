.class final Lw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lv;

.field private final synthetic b:Landroid/telephony/PhoneStateListener;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lv;Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    iput-object p1, p0, Lw;->a:Lv;

    iput-object p2, p0, Lw;->b:Landroid/telephony/PhoneStateListener;

    iput p3, p0, Lw;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lw;->a:Lv;

    iget-object v1, p0, Lw;->b:Landroid/telephony/PhoneStateListener;

    iget v2, p0, Lw;->c:I

    invoke-virtual {v0, v1, v2}, Lv;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
