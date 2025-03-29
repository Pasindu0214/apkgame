.class public Lcom/watabou/glwrap/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field public static identity:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/watabou/glwrap/Matrix;->identity:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static rotate([FF)V
    .locals 11

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 3
    aget v2, p0, v1

    const/4 v3, 0x1

    .line 4
    aget v4, p0, v3

    const/4 v5, 0x4

    .line 5
    aget v6, p0, v5

    const/4 v7, 0x5

    .line 6
    aget v8, p0, v7

    mul-float v9, v2, v0

    mul-float v10, v6, p1

    add-float/2addr v10, v9

    .line 7
    aput v10, p0, v1

    mul-float v1, v4, v0

    mul-float v9, v8, p1

    add-float/2addr v9, v1

    .line 8
    aput v9, p0, v3

    neg-float v1, v2

    mul-float v1, v1, p1

    mul-float v6, v6, v0

    add-float/2addr v6, v1

    .line 9
    aput v6, p0, v5

    neg-float v1, v4

    mul-float v1, v1, p1

    mul-float v8, v8, v0

    add-float/2addr v8, v1

    .line 10
    aput v8, p0, v7

    return-void
.end method

.method public static scale([FFF)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    mul-float v1, v1, p1

    aput v1, p0, v0

    const/4 v0, 0x1

    .line 2
    aget v1, p0, v0

    mul-float v1, v1, p1

    aput v1, p0, v0

    const/4 v0, 0x2

    .line 3
    aget v1, p0, v0

    mul-float v1, v1, p1

    aput v1, p0, v0

    const/4 v0, 0x3

    .line 4
    aget v1, p0, v0

    mul-float v1, v1, p1

    aput v1, p0, v0

    const/4 p1, 0x4

    .line 5
    aget v0, p0, p1

    mul-float v0, v0, p2

    aput v0, p0, p1

    const/4 p1, 0x5

    .line 6
    aget v0, p0, p1

    mul-float v0, v0, p2

    aput v0, p0, p1

    const/4 p1, 0x6

    .line 7
    aget v0, p0, p1

    mul-float v0, v0, p2

    aput v0, p0, p1

    const/4 p1, 0x7

    .line 8
    aget v0, p0, p1

    mul-float v0, v0, p2

    aput v0, p0, p1

    return-void
.end method

.method public static setIdentity([F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/watabou/glwrap/Matrix;->identity:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static translate([FFF)V
    .locals 4

    const/16 v0, 0xc

    .line 1
    aget v1, p0, v0

    const/4 v2, 0x0

    aget v2, p0, v2

    mul-float v2, v2, p1

    const/4 v3, 0x4

    aget v3, p0, v3

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    add-float/2addr v3, v1

    aput v3, p0, v0

    const/16 v0, 0xd

    .line 2
    aget v1, p0, v0

    const/4 v2, 0x1

    aget v2, p0, v2

    mul-float v2, v2, p1

    const/4 p1, 0x5

    aget p1, p0, p1

    mul-float p1, p1, p2

    add-float/2addr p1, v2

    add-float/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method
