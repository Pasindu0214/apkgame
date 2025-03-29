.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;
.super Ljava/lang/Object;
.source "Maze.java"


# static fields
.field public static allowDiagonals:Z = false


# direct methods
.method public static checkValidMove([[ZII[I)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    rsub-int/lit8 v1, v1, 0x1

    .line 2
    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    .line 3
    aget v4, p3, v0

    add-int/2addr p1, v4

    .line 4
    aget v4, p3, v2

    add-int/2addr p2, v4

    if-lez p1, :cond_6

    .line 5
    array-length v4, p0

    sub-int/2addr v4, v2

    if-ge p1, v4, :cond_6

    if-lez p2, :cond_6

    aget-object v4, p0, v0

    array-length v4, v4

    sub-int/2addr v4, v2

    if-lt p2, v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    aget-object v4, p0, p1

    aget-boolean v4, v4, p2

    if-nez v4, :cond_6

    add-int v4, p1, v1

    aget-object v4, p0, v4

    add-int v5, p2, v3

    aget-boolean v4, v4, v5

    if-nez v4, :cond_6

    sub-int v4, p1, v1

    aget-object v4, p0, v4

    sub-int v5, p2, v3

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    aget v4, p3, v0

    add-int/2addr p1, v4

    .line 8
    aget p3, p3, v2

    add-int/2addr p2, p3

    if-lez p1, :cond_6

    .line 9
    array-length p3, p0

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_6

    if-lez p2, :cond_6

    aget-object p3, p0, v0

    array-length p3, p3

    sub-int/2addr p3, v2

    if-lt p2, p3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    aget-object p3, p0, p1

    aget-boolean p3, p3, p2

    if-eqz p3, :cond_3

    return v0

    .line 11
    :cond_3
    sget-boolean p3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->allowDiagonals:Z

    if-nez p3, :cond_5

    add-int p3, p1, v1

    aget-object p3, p0, p3

    add-int v4, p2, v3

    aget-boolean p3, p3, v4

    if-nez p3, :cond_4

    sub-int/2addr p1, v1

    aget-object p0, p0, p1

    sub-int/2addr p2, v3

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_5

    :cond_4
    return v0

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v0
.end method

.method public static generate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)[[Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Z

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    const/4 v4, 0x0

    .line 3
    :goto_1
    aget-object v5, v0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_2

    if-eqz v2, :cond_0

    .line 4
    array-length v5, v0

    sub-int/2addr v5, v3

    if-eq v2, v5, :cond_0

    if-eqz v4, :cond_0

    aget-object v5, v0, v1

    array-length v5, v5

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_1

    .line 5
    :cond_0
    aget-object v5, v0, v2

    aput-boolean v3, v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 7
    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    sub-int/2addr v4, v5

    aget-object v4, v0, v4

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v3, v5

    aput-boolean v1, v4, v3

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->generate([[Z)[[Z

    return-object v0
.end method

.method public static generate([[Z)[[Z
    .locals 7

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x9c4

    if-ge v1, v2, :cond_8

    .line 9
    :cond_1
    array-length v2, p0

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    .line 10
    aget-object v3, p0, v0

    array-length v3, v3

    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    .line 11
    aget-object v4, p0, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    .line 12
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 13
    invoke-static {p0, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->checkValidMove([[ZII[I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v5, [I

    .line 14
    fill-array-data v4, :array_1

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    .line 15
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_3

    new-array v4, v5, [I

    fill-array-data v4, :array_2

    .line 16
    invoke-static {p0, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->checkValidMove([[ZII[I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-array v4, v5, [I

    .line 17
    fill-array-data v4, :array_3

    goto :goto_2

    .line 18
    :cond_3
    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_4

    new-array v4, v5, [I

    fill-array-data v4, :array_4

    .line 19
    invoke-static {p0, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->checkValidMove([[ZII[I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-array v4, v5, [I

    .line 20
    fill-array-data v4, :array_5

    goto :goto_2

    :cond_4
    new-array v4, v5, [I

    .line 21
    fill-array-data v4, :array_6

    .line 22
    invoke-static {p0, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->checkValidMove([[ZII[I)Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v4, v5, [I

    .line 23
    fill-array-data v4, :array_7

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 24
    :cond_7
    aget v5, v4, v0

    add-int/2addr v2, v5

    const/4 v5, 0x1

    .line 25
    aget v6, v4, v5

    add-int/2addr v3, v6

    .line 26
    aget-object v6, p0, v2

    aput-boolean v5, v6, v3

    add-int/2addr v1, v5

    .line 27
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->checkValidMove([[ZII[I)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_0

    :cond_8
    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method
