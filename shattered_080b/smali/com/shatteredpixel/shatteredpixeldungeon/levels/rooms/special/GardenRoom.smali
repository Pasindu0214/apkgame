.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/GardenRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "GardenRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Foliage;

    const/4 v1, 0x4

    invoke-static {p1, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v1, 0x1

    const/16 v2, 0xf

    .line 2
    invoke-static {p1, p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, p0, v2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 5
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 7
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/GardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 8
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/GardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    .line 10
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush$Seed;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/GardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    .line 11
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 12
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/GardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 13
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush$Seed;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/GardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 14
    :cond_3
    :goto_0
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Foliage;

    if-nez v2, :cond_4

    .line 15
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Foliage;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Foliage;-><init>()V

    .line 16
    :cond_4
    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v1

    :goto_1
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v3, v4, :cond_6

    .line 17
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v1

    :goto_2
    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v4, v5, :cond_5

    .line 18
    iget v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    .line 19
    invoke-virtual {v2, p1, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 20
    :cond_6
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 2
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0
.end method
