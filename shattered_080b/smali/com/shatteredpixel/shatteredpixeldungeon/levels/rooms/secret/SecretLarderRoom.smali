.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLarderRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.source "SecretLarderRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public minHeight()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 10

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v2

    .line 4
    iget v3, v2, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v5, v3, -0x1

    iget v3, v2, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x3

    const/16 v9, 0x1d

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/4 v3, 0x2

    .line 5
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 6
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush$Seed;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush$Seed;-><init>()V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 8
    :cond_0
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x96

    :goto_0
    if-lez v2, :cond_3

    int-to-float v1, v2

    const/high16 v2, 0x43e10000    # 450.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1

    .line 9
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;-><init>()V

    goto :goto_1

    .line 10
    :cond_1
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/ChargrilledMeat;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/ChargrilledMeat;-><init>()V

    const/high16 v2, 0x43160000    # 150.0f

    :goto_1
    sub-float/2addr v1, v2

    float-to-int v1, v1

    move v2, v1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    .line 12
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v4, v1

    if-ne v4, v0, :cond_2

    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v4, v1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {p1, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    return-void
.end method
