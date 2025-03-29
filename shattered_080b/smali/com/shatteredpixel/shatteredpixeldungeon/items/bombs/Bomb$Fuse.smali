.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "Bomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fuse"
.end annotation


# instance fields
.field public bomb:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    const/16 v0, -0x9

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;->bomb:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    const/4 v1, 0x1

    if-eq v0, p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 4
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;->bomb:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;->bomb:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    instance-of v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker;

    if-eqz v4, :cond_4

    .line 6
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;

    invoke-static {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;

    if-eqz v0, :cond_2

    .line 8
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->floor:I

    .line 9
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->cell:I

    const/4 v3, 0x6

    .line 10
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker$Trigger;->left:I

    .line 11
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 12
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "snd_alert.mp3"

    .line 13
    invoke-virtual {v0, v4, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v5, v0, v3

    .line 15
    invoke-virtual {v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->beckon(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_2
    throw v3

    .line 17
    :cond_3
    throw v3

    .line 18
    :cond_4
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;->bomb:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    :cond_6
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 22
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    .line 23
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    return v1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;->bomb:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    .line 25
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    return v1
.end method
