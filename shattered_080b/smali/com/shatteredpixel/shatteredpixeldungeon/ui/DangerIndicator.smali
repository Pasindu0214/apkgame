.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;
.source "DangerIndicator.java"


# instance fields
.field public enemyIndex:I

.field public icon:Lcom/watabou/noosa/Image;

.field public lastNumber:I

.field public number:Lcom/watabou/noosa/BitmapText;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0xff4c4c

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->enemyIndex:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->lastNumber:I

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, 0x41800000    # 16.0f

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 5
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->createChildren()V

    .line 2
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    const-string v2, ""

    .line 3
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->number:Lcom/watabou/noosa/BitmapText;

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SKULL:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->icon:Lcom/watabou/noosa/Image;

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 10
    throw v0
.end method

.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_DANGER:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->placeNumber()V

    return-void
.end method

.method public onClick()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->enemyIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->enemyIndex:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemy(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 5
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    if-nez v1, :cond_1

    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    const/high16 v2, 0x40a00000    # 5.0f

    .line 6
    iput-object v0, v1, Lcom/watabou/noosa/Camera;->panTarget:Lcom/watabou/utils/PointF;

    .line 7
    iput v2, v1, Lcom/watabou/noosa/Camera;->panIntensity:F

    const/4 v0, 0x0

    .line 8
    iput-object v0, v1, Lcom/watabou/noosa/Camera;->followTarget:Lcom/watabou/noosa/Visual;

    :cond_1
    return-void
.end method

.method public final placeNumber()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->number:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->number:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->number:Lcom/watabou/noosa/BitmapText;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->baseLine()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->number:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    return-void
.end method

.method public update()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies()I

    move-result v0

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->lastNumber:I

    if-eq v0, v2, :cond_2

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->lastNumber:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->number:Lcom/watabou/noosa/BitmapText;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->lastNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->number:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;->placeNumber()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->lightness:F

    goto :goto_0

    .line 10
    :cond_1
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 11
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->update()V

    return-void
.end method
