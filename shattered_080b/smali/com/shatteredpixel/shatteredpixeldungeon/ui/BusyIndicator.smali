.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/BusyIndicator;
.super Lcom/watabou/noosa/Image;
.source "BusyIndicator.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->BUSY:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v3, v2

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v0, 0x44340000    # 720.0f

    .line 8
    iput v0, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9
    throw v0
.end method


# virtual methods
.method public update()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method
