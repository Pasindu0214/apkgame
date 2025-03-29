.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Noisemaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trigger"
.end annotation


# instance fields
.field public cell:I

.field public floor:I

.field public left:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 7

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->floor:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v3

    :cond_0
    const/4 v0, 0x0

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->cell:I

    invoke-virtual {v1, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v1, :cond_2

    .line 4
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    instance-of v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker;

    if-eqz v6, :cond_1

    .line 6
    move-object v0, v5

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker;

    :cond_2
    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_1

    .line 8
    :cond_3
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->cell:I

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 9
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 13
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->cell:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 15
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->left:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->left:I

    if-gtz v0, :cond_7

    .line 16
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->cell:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x3

    invoke-virtual {v0, v1, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 17
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_alert.mp3"

    .line 18
    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 20
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->cell:I

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->beckon(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    .line 21
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->left:I

    :cond_7
    :goto_1
    return v3
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "cell"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->cell:I

    const-string v0, "floor"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->floor:I

    const-string v0, "left"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->left:I

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->cell:I

    const-string v1, "cell"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->floor:I

    const-string v1, "floor"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->left:I

    const-string v1, "left"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
