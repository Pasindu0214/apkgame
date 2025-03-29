.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;
.source "ActionIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;
    }
.end annotation


# static fields
.field public static action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

.field public static instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;


# instance fields
.field public icon:Lcom/watabou/noosa/Image;

.field public needsLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0xffff4c

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->needsLayout:Z

    .line 3
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    const/high16 v1, 0x41c00000    # 24.0f

    .line 4
    invoke-virtual {p0, v1, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 5
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method

.method public static clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 2
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    :cond_0
    return-void
.end method

.method public static updateIcon()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    if-eqz v0, :cond_2

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    .line 6
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    invoke-interface {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;->getIcon()Lcom/watabou/noosa/Image;

    move-result-object v2

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->needsLayout:Z

    .line 9
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->destroy()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    return-void
.end method

.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_ACTION:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public declared-synchronized layout()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v3}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v3}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    :try_start_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 6
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    invoke-interface {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;->doAction()V

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 5
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v2, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->updateIcon()V

    .line 8
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->lightness:F

    goto :goto_2

    .line 9
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 10
    :goto_2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->needsLayout:Z

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->layout()V

    .line 12
    iput-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->needsLayout:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
