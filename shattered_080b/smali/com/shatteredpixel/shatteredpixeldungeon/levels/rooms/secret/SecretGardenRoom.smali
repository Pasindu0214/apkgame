.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretGardenRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.source "SecretGardenRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Foliage;

    const/4 v1, 0x4

    invoke-static {p1, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 2
    invoke-static {p1, p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    sub-int/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object v3

    .line 4
    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v4, v1

    :goto_0
    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v4, v5, :cond_2

    .line 5
    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v5, v1

    :goto_1
    iget v6, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v5, v6, :cond_1

    .line 6
    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    sub-int v6, v5, v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/watabou/utils/Rect;->top:I

    sub-int v7, v4, v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    mul-int v8, v8, v7

    add-int/2addr v8, v6

    .line 7
    aget-boolean v6, v3, v8

    if-eqz v6, :cond_0

    .line 8
    iget-object v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 9
    iget v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v7, v7, v4

    add-int/2addr v7, v5

    const/16 v8, 0xf

    .line 10
    aput v8, v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 12
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretGardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 13
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Seedpod$Seed;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Seedpod$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretGardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 14
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher$Seed;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretGardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 15
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 16
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Seedpod$Seed;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Seedpod$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretGardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    goto :goto_2

    .line 17
    :cond_3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher$Seed;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher$Seed;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretGardenRoom;->plantPos(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 18
    :goto_2
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Foliage;

    if-nez v2, :cond_4

    .line 19
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Foliage;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Foliage;-><init>()V

    .line 20
    :cond_4
    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v1

    :goto_3
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v3, v4, :cond_6

    .line 21
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v1

    :goto_4
    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v4, v5, :cond_5

    .line 22
    iget v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    .line 23
    invoke-virtual {v2, p1, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 24
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
