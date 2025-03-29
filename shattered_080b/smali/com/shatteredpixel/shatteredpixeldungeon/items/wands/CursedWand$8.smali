.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$8;
.super Ljava/lang/Object;
.source "CursedWand.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$afterZap:Lcom/watabou/utils/Callback;

.field public final synthetic val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

.field public final synthetic val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$8;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$8;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$8;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$8;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$8;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;-><init>()V

    const/high16 v2, 0x41200000    # 10.0f

    .line 6
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;->lifespan:F

    .line 7
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 8
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->destroy()V

    .line 9
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 10
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 12
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 13
    iget v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 15
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "nothing"

    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$8;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method
