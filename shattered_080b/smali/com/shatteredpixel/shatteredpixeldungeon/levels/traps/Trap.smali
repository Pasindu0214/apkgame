.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.super Ljava/lang/Object;
.source "Trap.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# instance fields
.field public active:Z

.field public canBeHidden:Z

.field public canBeSearched:Z

.field public color:I

.field public name:Ljava/lang/String;

.field public pos:I

.field public shape:I

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->canBeHidden:Z

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->canBeSearched:Z

    return-void
.end method


# virtual methods
.method public abstract activate()V
.end method

.method public disarm()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    if-eqz v0, :cond_0

    const/16 v2, 0x13

    .line 3
    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 4
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public hide()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->canBeHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    return-object p0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    const-string v0, "pos"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    const-string v0, "visible"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    const-string v0, "active"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    :cond_0
    return-void
.end method

.method public reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    return-object p0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    const-string v1, "pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    const-string v1, "visible"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    const-string v1, "active"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public trigger()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_trap.mp3"

    .line 4
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->disarm()V

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->activate()V

    :cond_1
    return-void
.end method
