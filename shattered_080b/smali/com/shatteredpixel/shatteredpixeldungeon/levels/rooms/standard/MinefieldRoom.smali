.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/MinefieldRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "MinefieldRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

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

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/watabou/utils/Rect;->square()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x9

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x3

    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 7
    :cond_4
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random(I)Lcom/watabou/utils/Point;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v4

    .line 8
    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v5, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    :goto_3
    const/16 v6, 0x8

    if-ge v5, v6, :cond_6

    .line 9
    sget-object v7, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v6

    aget v6, v7, v6

    .line 10
    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    add-int/2addr v6, v4

    invoke-virtual {v7, v6}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v8, v7, v6

    if-ne v8, v0, :cond_5

    const/16 v8, 0x9

    .line 11
    aput v8, v7, v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/16 v5, 0x11

    .line 12
    iget-object v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v5, v6, v4

    .line 13
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ExplosiveTrap;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ExplosiveTrap;-><init>()V

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->hide()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {p1, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public sizeCatProbs()[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
