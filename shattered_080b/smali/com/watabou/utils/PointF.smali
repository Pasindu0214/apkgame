.class public Lcom/watabou/utils/PointF;
.super Ljava/lang/Object;
.source "PointF.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/watabou/utils/PointF;->x:F

    .line 4
    iput p2, p0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public constructor <init>(Lcom/watabou/utils/PointF;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    iput v0, p0, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    iput p1, p0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public static diff(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/utils/PointF;->x:F

    iget v2, p1, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v1, v2

    iget p0, p0, Lcom/watabou/utils/PointF;->y:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static distance(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/utils/PointF;->x:F

    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v0, v1

    .line 2
    iget p0, p0, Lcom/watabou/utils/PointF;->y:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr p0, p1

    mul-float v0, v0, v0

    mul-float p0, p0, p0

    add-float/2addr p0, v0

    float-to-double p0, p0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static inter(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;F)Lcom/watabou/utils/PointF;
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/utils/PointF;->x:F

    iget v2, p1, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p2

    add-float/2addr v2, v1

    iget p0, p0, Lcom/watabou/utils/PointF;->y:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p1, p0

    invoke-direct {v0, v2, p1}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0, p0}, Lcom/watabou/utils/PointF;-><init>(Lcom/watabou/utils/PointF;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/watabou/utils/PointF;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/watabou/utils/PointF;

    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    iget v2, p0, Lcom/watabou/utils/PointF;->x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    iget v0, p0, Lcom/watabou/utils/PointF;->y:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public invScale(F)Lcom/watabou/utils/PointF;
    .locals 1

    .line 1
    iget v0, p0, Lcom/watabou/utils/PointF;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/watabou/utils/PointF;->x:F

    .line 2
    iget v0, p0, Lcom/watabou/utils/PointF;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/watabou/utils/PointF;->y:F

    return-object p0
.end method

.method public length()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/utils/PointF;->x:F

    mul-float v0, v0, v0

    iget v1, p0, Lcom/watabou/utils/PointF;->y:F

    mul-float v1, v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public normalize()Lcom/watabou/utils/PointF;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/watabou/utils/PointF;->length()F

    move-result v0

    .line 2
    iget v1, p0, Lcom/watabou/utils/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/watabou/utils/PointF;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/utils/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/watabou/utils/PointF;->y:F

    return-object p0
.end method

.method public offset(FF)Lcom/watabou/utils/PointF;
    .locals 1

    .line 1
    iget v0, p0, Lcom/watabou/utils/PointF;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/watabou/utils/PointF;->x:F

    .line 2
    iget p1, p0, Lcom/watabou/utils/PointF;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/watabou/utils/PointF;->y:F

    return-object p0
.end method

.method public offset(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;
    .locals 2

    .line 3
    iget v0, p0, Lcom/watabou/utils/PointF;->x:F

    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/utils/PointF;->x:F

    .line 4
    iget v0, p0, Lcom/watabou/utils/PointF;->y:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/watabou/utils/PointF;->y:F

    return-object p0
.end method

.method public polar(FF)Lcom/watabou/utils/PointF;
    .locals 4

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/watabou/utils/PointF;->x:F

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float p2, p2, p1

    iput p2, p0, Lcom/watabou/utils/PointF;->y:F

    return-object p0
.end method

.method public scale(F)Lcom/watabou/utils/PointF;
    .locals 1

    .line 1
    iget v0, p0, Lcom/watabou/utils/PointF;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/watabou/utils/PointF;->x:F

    .line 2
    iget v0, p0, Lcom/watabou/utils/PointF;->y:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/watabou/utils/PointF;->y:F

    return-object p0
.end method

.method public set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;
    .locals 1

    .line 1
    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    iput v0, p0, Lcom/watabou/utils/PointF;->x:F

    .line 2
    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    iput p1, p0, Lcom/watabou/utils/PointF;->y:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/watabou/utils/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
