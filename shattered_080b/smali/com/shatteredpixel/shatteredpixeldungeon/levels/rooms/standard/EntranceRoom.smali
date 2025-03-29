.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EntranceRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "EntranceRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public minHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->minDim:I

    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public minWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->minDim:I

    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 7

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random(I)Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 6
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/4 v3, 0x7

    .line 8
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v3, v4, v2

    .line 9
    sget-object v2, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 10
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ne v2, v0, :cond_2

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    const-string v3, "Intro"

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->hasPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    :cond_1
    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v4

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v6, v1

    .line 12
    invoke-static {v5, v6}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 13
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    .line 14
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v2, v4, :cond_1

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v4

    if-nez v4, :cond_1

    .line 15
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/GuidePage;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/GuidePage;-><init>()V

    .line 16
    iput-object v3, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 18
    :cond_2
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ne v2, v1, :cond_4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    const-string v3, "Examining_and_Searching"

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->hasPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    :cond_3
    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v4

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v6, v1

    .line 20
    invoke-static {v5, v6}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 21
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    .line 22
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v2, v4, :cond_3

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v4

    if-nez v4, :cond_3

    .line 23
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/GuidePage;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/GuidePage;-><init>()V

    .line 24
    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 26
    :cond_4
    invoke-static {}, Lcom/watabou/utils/Random;->popGenerator()V

    return-void
.end method
