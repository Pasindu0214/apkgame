.class public Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;
.super Ljava/lang/Object;
.source "Dungeon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;
    }
.end annotation


# static fields
.field public static challenges:I

.field public static chapters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static depth:I

.field public static droppedItems:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field public static gold:I

.field public static hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

.field public static level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

.field public static passable:[Z

.field public static portedItems:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field public static quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

.field public static seed:J

.field public static version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    return-void
.end method

.method public static bossLevel()Z
    .locals 1

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel(I)Z

    move-result v0

    return v0
.end method

.method public static bossLevel(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static deleteGame(IZ)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->gameFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/watabou/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->gameFolder(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/watabou/utils/FileUtils;->deleteDir(Ljava/lang/String;)Z

    .line 3
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->slotStates:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static dropToChasm(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->droppedItems:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->droppedItems:Lcom/watabou/utils/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 4
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static fail(Ljava/lang/Class;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->submit(ZLjava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static findPath(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I[Z[ZZ)Lcom/watabou/utils/PathFinder$Path;
    .locals 4

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->setupPassable()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 5
    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    .line 7
    array-length v3, p2

    invoke-static {p2, v0, v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    .line 8
    :goto_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    invoke-static {p2, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->and([Z[Z[Z)[Z

    :cond_2
    if-eqz p4, :cond_4

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 11
    iget p4, p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, p3, p4

    if-eqz v0, :cond_3

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    aput-boolean v1, v0, p4

    goto :goto_2

    .line 13
    :cond_4
    iget p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    invoke-static {p0, p1, p2}, Lcom/watabou/utils/PathFinder;->find(II[Z)Lcom/watabou/utils/PathFinder$Path;

    move-result-object p0

    return-object p0
.end method

.method public static findStep(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I[Z[ZZ)I
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p0

    if-nez p0, :cond_0

    aget-boolean p0, p2, p1

    if-nez p0, :cond_1

    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :cond_1
    :goto_0
    return p1

    .line 3
    :cond_2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->setupPassable()V

    .line 4
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 7
    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 8
    :cond_4
    :goto_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    .line 9
    array-length v3, p2

    invoke-static {p2, v0, v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    .line 10
    :goto_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    invoke-static {p2, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->and([Z[Z[Z)[Z

    :cond_5
    if-eqz p4, :cond_7

    .line 12
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 13
    iget p4, p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, p3, p4

    if-eqz v0, :cond_6

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    aput-boolean v1, v0, p4

    goto :goto_3

    .line 15
    :cond_7
    iget p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    invoke-static {p0, p1, p2}, Lcom/watabou/utils/PathFinder;->getStep(II[Z)I

    move-result p0

    return p0
.end method

.method public static flee(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I[Z[ZZ)I
    .locals 11

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->setupPassable()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    .line 4
    array-length v3, p2

    invoke-static {p2, v0, v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 7
    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :goto_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    invoke-static {p2, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->and([Z[Z[Z)[Z

    :cond_1
    if-eqz p4, :cond_3

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 11
    iget p4, p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, p3, p4

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    aput-boolean v1, v0, p4

    goto :goto_1

    .line 13
    :cond_3
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    iget p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 p3, 0x1

    aput-boolean p3, p2, p0

    .line 14
    sget-object p4, Lcom/watabou/utils/PathFinder;->maxVal:[I

    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v2, p4

    invoke-static {p4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    sget-object p4, Lcom/watabou/utils/PathFinder;->queue:[I

    aput p1, p4, v1

    .line 16
    sget-object p4, Lcom/watabou/utils/PathFinder;->distance:[I

    aput v1, p4, p1

    const p1, 0x7fffffff

    const/4 p4, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x3

    if-ge p4, v0, :cond_a

    .line 17
    sget-object v2, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v4, p4, 0x1

    aget p4, v2, p4

    .line 18
    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v2, v2, p4

    if-le v2, p1, :cond_4

    goto :goto_5

    :cond_4
    if-ne p4, p0, :cond_5

    add-int/lit8 p1, v2, 0x5

    :cond_5
    add-int/lit8 v5, v2, 0x1

    .line 19
    sget v6, Lcom/watabou/utils/PathFinder;->width:I

    rem-int v6, p4, v6

    if-nez v6, :cond_6

    const/4 v6, 0x3

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v7, p4, 0x1

    .line 20
    sget v8, Lcom/watabou/utils/PathFinder;->width:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 21
    :goto_4
    sget-object v7, Lcom/watabou/utils/PathFinder;->dirLR:[I

    array-length v8, v7

    sub-int/2addr v8, v3

    if-ge v6, v8, :cond_9

    .line 22
    aget v7, v7, v6

    add-int/2addr v7, p4

    if-ltz v7, :cond_8

    .line 23
    sget v8, Lcom/watabou/utils/PathFinder;->size:I

    if-ge v7, v8, :cond_8

    aget-boolean v8, p2, v7

    if-eqz v8, :cond_8

    sget-object v8, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v9, v8, v7

    if-le v9, v5, :cond_8

    .line 24
    sget-object v9, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v10, v0, 0x1

    aput v7, v9, v0

    .line 25
    aput v5, v8, v7

    move v0, v10

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    move p4, v4

    goto :goto_2

    :cond_a
    move p1, v2

    :goto_5
    const/4 p4, 0x0

    .line 26
    :goto_6
    sget v0, Lcom/watabou/utils/PathFinder;->size:I

    if-ge p4, v0, :cond_c

    .line 27
    sget-object v0, Lcom/watabou/utils/PathFinder;->goals:[Z

    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v2, v2, p4

    if-ne v2, p1, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_7
    aput-boolean v2, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 28
    :cond_c
    sget-object p1, Lcom/watabou/utils/PathFinder;->goals:[Z

    .line 29
    aget-boolean p4, p1, p0

    if-eqz p4, :cond_d

    goto/16 :goto_c

    .line 30
    :cond_d
    sget-object p4, Lcom/watabou/utils/PathFinder;->maxVal:[I

    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v2, p4

    invoke-static {p4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 31
    :goto_8
    sget v2, Lcom/watabou/utils/PathFinder;->size:I

    if-ge p4, v2, :cond_f

    .line 32
    aget-boolean v2, p1, p4

    if-eqz v2, :cond_e

    .line 33
    sget-object v2, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v4, v0, 0x1

    aput p4, v2, v0

    .line 34
    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    aput v1, v0, p4

    move v0, v4

    :cond_e
    add-int/lit8 p4, p4, 0x1

    goto :goto_8

    :cond_f
    const/4 p1, 0x0

    :goto_9
    if-ge p1, v0, :cond_16

    .line 35
    sget-object p4, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v2, p1, 0x1

    aget p1, p4, p1

    if-ne p1, p0, :cond_10

    goto :goto_d

    .line 36
    :cond_10
    sget-object p4, Lcom/watabou/utils/PathFinder;->distance:[I

    aget p4, p4, p1

    add-int/2addr p4, p3

    .line 37
    sget v4, Lcom/watabou/utils/PathFinder;->width:I

    rem-int v4, p1, v4

    if-nez v4, :cond_11

    const/4 v4, 0x3

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    :goto_a
    add-int/lit8 v5, p1, 0x1

    .line 38
    sget v6, Lcom/watabou/utils/PathFinder;->width:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_12

    const/4 v5, 0x3

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    .line 39
    :goto_b
    sget-object v6, Lcom/watabou/utils/PathFinder;->dirLR:[I

    array-length v7, v6

    sub-int/2addr v7, v5

    if-ge v4, v7, :cond_15

    .line 40
    aget v6, v6, v4

    add-int/2addr v6, p1

    if-eq v6, p0, :cond_13

    if-ltz v6, :cond_14

    .line 41
    sget v7, Lcom/watabou/utils/PathFinder;->size:I

    if-ge v6, v7, :cond_14

    aget-boolean v7, p2, v6

    if-eqz v7, :cond_14

    sget-object v7, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v7, v7, v6

    if-le v7, p4, :cond_14

    .line 42
    :cond_13
    sget-object v7, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v8, v0, 0x1

    aput v6, v7, v0

    .line 43
    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    aput p4, v0, v6

    move v0, v8

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_15
    move p1, v2

    goto :goto_9

    :cond_16
    :goto_c
    const/4 p3, 0x0

    :goto_d
    if-nez p3, :cond_17

    const/4 p0, -0x1

    goto :goto_f

    .line 44
    :cond_17
    sget-object p1, Lcom/watabou/utils/PathFinder;->distance:[I

    aget p1, p1, p0

    move p2, p1

    move p1, p0

    .line 45
    :goto_e
    sget-object p3, Lcom/watabou/utils/PathFinder;->dir:[I

    array-length p4, p3

    if-ge v1, p4, :cond_19

    .line 46
    aget p3, p3, v1

    add-int/2addr p3, p0

    .line 47
    sget-object p4, Lcom/watabou/utils/PathFinder;->distance:[I

    aget p4, p4, p3

    if-ge p4, p2, :cond_18

    move p1, p3

    move p2, p4

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_19
    move p0, p1

    :goto_f
    return p0
.end method

.method public static isChallenged(I)Z
    .locals 1

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadGame(I)V
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->gameFile(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p0

    const-string v0, "version"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->version:I

    const-string v0, "seed"

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v1, v0}, Lb/a/c;->f(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 6
    :cond_0
    throw v4

    .line 7
    :cond_1
    invoke-static {}, Lcom/watabou/utils/Random;->Long()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    const-wide v2, 0x7fffffffffffffffL

    add-long/2addr v0, v2

    :cond_2
    const-wide v2, 0x4f027a35a00L

    .line 8
    rem-long v2, v0, v2

    .line 9
    :goto_0
    sput-wide v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    .line 10
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreNextID(Lcom/watabou/utils/Bundle;)V

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->reset()V

    .line 12
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->reset()V

    const-string v0, "challenges"

    .line 13
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    .line 14
    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v0, -0x1

    .line 15
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 16
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->scrolls:[Ljava/lang/Class;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->runes:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;-><init>([Ljava/lang/Class;Ljava/util/HashMap;Lcom/watabou/utils/Bundle;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 17
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->potions:[Ljava/lang/Class;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->colors:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;-><init>([Ljava/lang/Class;Ljava/util/HashMap;Lcom/watabou/utils/Bundle;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 18
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->rings:[Ljava/lang/Class;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->gems:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;-><init>([Ljava/lang/Class;Ljava/util/HashMap;Lcom/watabou/utils/Bundle;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 19
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    if-eqz v1, :cond_1d

    const-string v2, "placeholders"

    .line 20
    invoke-virtual {p0, v2}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    const-string v3, "placements"

    .line 21
    invoke-virtual {p0, v3}, Lcom/watabou/utils/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    .line 22
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/watabou/utils/Bundlable;

    .line 23
    :goto_2
    aget-boolean v8, v3, v6

    if-nez v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 24
    :cond_3
    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "depth"

    const-string v2, "limited_drops"

    .line 25
    invoke-virtual {p0, v2}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v2

    .line 26
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    aget-object v8, v3, v7

    .line 27
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 28
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    goto :goto_4

    .line 29
    :cond_5
    iput v5, v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 30
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->chapters:Ljava/util/HashSet;

    const-string v2, "chapters"

    .line 31
    invoke-virtual {p0, v2}, Lcom/watabou/utils/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_7

    .line 32
    array-length v3, v2

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v3, :cond_7

    aget v7, v2, v6

    .line 33
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->chapters:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    const-string v2, "quests"

    .line 34
    invoke-virtual {p0, v2}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/watabou/utils/Bundle;->isNull()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "sadGhost"

    .line 36
    invoke-virtual {v2, v3}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/watabou/utils/Bundle;->isNull()Z

    move-result v6

    const-string v7, "type"

    const-string v8, "given"

    const-string v9, "spawned"

    if-nez v6, :cond_8

    invoke-virtual {v3, v9}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned:Z

    if-eqz v6, :cond_8

    .line 38
    invoke-virtual {v3, v7}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type:I

    .line 39
    invoke-virtual {v3, v8}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given:Z

    const-string v6, "processed"

    .line 40
    invoke-virtual {v3, v6}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed:Z

    .line 41
    invoke-virtual {v3, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->depth:I

    const-string v6, "weapon"

    .line 42
    invoke-virtual {v3, v6}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v6

    .line 43
    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const-string v6, "armor"

    .line 44
    invoke-virtual {v3, v6}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v3

    .line 45
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    goto :goto_6

    .line 46
    :cond_8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reset()V

    :goto_6
    const-string v3, "wandmaker"

    .line 47
    invoke-virtual {v2, v3}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/watabou/utils/Bundle;->isNull()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v3, v9}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned2:Z

    if-eqz v6, :cond_9

    .line 49
    invoke-virtual {v3, v7}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type1:I

    .line 50
    invoke-virtual {v3, v8}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given2:Z

    const-string v6, "wand1"

    .line 51
    invoke-virtual {v3, v6}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v6

    .line 52
    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const-string v6, "wand2"

    .line 53
    invoke-virtual {v3, v6}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v6

    .line 54
    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand2:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 55
    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type1:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    const-string v6, "ritualpos"

    .line 56
    invoke-virtual {v3, v6}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    goto :goto_7

    .line 57
    :cond_9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reset2()V

    :cond_a
    :goto_7
    const-string v3, "blacksmith"

    .line 58
    invoke-virtual {v2, v3}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/watabou/utils/Bundle;->isNull()Z

    move-result v6

    const-string v7, "completed"

    const-string v10, "alternative"

    if-nez v6, :cond_b

    invoke-virtual {v3, v9}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, La/b/a/e;->spawned:Z

    if-eqz v6, :cond_b

    .line 60
    invoke-virtual {v3, v10}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, La/b/a/e;->alternative:Z

    .line 61
    invoke-virtual {v3, v8}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, La/b/a/e;->given:Z

    .line 62
    invoke-virtual {v3, v7}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, La/b/a/e;->completed:Z

    const-string v6, "reforged"

    .line 63
    invoke-virtual {v3, v6}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, La/b/a/e;->reforged:Z

    goto :goto_8

    .line 64
    :cond_b
    invoke-static {}, La/b/a/e;->reset()V

    :goto_8
    const-string v3, "demon"

    .line 65
    invoke-virtual {v2, v3}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/watabou/utils/Bundle;->isNull()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2, v9}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned1:Z

    if-eqz v3, :cond_d

    .line 67
    invoke-virtual {v2, v10}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->alternative:Z

    .line 68
    invoke-virtual {v2, v8}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given1:Z

    .line 69
    invoke-virtual {v2, v7}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed:Z

    const-string v3, "reward"

    .line 70
    invoke-virtual {v2, v3}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v2

    .line 71
    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reward:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    goto :goto_9

    .line 72
    :cond_c
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reset()V

    .line 73
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reset2()V

    .line 74
    invoke-static {}, La/b/a/e;->reset()V

    .line 75
    sput-boolean v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned1:Z

    .line 76
    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reward:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 77
    :cond_d
    :goto_9
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v2, "special_rooms"

    .line 78
    invoke-virtual {p0, v2}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 79
    invoke-virtual {p0, v2}, Lcom/watabou/utils/Bundle;->getClassArray(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_10

    aget-object v6, v0, v3

    if-eqz v6, :cond_e

    .line 80
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/LaboratoryRoom;

    if-eq v6, v7, :cond_e

    .line 81
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 82
    :cond_f
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->ALL_SPEC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    .line 83
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    .line 84
    invoke-static {v2}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    .line 85
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "specials array didn\'t exist!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :cond_10
    const-string v0, "pit_needed"

    .line 86
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    .line 87
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->runSecrets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "secret_rooms"

    .line 88
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 89
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getClassArray(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_12

    aget-object v6, v0, v3

    if-eqz v6, :cond_11

    .line 90
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->runSecrets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_12
    const-string v0, "region_secrets"

    .line 91
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->regionSecretsThisRun:[I

    goto :goto_c

    .line 92
    :cond_13
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->initForRun()V

    .line 93
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "secrets array didn\'t exist!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_c
    const-string v0, "badges"

    .line 94
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->isNull()Z

    move-result v2

    if-nez v2, :cond_14

    .line 96
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->restore(Lcom/watabou/utils/Bundle;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    goto :goto_d

    .line 97
    :cond_14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 98
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->loadGlobal()V

    .line 99
    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    const-string v0, "records"

    .line 100
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/utils/Bundlable;

    .line 101
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 102
    :cond_15
    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-string v0, "hero"

    .line 103
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 104
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-string v0, "alchemy_inputs"

    .line 105
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 106
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/utils/Bundlable;

    .line 107
    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 108
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_17
    const-string v0, "gold"

    .line 109
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    .line 110
    invoke-virtual {p0, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 111
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 112
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 113
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->droppedItems:Lcom/watabou/utils/SparseArray;

    .line 114
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->portedItems:Lcom/watabou/utils/SparseArray;

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_10
    const/16 v2, 0x1a

    if-gt v1, v2, :cond_1c

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-array v3, v0, [Ljava/lang/Object;

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "dropped%d"

    invoke-static {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    new-array v3, v0, [Ljava/lang/Object;

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/watabou/utils/Bundlable;

    .line 118
    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 119
    :cond_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 120
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->droppedItems:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v3, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-array v3, v0, [Ljava/lang/Object;

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "ported%d"

    invoke-static {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    new-array v3, v0, [Ljava/lang/Object;

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/watabou/utils/Bundlable;

    .line 124
    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 125
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 126
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->portedItems:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v3, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    :cond_1c
    return-void

    .line 127
    :cond_1d
    goto :goto_14

    :goto_13
    throw v4

    :goto_14
    goto :goto_13
.end method

.method public static loadLevel(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->clear()V

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->depthFile(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p0

    const-string v0, "level"

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p0

    .line 5
    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    if-eqz p0, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static newLevel()Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->clear()V

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 4
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    if-le v0, v2, :cond_1

    .line 5
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    .line 6
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->qualifiedForNoKilling:Z

    if-eqz v0, :cond_0

    .line 7
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->completedWithNoKilling:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->completedWithNoKilling:Z

    .line 9
    :cond_1
    :goto_0
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    packed-switch v0, :pswitch_data_0

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/DeadEndLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/DeadEndLevel;-><init>()V

    .line 11
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    sub-int/2addr v2, v1

    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    goto/16 :goto_1

    .line 12
    :pswitch_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel;-><init>()V

    goto/16 :goto_1

    .line 13
    :pswitch_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel;-><init>()V

    goto/16 :goto_1

    .line 14
    :pswitch_2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;-><init>()V

    goto :goto_1

    .line 15
    :pswitch_3
    :try_start_0
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->depthFile(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    const-string v2, "level"

    .line 16
    invoke-virtual {v0, v2}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    const-string v2, "__className"

    invoke-virtual {v0, v2}, Lcom/watabou/utils/Bundle;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;

    if-ne v0, v2, :cond_2

    .line 18
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;-><init>()V

    goto :goto_1

    .line 19
    :cond_2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastShopLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastShopLevel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 21
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;-><init>()V

    goto :goto_1

    .line 22
    :pswitch_4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;-><init>()V

    goto :goto_1

    .line 23
    :pswitch_5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;-><init>()V

    goto :goto_1

    .line 24
    :pswitch_6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;-><init>()V

    goto :goto_1

    .line 25
    :pswitch_7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;-><init>()V

    goto :goto_1

    .line 26
    :pswitch_8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;-><init>()V

    goto :goto_1

    .line 27
    :pswitch_9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;-><init>()V

    goto :goto_1

    .line 28
    :pswitch_a
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;-><init>()V

    goto :goto_1

    .line 29
    :pswitch_b
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;-><init>()V

    .line 30
    :goto_1
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->create()V

    .line 31
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v2

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->qualifiedForNoKilling:Z

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static observe()V
    .locals 10

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 5
    rem-int v2, v0, v1

    .line 6
    div-int/2addr v0, v1

    add-int/lit8 v1, v2, -0xd

    const/4 v3, 0x0

    .line 7
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0xd

    .line 8
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 9
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/lit8 v4, v4, -0x1

    .line 10
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v4, v0, -0xd

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, 0xd

    .line 12
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 13
    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v5, v5, -0x1

    .line 14
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    sub-int v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    .line 15
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 16
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v6, v6, v4

    add-int/2addr v6, v1

    move v7, v4

    :goto_0
    if-gt v7, v0, :cond_1

    .line 17
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    invoke-static {v9, v8, v6, v2, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    .line 18
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 19
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->fog:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updateFogArea(IIII)V

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->wallBlocking:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->updateArea(IIII)V

    .line 23
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MindVision;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    .line 24
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    new-array v4, v3, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v4, v0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 25
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    iget-object v8, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v9, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/lit8 v9, v9, -0x1

    .line 26
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v9, v6

    .line 27
    invoke-static {v7, v8, v9, v2, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    .line 28
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v8, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v7, v6, v8, v2, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    .line 29
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    iget-object v8, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v9, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/lit8 v9, v9, -0x1

    .line 30
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v9, v6

    .line 31
    invoke-static {v7, v8, v9, v2, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    .line 32
    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 33
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Awareness;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 34
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 35
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    iget-object v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    add-int/lit8 v7, v7, -0x1

    .line 36
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v7, v4

    .line 37
    invoke-static {v5, v6, v7, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    .line 38
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v4, v6, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    .line 39
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    iget-object v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    add-int/lit8 v7, v7, -0x1

    .line 40
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v7, v4

    .line 41
    invoke-static {v5, v6, v7, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    .line 42
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-static {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog(II)V

    goto :goto_2

    .line 43
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_6

    .line 44
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 45
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v2, :cond_5

    .line 46
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v1, v3, v1

    iput-boolean v1, v2, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public static preview(Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;Lcom/watabou/utils/Bundle;)V
    .locals 1

    const-string v0, "depth"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->depth:I

    const-string v0, "version"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->version:I

    const-string v0, "challenges"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->challenges:I

    const-string v0, "hero"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->preview(Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;Lcom/watabou/utils/Bundle;)V

    const-string v0, "score"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->goldCollected:I

    const-string v0, "maxDepth"

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->maxDepth:I

    return-void
.end method

.method public static saveAll()V
    .locals 12

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->fixTime()V

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    .line 4
    :try_start_0
    new-instance v1, Lcom/watabou/utils/Bundle;

    invoke-direct {v1}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 5
    sget v2, Lcom/watabou/noosa/Game;->versionCode:I

    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->version:I

    const-string v3, "version"

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    const-string v2, "seed"

    .line 7
    sget-wide v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    .line 8
    :try_start_1
    iget-object v6, v1, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    if-eqz v6, :cond_0

    .line 9
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6, v2, v7}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;

    goto :goto_0

    :cond_0
    throw v5
    :try_end_1
    .catch Lb/a/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v2

    .line 10
    :try_start_2
    invoke-static {v2}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_0
    const-string v2, "challenges"

    .line 11
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    invoke-virtual {v1, v2, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    const-string v2, "hero"

    .line 12
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1, v2, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    const-string v2, "gold"

    .line 13
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    invoke-virtual {v1, v2, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    const-string v2, "depth"

    .line 14
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-virtual {v1, v2, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 15
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->droppedItems:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v2}, Lcom/watabou/utils/SparseArray;->keyArray()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v3, :cond_1

    aget v8, v2, v6

    const-string v9, "dropped%d"

    new-array v7, v7, [Ljava/lang/Object;

    .line 16
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    invoke-static {v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->droppedItems:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v9, v8}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v1, v7, v8}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 17
    :cond_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->portedItems:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v2}, Lcom/watabou/utils/SparseArray;->keyArray()[I

    move-result-object v2

    array-length v3, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_2

    aget v8, v2, v6

    const-string v9, "ported%d"

    new-array v10, v7, [Ljava/lang/Object;

    .line 18
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->portedItems:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v10, v8}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v1, v9, v8}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 19
    :cond_2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    if-eqz v2, :cond_7

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-array v6, v5, [Z

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_4

    .line 21
    invoke-virtual {v2, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->isPlaceholder(I)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 22
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v9, v9, v8

    .line 23
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    aput-boolean v7, v6, v8

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const-string v2, "placeholders"

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v2, "placements"

    .line 26
    invoke-virtual {v1, v2, v6}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Z)V

    .line 27
    new-instance v2, Lcom/watabou/utils/Bundle;

    invoke-direct {v2}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 28
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    .line 29
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    invoke-virtual {v2, v8, v7}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const-string v3, "limited_drops"

    .line 30
    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    .line 31
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->chapters:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 32
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->chapters:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    add-int/lit8 v7, v5, 0x1

    .line 33
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v5

    move v5, v7

    goto :goto_5

    :cond_6
    const-string v3, "chapters"

    .line 34
    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[I)V

    .line 35
    new-instance v2, Lcom/watabou/utils/Bundle;

    invoke-direct {v2}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 36
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 37
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->storeInBundle2(Lcom/watabou/utils/Bundle;)V

    .line 38
    invoke-static {v2}, La/b/a/e;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 39
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->storeInBundle1(Lcom/watabou/utils/Bundle;)V

    const-string v3, "quests"

    .line 40
    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    .line 41
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    const-string v3, "special_rooms"

    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 42
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    const-string v3, "pit_needed"

    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 43
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->runSecrets:Ljava/util/ArrayList;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    const-string v3, "secret_rooms"

    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 44
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->regionSecretsThisRun:[I

    const-string v3, "region_secrets"

    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[I)V

    .line 45
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 46
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    const-string v3, "records"

    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 47
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 48
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->save(Lcom/watabou/utils/Bundle;)V

    .line 49
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->save(Lcom/watabou/utils/Bundle;)V

    .line 50
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->save(Lcom/watabou/utils/Bundle;)V

    .line 51
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->nextID:I

    const-string v3, "nextid"

    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 52
    new-instance v2, Lcom/watabou/utils/Bundle;

    invoke-direct {v2}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 53
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->store(Lcom/watabou/utils/Bundle;Ljava/util/HashSet;)V

    const-string v3, "badges"

    .line 54
    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    .line 55
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->gameFile(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/watabou/utils/FileUtils;->bundleToFile(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    goto :goto_6

    .line 56
    :cond_7
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    .line 57
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->slotStates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 59
    :goto_6
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    .line 60
    new-instance v1, Lcom/watabou/utils/Bundle;

    invoke-direct {v1}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 61
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const-string v3, "level"

    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 62
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->depthFile(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/watabou/utils/FileUtils;->bundleToFile(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    .line 63
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 64
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;-><init>()V

    .line 65
    iput v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->slot:I

    .line 66
    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->depth:I

    .line 67
    iput v2, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->challenges:I

    .line 68
    iget v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->level:I

    .line 69
    iget v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->str:I

    .line 70
    iget v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->exp:I

    .line 71
    iget v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->hp:I

    .line 72
    iget v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->ht:I

    .line 73
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v1

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->shld:I

    .line 74
    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    iput-object v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 75
    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    iput-object v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 76
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->tier()I

    move-result v1

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->armorTier:I

    .line 77
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->goldCollected:I

    .line 78
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->maxDepth:I

    .line 79
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->slotStates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public static seedCurDepth()J
    .locals 3

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 2
    sget-wide v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->pushGenerator(J)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-static {}, Lcom/watabou/utils/Random;->Long()J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/watabou/utils/Random;->Long()J

    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/watabou/utils/Random;->popGenerator()V

    return-wide v0
.end method

.method public static setupPassable()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    if-eqz v0, :cond_1

    array-length v1, v0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setFalse([Z)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 6
    new-array v0, v0, [Z

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->passable:[Z

    :goto_1
    return-void
.end method

.method public static switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V
    .locals 10

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-lt p1, v0, :cond_2

    .line 3
    :cond_1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 4
    :cond_2
    :goto_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 5
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    .line 6
    invoke-static {v0, v1}, Lcom/watabou/utils/PathFinder;->setMapSize(II)V

    .line 7
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->heldAllies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget v5, v2, v4

    .line 11
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    add-int/2addr v5, p1

    aget-boolean v6, v6, v5

    if-nez v6, :cond_3

    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v6

    if-nez v6, :cond_3

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 14
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->heldAllies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 15
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    goto :goto_2

    .line 19
    :cond_5
    iput p1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    goto :goto_2

    .line 20
    :cond_6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->heldAllies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 22
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 24
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    goto :goto_3

    .line 25
    :cond_7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    .line 26
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    .line 28
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 29
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->respawnTime()F

    move-result v3

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 30
    :cond_9
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iput p1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 31
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 32
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v3, v4, :cond_a

    .line 33
    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_a

    aget v6, v3, v5

    .line 34
    iget v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v7, v6

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int v9, v8, v6

    aget-boolean v7, v7, v9

    if-eqz v7, :cond_b

    add-int/2addr v8, v6

    .line 35
    iput v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 36
    :cond_c
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    .line 37
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-nez p1, :cond_d

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    goto :goto_7

    :cond_d
    const/4 p1, 0x6

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_7
    iput p1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    .line 38
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 39
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    if-eqz v3, :cond_e

    .line 40
    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    .line 41
    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    .line 42
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result p1

    if-nez p1, :cond_f

    .line 43
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    goto :goto_8

    .line 44
    :cond_e
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    :cond_f
    :goto_8
    if-eqz v2, :cond_11

    .line 45
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->spentUpgrades()I

    move-result p1

    if-lez p1, :cond_11

    .line 46
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;-><init>()V

    .line 47
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->spentUpgrades()I

    move-result v0

    .line 48
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 49
    iput v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 50
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 51
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v2

    float-to-double v2, v0

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v0, v1

    .line 53
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 54
    :cond_10
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result v0

    if-nez v0, :cond_11

    .line 55
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 56
    :cond_11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 57
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    .line 58
    invoke-static {p0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_9
    return-void
.end method

.method public static win(Ljava/lang/Class;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->identify()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->MASKS:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, v0, v2

    .line 3
    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 4
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateChampion(I)V

    .line 5
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->submit(ZLjava/lang/Class;)V

    return-void
.end method
