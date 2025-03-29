.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretMazeRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.source "SecretMazeRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public maxHeight()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public maxWidth()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public minHeight()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 13

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v1, 0x0

    .line 3
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->allowDiagonals:Z

    .line 4
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->generate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)[[Z

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    mul-int v4, v4, v3

    new-array v3, v4, [Z

    .line 6
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v4, 0x0

    .line 7
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    const/4 v5, 0x0

    .line 8
    :goto_1
    aget-object v6, v2, v1

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 9
    aget-object v6, v2, v4

    aget-boolean v6, v6, v5

    if-ne v6, v0, :cond_0

    .line 10
    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    add-int v8, v4, v6

    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    add-int v9, v5, v6

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x4

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v6, v4

    aget-object v7, v2, v4

    aget-boolean v7, v7, v5

    xor-int/2addr v7, v0

    aput-boolean v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    invoke-static {v2, v4}, Lcom/watabou/utils/PathFinder;->setMapSize(II)V

    .line 13
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v2

    .line 14
    iget v4, v2, Lcom/watabou/utils/Point;->x:I

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v5

    iget v2, v2, Lcom/watabou/utils/Point;->y:I

    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v2, v6

    mul-int v2, v2, v5

    add-int/2addr v2, v4

    .line 15
    invoke-static {v2, v3}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[Z)V

    .line 16
    new-instance v2, Lcom/watabou/utils/Point;

    invoke-direct {v2}, Lcom/watabou/utils/Point;-><init>()V

    const/4 v3, 0x0

    .line 17
    :goto_2
    sget-object v4, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 18
    aget v5, v4, v1

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_3

    aget v5, v4, v1

    if-le v5, v3, :cond_3

    .line 19
    aget v3, v4, v1

    .line 20
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    rem-int v4, v1, v4

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/watabou/utils/Point;->x:I

    .line 21
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    div-int v4, v1, v4

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/watabou/utils/Point;->y:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    .line 22
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_5

    .line 23
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomWeapon(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    move-result-object v1

    goto :goto_3

    .line 24
    :cond_5
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object v1

    .line 25
    :goto_3
    iget-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x3

    .line 26
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 27
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 28
    :cond_6
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 29
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 30
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    .line 31
    invoke-static {v0, p1}, Lcom/watabou/utils/PathFinder;->setMapSize(II)V

    .line 32
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    return-void
.end method
