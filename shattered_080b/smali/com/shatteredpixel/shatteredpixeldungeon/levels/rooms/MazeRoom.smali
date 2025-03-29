.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/MazeRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;
.source "MazeRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;-><init>()V

    return-void
.end method


# virtual methods
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

    :cond_2
    return-void
.end method
