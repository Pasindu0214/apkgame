.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;
.super Lcom/watabou/noosa/Group;
.source "Chains.java"


# instance fields
.field public callback:Lcom/watabou/utils/Callback;

.field public chains:[Lcom/watabou/noosa/Image;

.field public distance:F

.field public duration:F

.field public from:Lcom/watabou/utils/PointF;

.field public numChains:I

.field public rotation:F

.field public spent:F

.field public to:Lcom/watabou/utils/PointF;


# direct methods
.method public constructor <init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/watabou/utils/Callback;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->spent:F

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->rotation:F

    .line 4
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->callback:Lcom/watabou/utils/Callback;

    .line 5
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->from:Lcom/watabou/utils/PointF;

    .line 6
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->to:Lcom/watabou/utils/PointF;

    .line 7
    iget p3, p2, Lcom/watabou/utils/PointF;->x:F

    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr p3, v0

    .line 8
    iget p2, p2, Lcom/watabou/utils/PointF;->y:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr p2, p1

    float-to-double v0, p3

    float-to-double p1, p2

    .line 9
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p3, v2

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->distance:F

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr p3, v2

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr p3, v2

    .line 10
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->duration:F

    .line 11
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p1, p1, v0

    double-to-float p1, p1

    const/high16 p2, 0x42b40000    # 90.0f

    add-float/2addr p1, p2

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->rotation:F

    .line 12
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->distance:F

    const/high16 p2, 0x40c00000    # 6.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->numChains:I

    .line 13
    new-array p1, p1, [Lcom/watabou/noosa/Image;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->chains:[Lcom/watabou/noosa/Image;

    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->chains:[Lcom/watabou/noosa/Image;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 15
    new-instance p3, Lcom/watabou/noosa/Image;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->CHAIN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 16
    invoke-direct {p3}, Lcom/watabou/noosa/Image;-><init>()V

    .line 17
    invoke-virtual {p3, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 18
    aput-object p3, p2, p1

    .line 19
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->chains:[Lcom/watabou/noosa/Image;

    aget-object p3, p2, p1

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->rotation:F

    iput v0, p3, Lcom/watabou/noosa/Visual;->angle:F

    .line 20
    aget-object p3, p2, p1

    iget-object p3, p3, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/watabou/noosa/Visual;->width()F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->chains:[Lcom/watabou/noosa/Image;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v0

    .line 21
    iput p2, p3, Lcom/watabou/utils/PointF;->x:F

    .line 22
    iput v0, p3, Lcom/watabou/utils/PointF;->y:F

    .line 23
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->chains:[Lcom/watabou/noosa/Image;

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public update()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->spent:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->spent:F

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->duration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->callback:Lcom/watabou/utils/Callback;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->to:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->from:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v1, v3

    .line 6
    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    iget v2, v2, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->chains:[Lcom/watabou/noosa/Image;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 8
    aget-object v4, v3, v2

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->from:Lcom/watabou/utils/PointF;

    iget v6, v5, Lcom/watabou/utils/PointF;->x:F

    int-to-float v7, v2

    array-length v8, v3

    int-to-float v8, v8

    div-float v8, v7, v8

    mul-float v8, v8, v1

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->spent:F

    iget v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;->duration:F

    div-float v11, v9, v10

    mul-float v11, v11, v8

    add-float/2addr v11, v6

    iget v5, v5, Lcom/watabou/utils/PointF;->y:F

    array-length v3, v3

    int-to-float v3, v3

    div-float/2addr v7, v3

    mul-float v7, v7, v0

    div-float/2addr v9, v10

    mul-float v9, v9, v7

    add-float/2addr v9, v5

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v11, v3

    iput v11, v4, Lcom/watabou/noosa/Visual;->x:F

    .line 10
    invoke-virtual {v4}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    div-float/2addr v3, v5

    sub-float/2addr v9, v3

    iput v9, v4, Lcom/watabou/noosa/Visual;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    throw v0

    :cond_2
    :goto_1
    return-void
.end method
