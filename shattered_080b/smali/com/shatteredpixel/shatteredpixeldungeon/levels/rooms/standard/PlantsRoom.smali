.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "PlantsRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method

.method public static randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;
    .locals 2

    .line 1
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    .line 2
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Firebloom$Seed;

    if-nez v1, :cond_0

    return-object v0
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
    .locals 8

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/16 v2, 0xf

    .line 3
    invoke-static {p1, p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    const/4 v3, 0x3

    .line 5
    invoke-static {p1, p0, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 9
    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v5, v0

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v4, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    new-instance v5, Lcom/watabou/utils/Point;

    iget v6, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v6, v0

    iget v7, v3, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v5, v6, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-static {p1, v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 10
    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v6, v0

    invoke-direct {v4, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    new-instance v5, Lcom/watabou/utils/Point;

    iget v6, v3, Lcom/watabou/utils/Point;->x:I

    iget v7, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v7, v0

    invoke-direct {v5, v6, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-static {p1, v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;->randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    move-result-object v0

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v4, v1

    iget v5, v3, Lcom/watabou/utils/Point;->y:I

    sub-int/2addr v5, v1

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 12
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;->randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    move-result-object v0

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v4, v1

    iget v5, v3, Lcom/watabou/utils/Point;->y:I

    sub-int/2addr v5, v1

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 13
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;->randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    move-result-object v0

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v4, v1

    iget v5, v3, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v5, v1

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;->randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    move-result-object v0

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v4, v1

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v3, v1

    invoke-direct {v2, v4, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    goto/16 :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v5

    if-gt v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v5, v0

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v4, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    new-instance v5, Lcom/watabou/utils/Point;

    iget v6, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v6, v0

    iget v0, v3, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v5, v6, v0}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-static {p1, v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;->randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    move-result-object v0

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    iget v5, v3, Lcom/watabou/utils/Point;->y:I

    sub-int/2addr v5, v1

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 18
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;->randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    move-result-object v0

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v3, v1

    invoke-direct {v2, v4, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    goto :goto_1

    .line 19
    :cond_3
    :goto_0
    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v6, v0

    invoke-direct {v4, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    new-instance v5, Lcom/watabou/utils/Point;

    iget v6, v3, Lcom/watabou/utils/Point;->x:I

    iget v7, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v7, v0

    invoke-direct {v5, v6, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-static {p1, v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 20
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;->randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    move-result-object v0

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v4, v1

    iget v5, v3, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 21
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;->randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    move-result-object v0

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v4, v1

    iget v1, v3, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v2, v4, v1}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    goto :goto_1

    .line 22
    :cond_4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;->randomSeed()Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 23
    :goto_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 24
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_2

    :cond_5
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
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
