.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/RotGardenRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "RotGardenRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method

.method public static placePlant(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;ILcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 6

    .line 1
    iput p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object p2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    add-int/2addr v2, p1

    aget v4, v3, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/16 v4, 0xf

    .line 5
    aput v4, v3, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public minHeight()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const/4 v1, 0x4

    .line 4
    invoke-static {p1, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 5
    invoke-static {p1, p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 6
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v3

    .line 7
    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v4

    .line 8
    iget v5, v0, Lcom/watabou/utils/Point;->x:I

    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v5, v6, :cond_0

    .line 9
    iget v0, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    .line 10
    :cond_0
    iget v7, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v5, v7, :cond_1

    add-int/lit8 v3, v6, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v0, v5, :cond_2

    .line 12
    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v4, v0, -0x1

    goto :goto_0

    .line 13
    :cond_2
    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v0, v6, :cond_3

    add-int/lit8 v4, v5, 0x1

    .line 14
    :cond_3
    :goto_0
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, v4, v0

    add-int/2addr v4, v3

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RotHeart;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RotHeart;-><init>()V

    invoke-static {p1, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/RotGardenRoom;->placePlant(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;ILcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 16
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    sub-int/2addr v3, v1

    mul-int v3, v3, v0

    div-int/lit8 v3, v3, 0x8

    const/4 v0, 0x1

    :goto_1
    if-gt v0, v3, :cond_8

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v4

    .line 18
    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v5, v4

    const/4 v6, 0x0

    if-eq v5, v1, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    sget-object v5, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v7, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_7

    aget v9, v5, v8

    add-int/2addr v9, v4

    .line 20
    invoke-virtual {p1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_4

    .line 21
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RotLasher;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RotLasher;-><init>()V

    invoke-static {p1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/RotGardenRoom;->placePlant(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;ILcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method
