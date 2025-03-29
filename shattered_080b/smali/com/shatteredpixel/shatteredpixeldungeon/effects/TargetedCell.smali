.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/TargetedCell;
.super Lcom/watabou/noosa/Image;
.source "TargetedCell.java"


# instance fields
.field public alpha:F


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->TARGET:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 5
    iget-object p2, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v0, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 6
    iput v0, p2, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v0, p2, Lcom/watabou/utils/PointF;->y:F

    .line 8
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TargetedCell;->alpha:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TargetedCell;->alpha:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TargetedCell;->alpha:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TargetedCell;->alpha:F

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :goto_0
    return-void
.end method
