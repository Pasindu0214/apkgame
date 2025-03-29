.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;
.super Ljava/lang/Object;
.source "Heap.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;
    }
.end annotation


# instance fields
.field public haunted:Z

.field public items:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public pos:I

.field public seen:Z

.field public sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

.field public type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->seen:Z

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->haunted:Z

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    return-void
.end method

.method public static burnFX(I)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 3
    sget-object p0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_burning.mp3"

    .line 4
    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v0, v1}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->kill()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->merge(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->dropsDownHeap:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    :cond_4
    return-void
.end method

.method public explode()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->MIMIC:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 4
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v4, :cond_2

    .line 5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 6
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->shatter(I)V

    goto :goto_2

    .line 7
    :cond_2
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;

    if-eqz v4, :cond_3

    .line 8
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 9
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    .line 10
    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;->findBees(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 11
    invoke-virtual {v3, v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;->updateBee(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_1

    .line 12
    :cond_3
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    if-eqz v4, :cond_4

    .line 13
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 14
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    .line 15
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explodesDestructively()Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 16
    :cond_4
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v4

    if-gtz v4, :cond_6

    iget-boolean v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    if-nez v4, :cond_6

    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 17
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-nez v4, :cond_6

    .line 18
    :cond_5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    goto :goto_3

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    if-eqz v0, :cond_9

    .line 22
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    :cond_9
    :goto_3
    return-void

    .line 23
    :cond_a
    :goto_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 24
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 25
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    .line 26
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    return-void
.end method

.method public freeze()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 3
    instance-of v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 4
    move-object v3, v4

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    .line 5
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/FrozenCarpaccio;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/FrozenCarpaccio;-><init>()V

    .line 6
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 7
    iput v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 8
    invoke-virtual {p0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->replace(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 9
    :cond_1
    instance-of v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v5, :cond_2

    instance-of v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    if-nez v5, :cond_2

    .line 10
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 11
    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->shatter(I)V

    goto :goto_1

    .line 12
    :cond_2
    instance-of v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    if-eqz v5, :cond_3

    .line 13
    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    const/4 v3, 0x0

    iput-object v3, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    goto :goto_3

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object v0
.end method

.method public pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public replace(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 7

    const-string v0, "pos"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    const-string v0, "seen"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->seen:Z

    const-string v0, "type"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, "items"

    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 7
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;

    .line 8
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->document()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages()Ljava/util/Collection;

    move-result-object v5

    .line 9
    iget-object v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    .line 10
    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->document()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    move-result-object v5

    .line 12
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    .line 13
    invoke-virtual {v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->hasPage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    :cond_0
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "haunted"

    .line 15
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->haunted:Z

    return-void
.end method

.method public setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->haunted:Z

    .line 4
    iput-boolean v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    :cond_1
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    const-string v1, "pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->seen:Z

    const-string v1, "seen"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    const-string v1, "items"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 5
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->haunted:Z

    const-string v1, "haunted"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "crystal_chest"

    .line 3
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "locked_chest"

    .line 4
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "skeleton"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "remains"

    .line 6
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "tomb"

    .line 7
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "chest"

    .line 8
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
