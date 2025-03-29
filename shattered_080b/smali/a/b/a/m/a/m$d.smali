.class public La/b/a/m/a/m$d;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/m/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:La/b/a/m/a/m;


# direct methods
.method public constructor <init>(La/b/a/m/a/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/m/a/m$d;->a:La/b/a/m/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 2
    iget-object v0, p0, La/b/a/m/a/m$d;->a:La/b/a/m/a/m;

    iget-object v4, v0, La/b/a/m/a/m;->K:La/b/a/g$a;

    sget-object v5, La/b/a/g$a;->b:La/b/a/g$a;

    if-ne v4, v5, :cond_0

    .line 3
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, v0, La/b/a/m/a/m;->u:[F

    array-length v5, v0

    invoke-static {v4, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, La/b/a/m/a/m;->u:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v4, v2

    aput v5, v0, v3

    .line 5
    aget v5, v4, v3

    neg-float v5, v5

    aput v5, v0, v2

    .line 6
    aget v4, v4, v1

    aput v4, v0, v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, La/b/a/m/a/m$d;->a:La/b/a/m/a/m;

    iget-object v4, v4, La/b/a/m/a/m;->F:[F

    array-length v5, v4

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 10
    iget-object v0, p0, La/b/a/m/a/m$d;->a:La/b/a/m/a/m;

    iget-object v4, v0, La/b/a/m/a/m;->K:La/b/a/g$a;

    sget-object v5, La/b/a/g$a;->b:La/b/a/g$a;

    if-ne v4, v5, :cond_3

    .line 11
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, v0, La/b/a/m/a/m;->v:[F

    array-length v5, v0

    invoke-static {v4, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, v0, La/b/a/m/a/m;->v:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v4, v2

    aput v5, v0, v3

    .line 13
    aget v5, v4, v3

    neg-float v5, v5

    aput v5, v0, v2

    .line 14
    aget v4, v4, v1

    aput v4, v0, v1

    .line 15
    :cond_4
    :goto_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_6

    .line 16
    iget-object v0, p0, La/b/a/m/a/m$d;->a:La/b/a/m/a/m;

    iget-object v4, v0, La/b/a/m/a/m;->K:La/b/a/g$a;

    sget-object v5, La/b/a/g$a;->b:La/b/a/g$a;

    if-ne v4, v5, :cond_5

    .line 17
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, v0, La/b/a/m/a/m;->G:[F

    array-length v1, v0

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 18
    :cond_5
    iget-object v0, v0, La/b/a/m/a/m;->G:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, p1, v2

    aput v4, v0, v3

    .line 19
    aget v3, p1, v3

    neg-float v3, v3

    aput v3, v0, v2

    .line 20
    aget p1, p1, v1

    aput p1, v0, v1

    :cond_6
    :goto_2
    return-void
.end method
