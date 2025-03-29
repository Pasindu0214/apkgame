.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;
.super Lcom/watabou/noosa/Group;
.source "CavesLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vein"
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
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;->pos:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 3
    invoke-static {p1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;->delay:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;->pos:I

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

    if-eqz v0, :cond_2

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;->delay:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;->delay:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;->pos:I

    aget v0, v0, v1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/watabou/noosa/Group;->kill()V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;->delay:F

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v0

    .line 8
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Sparkle;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Sparkle;

    iget v2, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v3, 0x41800000    # 16.0f

    .line 9
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v4

    add-float/2addr v4, v2

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    .line 10
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    add-float/2addr v2, v0

    .line 11
    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 12
    iput v4, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 13
    iput v2, v1, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    iput v0, v1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput v0, v1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    :cond_2
    return-void
.end method
