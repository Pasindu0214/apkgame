.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DiscardedItemSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;
.source "DiscardedItemSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>()V

    return-void
.end method


# virtual methods
.method public drop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 3
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 4
    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v3, 0x41000000    # 8.0f

    sub-float/2addr v2, v3

    .line 7
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v0, 0x44340000    # 720.0f

    .line 9
    iput v0, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    return-void
.end method

.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->update()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 3
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 5
    iget v0, p0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 6
    iget v0, p0, Lcom/watabou/noosa/Visual;->am:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method
