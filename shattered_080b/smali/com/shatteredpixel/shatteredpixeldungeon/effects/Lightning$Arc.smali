.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;
.super Lcom/watabou/noosa/Group;
.source "Lightning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arc"
.end annotation


# instance fields
.field public arc1:Lcom/watabou/noosa/Image;

.field public arc2:Lcom/watabou/noosa/Image;

.field public end:Lcom/watabou/utils/PointF;

.field public start:Lcom/watabou/utils/PointF;


# direct methods
.method public constructor <init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->start:Lcom/watabou/utils/PointF;

    .line 3
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->end:Lcom/watabou/utils/PointF;

    .line 4
    new-instance p1, Lcom/watabou/noosa/Image;

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->LIGHTNING:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;)Lcom/watabou/noosa/Image;

    move-result-object p2

    .line 5
    invoke-direct {p1}, Lcom/watabou/noosa/Image;-><init>()V

    .line 6
    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 7
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc1:Lcom/watabou/noosa/Image;

    .line 8
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->start:Lcom/watabou/utils/PointF;

    iget v0, p2, Lcom/watabou/utils/PointF;->x:F

    iget-object v1, p1, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v0, v2

    iput v0, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 9
    iget p2, p2, Lcom/watabou/utils/PointF;->y:F

    iget v0, v1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr p2, v0

    iput p2, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 10
    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->height()F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 v0, 0x0

    .line 11
    iput v0, v1, Lcom/watabou/utils/PointF;->x:F

    .line 12
    iput p1, v1, Lcom/watabou/utils/PointF;->y:F

    .line 13
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc1:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    new-instance p1, Lcom/watabou/noosa/Image;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->LIGHTNING:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;)Lcom/watabou/noosa/Image;

    move-result-object v1

    .line 15
    invoke-direct {p1}, Lcom/watabou/noosa/Image;-><init>()V

    .line 16
    invoke-virtual {p1, v1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 17
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc2:Lcom/watabou/noosa/Image;

    .line 18
    iget-object v1, p1, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->height()F

    move-result p1

    div-float/2addr p1, p2

    .line 19
    iput v0, v1, Lcom/watabou/utils/PointF;->x:F

    .line 20
    iput p1, v1, Lcom/watabou/utils/PointF;->y:F

    .line 21
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc2:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->update()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->start:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->end:Lcom/watabou/utils/PointF;

    iget v1, v1, Lcom/watabou/utils/PointF;->x:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, -0x3f800000    # -4.0f

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v4

    add-float/2addr v4, v0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->start:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->end:Lcom/watabou/utils/PointF;

    iget v5, v5, Lcom/watabou/utils/PointF;->y:F

    add-float/2addr v0, v5

    div-float/2addr v0, v1

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    add-float/2addr v1, v0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->start:Lcom/watabou/utils/PointF;

    iget v2, v0, Lcom/watabou/utils/PointF;->x:F

    sub-float v2, v4, v2

    .line 4
    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    sub-float v0, v1, v0

    .line 5
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc1:Lcom/watabou/noosa/Image;

    float-to-double v5, v0

    float-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v7, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v5, v5, v7

    double-to-float v5, v5

    iput v5, v3, Lcom/watabou/noosa/Visual;->angle:F

    .line 6
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc1:Lcom/watabou/noosa/Image;

    iget-object v3, v3, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    mul-float v2, v2, v2

    mul-float v0, v0, v0

    add-float/2addr v0, v2

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc1:Lcom/watabou/noosa/Image;

    iget v2, v2, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr v0, v2

    iput v0, v3, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->end:Lcom/watabou/utils/PointF;

    iget v2, v0, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v2, v4

    .line 8
    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v0, v1

    .line 9
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc2:Lcom/watabou/noosa/Image;

    float-to-double v5, v0

    float-to-double v9, v2

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    mul-double v5, v5, v7

    double-to-float v5, v5

    iput v5, v3, Lcom/watabou/noosa/Visual;->angle:F

    .line 10
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc2:Lcom/watabou/noosa/Image;

    iget-object v3, v3, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    mul-float v2, v2, v2

    mul-float v0, v0, v0

    add-float/2addr v0, v2

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc2:Lcom/watabou/noosa/Image;

    iget v5, v2, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr v0, v5

    iput v0, v3, Lcom/watabou/utils/PointF;->x:F

    .line 11
    iget-object v0, v2, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v4, v0

    iput v4, v2, Lcom/watabou/noosa/Visual;->x:F

    sub-float/2addr v1, v0

    .line 12
    iput v1, v2, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method
