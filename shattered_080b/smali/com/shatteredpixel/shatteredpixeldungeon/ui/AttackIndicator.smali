.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;
.source "AttackIndicator.java"


# static fields
.field public static delay:F

.field public static instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;


# instance fields
.field public candidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;"
        }
    .end annotation
.end field

.field public enabled:Z

.field public lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

.field public sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0xff4c4c

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->candidates:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->enabled:Z

    .line 5
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    const/high16 v0, 0x41c00000    # 24.0f

    .line 7
    invoke-virtual {p0, v0, v0}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->visible(Z)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->enable(Z)V

    return-void
.end method

.method public static target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    move-object v2, p0

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->updateImage()V

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;

    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized checkEnemies()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemy(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->candidates:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    goto :goto_1

    .line 9
    :cond_2
    iput-boolean v3, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->candidates:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 11
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->updateImage()V

    .line 12
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->lightness:F

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_4

    .line 14
    iput-boolean v3, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 15
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->lightness:F

    .line 16
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->visible(Z)V

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->enable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public createChildren()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->createChildren()V

    return-void
.end method

.method public final declared-synchronized enable(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->enabled:Z

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_ATTACK:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public declared-synchronized layout()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    invoke-static {v2, v4, v3, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->enabled:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->handle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    :cond_0
    return-void
.end method

.method public declared-synchronized update()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->enable(Z)V

    .line 4
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->delay:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->delay:F

    sget v3, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v3

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->delay:F

    .line 5
    :cond_0
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->delay:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f400000    # 0.75f

    .line 6
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->delay:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->enable(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->visible(Z)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->enable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateImage()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->linkVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iput-boolean v1, v0, Lcom/watabou/noosa/MovieClip;->paused:Z

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->layout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized visible(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    iput-boolean p1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iput-boolean p1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
