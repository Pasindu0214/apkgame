.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;
.super Lcom/watabou/noosa/Group;
.source "WindParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wind"
.end annotation


# instance fields
.field public delay:F

.field public pos:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->pos:I

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 4
    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->x:F

    .line 5
    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->y:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 6
    invoke-static {p1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->delay:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->delay:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->delay:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 4
    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->delay:F

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->x:F

    const/high16 v2, 0x41800000    # 16.0f

    .line 6
    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v3

    add-float/2addr v3, v1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;->y:F

    .line 7
    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    add-float/2addr v2, v1

    .line 8
    invoke-virtual {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;->reset(FF)V

    :cond_1
    return-void
.end method
