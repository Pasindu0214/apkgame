.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;
.source "Shopkeeper.java"


# static fields
.field public static itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShopkeeperSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static sell()Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sell"

    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public act()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;->throwItem()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;->flee()V

    return-void
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;->flee()V

    return-void
.end method

.method public destroy()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 3
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v2, v3, :cond_0

    .line 4
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v2, v3, v5, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 6
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public flee()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper$2;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;)V

    invoke-static {p1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    return v1
.end method

.method public reset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
