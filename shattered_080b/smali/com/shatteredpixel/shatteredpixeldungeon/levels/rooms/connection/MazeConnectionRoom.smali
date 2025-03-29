.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/MazeConnectionRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;
.source "MazeConnectionRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public maxConnections(I)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 12

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v1, 0x0

    .line 2
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->allowDiagonals:Z

    .line 3
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->generate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)[[Z

    move-result-object v2

    .line 4
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 6
    :goto_1
    aget-object v5, v2, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 7
    aget-object v5, v2, v3

    aget-boolean v5, v5, v4

    if-ne v5, v0, :cond_0

    .line 8
    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    add-int v7, v3, v5

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int v8, v4, v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x4

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 10
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_2

    :cond_3
    return-void
.end method
