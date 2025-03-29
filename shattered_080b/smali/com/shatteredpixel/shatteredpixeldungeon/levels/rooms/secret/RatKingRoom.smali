.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/RatKingRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.source "RatKingRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;-><init>()V

    return-void
.end method

.method public static addChest(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    if-eq p1, v0, :cond_1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int v1, p2, v0

    if-eq p1, v1, :cond_1

    add-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    const/16 v0, 0xa

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p0

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canConnect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossEntranceRoom;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maxHeight()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public maxWidth()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 6

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    const/16 v1, 0xe

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 5
    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    iget v1, v1, Lcom/watabou/utils/Point;->y:I

    .line 6
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    .line 7
    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v2, v0

    :goto_0
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v2, v3, :cond_0

    .line 8
    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v0

    .line 9
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    .line 10
    invoke-static {p1, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/RatKingRoom;->addChest(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V

    .line 11
    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 12
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    .line 13
    invoke-static {p1, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/RatKingRoom;->addChest(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    :goto_1
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v4, v0

    if-ge v2, v4, :cond_1

    .line 15
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, v4, v2

    .line 16
    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-static {p1, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/RatKingRoom;->addChest(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V

    .line 17
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, v4, v2

    .line 18
    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {p1, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/RatKingRoom;->addChest(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/RatKing;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/RatKing;-><init>()V

    .line 20
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random(I)Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 21
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
