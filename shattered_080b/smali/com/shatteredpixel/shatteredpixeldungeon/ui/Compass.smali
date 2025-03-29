.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;
.super Lcom/watabou/noosa/Image;
.source "Compass.java"


# instance fields
.field public cell:I

.field public cellCenter:Lcom/watabou/utils/PointF;

.field public lastScroll:Lcom/watabou/utils/PointF;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 2
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;->lastScroll:Lcom/watabou/utils/PointF;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->COMPASS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 6
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    .line 7
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    .line 9
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;->cell:I

    .line 10
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;->cellCenter:Lcom/watabou/utils/PointF;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
.end method


# virtual methods
.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;->cell:I

    const/4 v1, 0x0

    if-ltz v0, :cond_5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v3, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v3, :cond_3

    .line 5
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    aget-boolean v0, v2, v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 6
    :cond_3
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_4

    .line 7
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget-object v0, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    .line 8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;->lastScroll:Lcom/watabou/utils/PointF;

    invoke-virtual {v0, v1}, Lcom/watabou/utils/PointF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;->lastScroll:Lcom/watabou/utils/PointF;

    invoke-virtual {v1, v0}, Lcom/watabou/utils/PointF;->set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 10
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    .line 11
    iget v2, v1, Lcom/watabou/noosa/Camera;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v1, v1, Lcom/watabou/noosa/Camera;->height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 12
    iget v3, v0, Lcom/watabou/utils/PointF;->x:F

    add-float/2addr v2, v3

    .line 13
    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    add-float/2addr v1, v0

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;->cellCenter:Lcom/watabou/utils/PointF;

    iget v3, v0, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v3, v2

    float-to-double v2, v3

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee2

    mul-float v0, v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->angle:F

    :cond_4
    return-void

    .line 15
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method
