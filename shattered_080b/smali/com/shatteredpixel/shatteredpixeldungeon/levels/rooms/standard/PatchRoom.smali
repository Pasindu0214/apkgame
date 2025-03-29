.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "PatchRoom.java"


# instance fields
.field public patch:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanDiagonalEdges()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    array-length v4, v3

    sub-int/2addr v4, v0

    if-ge v2, v4, :cond_4

    .line 4
    aget-boolean v4, v3, v2

    if-nez v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    rem-int v4, v2, v0

    if-eqz v4, :cond_2

    add-int/lit8 v4, v2, -0x1

    add-int v5, v4, v0

    .line 6
    aget-boolean v6, v3, v5

    if-eqz v6, :cond_2

    aget-boolean v4, v3, v4

    if-nez v4, :cond_2

    add-int v4, v2, v0

    aget-boolean v4, v3, v4

    if-nez v4, :cond_2

    .line 7
    aput-boolean v1, v3, v5

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 8
    rem-int v4, v3, v0

    if-eqz v4, :cond_3

    .line 9
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    add-int v5, v3, v0

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_3

    aget-boolean v3, v4, v3

    if-nez v3, :cond_3

    add-int v3, v2, v0

    aget-boolean v3, v4, v3

    if-nez v3, :cond_3

    .line 10
    aput-boolean v1, v4, v5

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setupPatch(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;FIZ)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p4, :cond_8

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {p4, v1}, Lcom/watabou/utils/PathFinder;->setMapSize(II)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {p4, v1, p2, p3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object p4

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    .line 3
    iget-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {p4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 5
    iget v2, v3, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v2

    .line 6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v5, v0

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v5

    aput-boolean v1, v4, v5

    .line 7
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v5, v5, 0x2

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v3

    aput-boolean v1, v4, v3

    goto :goto_0

    .line 8
    :cond_2
    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    .line 9
    iget v2, v3, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v2

    .line 10
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v5, v0

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v5

    aput-boolean v1, v4, v5

    .line 11
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v5, v5, -0x2

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v3

    aput-boolean v1, v4, v3

    goto :goto_0

    .line 12
    :cond_3
    iget v5, v3, Lcom/watabou/utils/Point;->y:I

    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 13
    invoke-virtual {p0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v2

    .line 14
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v6, v0

    invoke-virtual {p0, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v5

    aput-boolean v1, v4, v5

    .line 15
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v3

    aput-boolean v1, v4, v3

    goto/16 :goto_0

    .line 16
    :cond_4
    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v5, -0x1

    .line 17
    invoke-virtual {p0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v2

    .line 18
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    sub-int/2addr v6, v0

    invoke-virtual {p0, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v5

    aput-boolean v1, v4, v5

    .line 19
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v5, v3, Lcom/watabou/utils/Point;->x:I

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v3

    aput-boolean v1, v4, v3

    goto/16 :goto_0

    .line 20
    :cond_5
    iget-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    const/4 v3, 0x0

    invoke-static {p4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object p4

    invoke-static {v2, p4}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[Z)V

    const/4 p4, 0x0

    .line 21
    :goto_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    array-length v3, v2

    if-ge p4, v3, :cond_7

    .line 22
    aget-boolean v2, v2, p4

    if-nez v2, :cond_6

    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v2, v2, p4

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_0

    .line 23
    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 24
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    .line 25
    invoke-static {p2, p1}, Lcom/watabou/utils/PathFinder;->setMapSize(II)V

    goto :goto_3

    .line 26
    :cond_8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    invoke-static {p1, p4, p2, p3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    :goto_3
    return-void
.end method

.method public xyToPatchCoords(II)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    mul-int v0, v0, p2

    add-int/2addr v0, p1

    return v0
.end method
