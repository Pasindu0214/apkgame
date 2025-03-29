.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;
.source "ResumeIndicator.java"


# instance fields
.field public icon:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0xcdd5c0

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;-><init>(I)V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->createChildren()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->ARROW:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;->icon:Lcom/watabou/noosa/Image;

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_RESUME:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->damageInterrupt:Z

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eq v0, v2, :cond_3

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->lightness:F

    .line 6
    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->update()V

    return-void
.end method
