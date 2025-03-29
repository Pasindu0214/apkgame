.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$BlastWave;
.super Lcom/watabou/noosa/Image;
.source "WandOfBlastWave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlastWave"
.end annotation


# instance fields
.field public time:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->RIPPLE:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v3, v2

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public static blast(I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$BlastWave;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$BlastWave;

    .line 3
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->bringToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 7
    rem-int v2, p0, v0

    mul-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, v1, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v3, v5, v2}, La/a/a/a/a;->a(FFFF)F

    move-result v2

    iput v2, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 8
    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x10

    int-to-float p0, p0

    iget v0, v1, Lcom/watabou/noosa/Visual;->height:F

    invoke-static {v4, v0, v5, p0}, La/a/a/a/a;->a(FFFF)F

    move-result p0

    iput p0, v1, Lcom/watabou/noosa/Visual;->y:F

    const p0, 0x3e4ccccd    # 0.2f

    .line 9
    iput p0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$BlastWave;->time:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$BlastWave;->time:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$BlastWave;->time:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    goto :goto_0

    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 5
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v2, v2, v0

    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    :goto_0
    return-void
.end method
