.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher;
.super Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;
.source "WandOfRegrowth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dewcatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher$Seed;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;-><init>()V

    const/16 v0, 0xd

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->image:I

    return-void
.end method


# virtual methods
.method public activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 10

    const/4 p1, 0x3

    const/4 v0, 0x6

    .line 1
    invoke-static {p1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 4
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    add-int v9, v8, v5

    aget-boolean v7, v7, v9

    if-eqz v7, :cond_0

    add-int v7, v8, v5

    iget v9, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v7, v9, :cond_0

    add-int v7, v8, v5

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    if-eq v7, v6, :cond_0

    add-int/2addr v8, v5

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Dewdrop;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Dewdrop;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v2

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    invoke-virtual {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
