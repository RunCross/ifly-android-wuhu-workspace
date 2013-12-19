.class Lmm/purchasesdk/ui/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic b:Lmm/purchasesdk/ui/y;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/y;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {}, Lmm/purchasesdk/l/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    iget-object v0, v0, Lmm/purchasesdk/ui/y;->a:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0, v2}, Lmm/purchasesdk/ui/y;->f(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/ui/y;->f(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0, v2}, Lmm/purchasesdk/ui/y;->f(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/ui/y;->f(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    iget-object v0, v0, Lmm/purchasesdk/ui/y;->a:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/ui/y;->f(Z)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0, v2}, Lmm/purchasesdk/ui/y;->f(Z)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/ui/y;->f(Z)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lmm/purchasesdk/ui/z;->b:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0, v2}, Lmm/purchasesdk/ui/y;->f(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
