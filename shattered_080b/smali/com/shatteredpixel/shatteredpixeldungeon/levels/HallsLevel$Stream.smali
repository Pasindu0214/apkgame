.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;
.super Lcom/watabou/noosa/Group;
.source "HallsLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# instance fields
.field public delay:F

.field public pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;->pos:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 3
    invoke-static {p1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;->delay:F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setLightMode()V

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Group;->draw()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    return-void
.end method

.method public update()V
    .locals 6

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;->pos:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    return-void

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    array-length v1, v0

    if-ge v2, v1, :cond_1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;->delay:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;->delay:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;->delay:F

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v0

    .line 8
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$FireParticle;

    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$FireParticle;

    iget v3, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v4, 0x41800000    # 16.0f

    .line 9
    invoke-static {v4}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v5

    add-float/2addr v5, v3

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    .line 10
    invoke-static {v4}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v3

    add-float/2addr v3, v0

    .line 11
    invoke-virtual {v2}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 12
    iput v5, v2, Lcom/watabou/noosa/Visual;->x:F

    .line 13
    iput v3, v2, Lcom/watabou/noosa/Visual;->y:F

    .line 14
    iget v0, v2, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput v0, v2, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    .line 15
    iget-object v0, v2, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    .line 16
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, -0x3de00000    # -40.0f

    .line 17
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 18
    iput v0, v2, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    :cond_2
    return-void
.end method
