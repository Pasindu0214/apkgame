.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/StatueRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "StatueRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 13

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    .line 4
    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    .line 5
    iget v1, v1, Lcom/watabou/utils/Point;->y:I

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 8
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 9
    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v4, v5, :cond_0

    .line 10
    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v0

    add-int/lit8 v7, v0, -0x2

    const/16 v8, 0x19

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 11
    iget v0, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v2, v0, -0x2

    goto :goto_0

    .line 12
    :cond_0
    iget v6, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v4, v6, :cond_1

    add-int/lit8 v8, v5, 0x1

    .line 13
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v9, v2, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v0

    add-int/lit8 v11, v0, -0x2

    const/16 v12, 0x19

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 14
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v2, v0, 0x2

    goto :goto_0

    .line 15
    :cond_1
    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v3, v4, :cond_2

    add-int/lit8 v7, v5, 0x1

    .line 16
    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    add-int/lit8 v9, v0, -0x2

    const/4 v10, 0x1

    const/16 v11, 0x19

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 17
    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v1, v0, -0x2

    goto :goto_0

    .line 18
    :cond_2
    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v3, v6, :cond_3

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v4, 0x1

    .line 19
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    add-int/lit8 v10, v0, -0x2

    const/4 v11, 0x1

    const/16 v12, 0x19

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 20
    iget v0, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v1, v0, 0x2

    .line 21
    :cond_3
    :goto_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->random()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;

    move-result-object v0

    .line 22
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    .line 23
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 24
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
