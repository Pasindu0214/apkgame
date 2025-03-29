.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;
.source "PitfallTrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayedPit"
.end annotation


# instance fields
.field public depth:I

.field public pos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;-><init>()V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;->depth:I

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ne v0, v1, :cond_6

    .line 2
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget v3, v0, v2

    .line 3
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;->pos:I

    add-int v5, v4, v3

    .line 4
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    add-int v8, v4, v3

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    add-int/2addr v4, v3

    aget-boolean v4, v6, v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;->pos:I

    add-int/2addr v4, v3

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->floor(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PitfallParticle;->FACTORY8:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 6
    invoke-virtual {v3, v4, v7, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 7
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v3, v5}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v3, :cond_2

    .line 8
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 9
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->dropToChasm(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->kill()V

    .line 11
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->discard(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    .line 12
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v3, v5}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 13
    :cond_2
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 14
    iget-boolean v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v4, v6, :cond_3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 15
    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    :cond_3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v3, v4, :cond_4

    .line 17
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;->heroFall(I)V

    goto :goto_2

    .line 18
    :cond_4
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;->mobFall(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    const/4 v0, 0x1

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "pos"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;->pos:I

    const-string v0, "depth"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;->depth:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;->pos:I

    const-string v1, "pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;->depth:I

    const-string v1, "depth"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
