.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/WeakFloorRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "WeakFloorRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/WeakFloorRoom$HiddenWell;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 5
    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    const/16 v6, 0xe

    const/4 v7, 0x2

    if-ne v4, v5, :cond_2

    .line 6
    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v2

    :goto_0
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v3, v4, :cond_0

    .line 7
    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-direct {v4, v5, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v2, v5}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v5

    invoke-static {p1, p0, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/watabou/utils/Point;

    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v2

    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_1

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v7

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v2, v4, -0x1

    :goto_1
    invoke-direct {v0, v3, v2}, Lcom/watabou/utils/Point;-><init>(II)V

    goto/16 :goto_8

    .line 9
    :cond_2
    iget v8, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v4, v8, :cond_5

    .line 10
    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v2

    :goto_2
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v3, v4, :cond_3

    .line 11
    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    invoke-direct {v4, v5, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v2, v5}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v5

    invoke-static {p1, p0, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 12
    :cond_3
    new-instance v0, Lcom/watabou/utils/Point;

    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v2

    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_4

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v7

    goto :goto_3

    :cond_4
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v2, v4, -0x1

    :goto_3
    invoke-direct {v0, v3, v2}, Lcom/watabou/utils/Point;-><init>(II)V

    goto/16 :goto_8

    .line 13
    :cond_5
    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v3, v4, :cond_8

    add-int/2addr v5, v2

    .line 14
    :goto_4
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v5, v3, :cond_6

    .line 15
    new-instance v3, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-direct {v3, v5, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v2, v4}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v4

    invoke-static {p1, p0, v3, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 16
    :cond_6
    new-instance v0, Lcom/watabou/utils/Point;

    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v2

    goto :goto_5

    :cond_7
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v2

    :goto_5
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v4, v2

    invoke-direct {v0, v3, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_8

    .line 17
    :cond_8
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v3, v4, :cond_b

    add-int/2addr v5, v2

    .line 18
    :goto_6
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v5, v3, :cond_9

    .line 19
    new-instance v3, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v3, v5, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v2, v4}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v4

    invoke-static {p1, p0, v3, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 20
    :cond_9
    new-instance v0, Lcom/watabou/utils/Point;

    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_a

    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v2

    goto :goto_7

    :cond_a
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v2

    :goto_7
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v7

    invoke-direct {v0, v3, v2}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    .line 21
    :goto_8
    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 22
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/WeakFloorRoom$HiddenWell;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/WeakFloorRoom$HiddenWell;-><init>()V

    .line 23
    iget v2, v0, Lcom/watabou/utils/Point;->x:I

    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    .line 24
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 25
    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 26
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
