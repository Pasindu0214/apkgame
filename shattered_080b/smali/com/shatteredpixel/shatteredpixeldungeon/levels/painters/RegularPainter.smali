.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;
.source "RegularPainter.java"


# instance fields
.field public grassFill:F

.field public grassSmoothness:I

.field public nTraps:I

.field public trapChances:[F

.field public trapClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;",
            ">;"
        }
    .end annotation
.end field

.field public waterFill:F

.field public waterSmoothness:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterFill:F

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassFill:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->nTraps:I

    return-void
.end method


# virtual methods
.method public abstract decorate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)V"
        }
    .end annotation
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_7

    .line 1
    iget-object v2, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->CHASM:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 3
    iget v10, v6, Lcom/watabou/utils/Rect;->left:I

    if-ge v10, v4, :cond_2

    move v4, v10

    .line 4
    :cond_2
    iget v6, v6, Lcom/watabou/utils/Rect;->top:I

    if-ge v6, v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_3
    sub-int/2addr v4, v2

    sub-int/2addr v5, v2

    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v10, 0x0

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    neg-int v12, v4

    neg-int v13, v5

    .line 6
    invoke-virtual {v11, v12, v13}, Lcom/watabou/utils/Rect;->shift(II)Lcom/watabou/utils/Rect;

    .line 7
    iget v12, v11, Lcom/watabou/utils/Rect;->right:I

    if-le v12, v6, :cond_5

    move v6, v12

    .line 8
    :cond_5
    iget v11, v11, Lcom/watabou/utils/Rect;->bottom:I

    if-le v11, v10, :cond_4

    move v10, v11

    goto :goto_2

    :cond_6
    add-int/2addr v6, v2

    add-int/2addr v10, v2

    add-int/2addr v6, v9

    add-int/2addr v10, v9

    .line 9
    invoke-virtual {v7, v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    move-object/from16 v10, p2

    goto :goto_3

    .line 10
    :cond_7
    iget v2, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-nez v2, :cond_8

    return v1

    .line 11
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 12
    :goto_3
    invoke-static {v10}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 13
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_e

    aget-object v5, v2, v4

    .line 14
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 15
    iget-object v12, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    if-nez v12, :cond_9

    .line 16
    invoke-virtual {v5, v11}, Lcom/watabou/utils/Rect;->intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object v12

    .line 17
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v12}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/watabou/utils/Point;

    .line 19
    invoke-virtual {v5, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(Lcom/watabou/utils/Point;)Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v11, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(Lcom/watabou/utils/Point;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 20
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 21
    :cond_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 22
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Could not place a door! r="

    invoke-static {v13}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " n="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {v12}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 26
    :cond_c
    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    invoke-static {v13}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/watabou/utils/Point;

    invoke-direct {v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;-><init>(Lcom/watabou/utils/Point;)V

    .line 27
    iget-object v13, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v5, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 29
    :cond_d
    invoke-virtual {v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 30
    :cond_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 31
    iget-object v2, v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v1

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 32
    instance-of v1, v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    const/16 v2, 0xa

    const/4 v3, 0x3

    if-eqz v1, :cond_17

    instance-of v1, v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    if-nez v1, :cond_f

    goto/16 :goto_a

    .line 33
    :cond_f
    invoke-virtual {v12, v15}, Lcom/watabou/utils/Rect;->intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object v1

    .line 34
    iget v4, v1, Lcom/watabou/utils/Rect;->left:I

    iget v5, v1, Lcom/watabou/utils/Rect;->right:I

    if-ne v4, v5, :cond_13

    .line 35
    iget v4, v1, Lcom/watabou/utils/Rect;->bottom:I

    iget v5, v1, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v4, v5

    if-ge v4, v3, :cond_10

    goto/16 :goto_a

    .line 36
    :cond_10
    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->height()I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    invoke-virtual {v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v3, v4, :cond_11

    goto/16 :goto_a

    .line 37
    :cond_11
    invoke-virtual {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    invoke-virtual {v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v2, :cond_12

    goto :goto_a

    .line 38
    :cond_12
    iget v2, v1, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/watabou/utils/Rect;->top:I

    .line 39
    iget v2, v1, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v2, v14

    iput v2, v1, Lcom/watabou/utils/Rect;->bottom:I

    .line 40
    iget v2, v1, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/watabou/utils/Rect;->right:I

    .line 41
    iget v2, v1, Lcom/watabou/utils/Rect;->left:I

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->height()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_9

    :cond_13
    const/16 v2, 0xa

    const/4 v3, 0x3

    sub-int/2addr v5, v4

    if-ge v5, v3, :cond_14

    goto :goto_a

    .line 42
    :cond_14
    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->width()I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    invoke-virtual {v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v3, v4, :cond_15

    goto :goto_a

    .line 43
    :cond_15
    invoke-virtual {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    invoke-virtual {v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v2, :cond_16

    goto :goto_a

    .line 44
    :cond_16
    iget v2, v1, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/watabou/utils/Rect;->left:I

    .line 45
    iget v3, v1, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v14

    iput v3, v1, Lcom/watabou/utils/Rect;->right:I

    .line 46
    iget v3, v1, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v3, v9

    iput v3, v1, Lcom/watabou/utils/Rect;->bottom:I

    .line 47
    iget v3, v1, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->width()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    :goto_9
    const/4 v1, 0x1

    goto :goto_b

    :cond_17
    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_18

    goto/16 :goto_8

    .line 48
    :cond_18
    iget-object v1, v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 49
    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    iget v3, v1, Lcom/watabou/utils/Point;->y:I

    .line 50
    iget v4, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    .line 51
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    if-ne v2, v4, :cond_20

    .line 52
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-le v2, v9, :cond_1e

    const/16 v4, 0x14

    if-ge v2, v4, :cond_19

    rsub-int/lit8 v2, v2, 0x17

    .line 53
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ge v2, v4, :cond_1e

    .line 54
    :cond_19
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    .line 55
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/watabou/utils/Graph$Node;

    .line 56
    invoke-interface {v4, v8}, Lcom/watabou/utils/Graph$Node;->distance(I)V

    goto :goto_c

    .line 57
    :cond_1a
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 58
    invoke-interface {v12, v14}, Lcom/watabou/utils/Graph$Node;->distance(I)V

    .line 59
    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1b
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 61
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/watabou/utils/Graph$Node;

    .line 62
    invoke-interface {v4}, Lcom/watabou/utils/Graph$Node;->distance()I

    move-result v5

    .line 63
    invoke-interface {v4}, Lcom/watabou/utils/Graph$Node;->price()I

    move-result v6

    .line 64
    invoke-interface {v4}, Lcom/watabou/utils/Graph$Node;->edges()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/watabou/utils/Graph$Node;

    .line 65
    invoke-interface {v14}, Lcom/watabou/utils/Graph$Node;->distance()I

    move-result v9

    add-int v8, v5, v6

    if-le v9, v8, :cond_1c

    .line 66
    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v14, v8}, Lcom/watabou/utils/Graph$Node;->distance(I)V

    :cond_1c
    const v8, 0x7fffffff

    const/4 v9, 0x1

    goto :goto_d

    .line 68
    :cond_1d
    iget v2, v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->distance:I

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_1f

    .line 69
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->UNLOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    goto :goto_e

    :cond_1e
    const v4, 0x7fffffff

    .line 70
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->UNLOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    .line 71
    :cond_1f
    :goto_e
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_21

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 72
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->isUnlocked(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)Z

    move-result v2

    if-nez v2, :cond_21

    instance-of v2, v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EntranceRoom;

    if-eqz v2, :cond_21

    .line 73
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    goto :goto_f

    :cond_20
    const v4, 0x7fffffff

    .line 74
    :cond_21
    :goto_f
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_27

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26

    const/4 v2, 0x3

    if-eq v1, v2, :cond_25

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    const/4 v2, 0x5

    if-eq v1, v2, :cond_23

    const/4 v2, 0x6

    if-eq v1, v2, :cond_22

    goto :goto_10

    .line 75
    :cond_22
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v2, 0xa

    aput v2, v1, v3

    goto :goto_10

    .line 76
    :cond_23
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v2, 0xd

    aput v2, v1, v3

    goto :goto_10

    .line 77
    :cond_24
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v2, 0x10

    aput v2, v1, v3

    goto :goto_10

    .line 78
    :cond_25
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v2, 0x5

    aput v2, v1, v3

    goto :goto_10

    .line 79
    :cond_26
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    invoke-virtual/range {p1 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tunnelTile()I

    move-result v2

    aput v2, v1, v3

    goto :goto_10

    .line 80
    :cond_27
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v2, 0x1

    aput v2, v1, v3

    :goto_10
    const/4 v14, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_28
    move v1, v14

    goto/16 :goto_7

    .line 81
    :cond_29
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterFill:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_32

    .line 82
    iget v4, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 83
    iget v5, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    .line 84
    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterSmoothness:I

    const/4 v8, 0x1

    invoke-static {v4, v5, v1, v6, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object v1

    .line 85
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/16 v5, 0x1d

    if-nez v4, :cond_30

    .line 86
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eqz v6, :cond_2f

    .line 87
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget v9, v6, Lcom/watabou/utils/Rect;->left:I

    :goto_11
    iget v11, v6, Lcom/watabou/utils/Rect;->right:I

    if-gt v9, v11, :cond_2d

    .line 89
    iget v11, v6, Lcom/watabou/utils/Rect;->top:I

    :goto_12
    iget v12, v6, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v11, v12, :cond_2c

    .line 90
    new-instance v12, Lcom/watabou/utils/Point;

    invoke-direct {v12, v9, v11}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 91
    invoke-virtual {v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canPlaceWater(Lcom/watabou/utils/Point;)Z

    move-result v13

    if-eqz v13, :cond_2b

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_2c
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 92
    :cond_2d
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/watabou/utils/Point;

    .line 93
    invoke-virtual {v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v8

    .line 94
    aget-boolean v9, v1, v8

    if-eqz v9, :cond_2e

    iget-object v9, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v11, v9, v8

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2e

    .line 95
    aput v5, v9, v8

    goto :goto_13

    .line 96
    :cond_2f
    throw v3

    :cond_30
    const/4 v4, 0x0

    .line 97
    :goto_14
    iget v6, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v4, v6, :cond_32

    .line 98
    aget-boolean v6, v1, v4

    if-eqz v6, :cond_31

    iget-object v6, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v8, v6, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_31

    .line 99
    aput v5, v6, v4

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 100
    :cond_32
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassFill:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_41

    .line 101
    iget v2, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 102
    iget v4, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    .line 103
    iget v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassSmoothness:I

    const/4 v6, 0x1

    invoke-static {v2, v4, v1, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object v1

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 106
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eqz v5, :cond_38

    .line 107
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget v8, v5, Lcom/watabou/utils/Rect;->left:I

    :goto_15
    iget v9, v5, Lcom/watabou/utils/Rect;->right:I

    if-gt v8, v9, :cond_36

    .line 109
    iget v9, v5, Lcom/watabou/utils/Rect;->top:I

    :goto_16
    iget v11, v5, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v9, v11, :cond_35

    .line 110
    new-instance v11, Lcom/watabou/utils/Point;

    invoke-direct {v11, v8, v9}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 111
    invoke-virtual {v5, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canPlaceGrass(Lcom/watabou/utils/Point;)Z

    move-result v12

    if-eqz v12, :cond_34

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_35
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 112
    :cond_36
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_37
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/watabou/utils/Point;

    .line 113
    invoke-virtual {v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v6

    .line 114
    aget-boolean v8, v1, v6

    if-eqz v8, :cond_37

    iget-object v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v8, v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_37

    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 116
    :cond_38
    throw v3

    :cond_39
    const/4 v4, 0x0

    .line 117
    :goto_18
    iget v5, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v4, v5, :cond_3b

    .line 118
    aget-boolean v5, v1, v4

    if-eqz v5, :cond_3a

    iget-object v5, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3a

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 120
    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 121
    iget-object v5, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v5, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_40

    invoke-virtual {v7, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v5

    if-eqz v5, :cond_3c

    goto :goto_1c

    .line 122
    :cond_3c
    sget-object v5, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v6, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_1a
    if-ge v8, v6, :cond_3e

    aget v11, v5, v8

    add-int/2addr v11, v4

    .line 123
    aget-boolean v11, v1, v11

    if-eqz v11, :cond_3d

    add-int/lit8 v9, v9, 0x1

    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    .line 124
    :cond_3e
    iget-object v5, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v6

    int-to-float v8, v9

    const/high16 v9, 0x41400000    # 12.0f

    div-float/2addr v8, v9

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3f

    const/16 v6, 0xf

    goto :goto_1b

    :cond_3f
    const/4 v6, 0x2

    :goto_1b
    aput v6, v5, v4

    goto :goto_19

    .line 125
    :cond_40
    :goto_1c
    iget-object v5, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v6, 0x2

    aput v6, v5, v4

    goto :goto_19

    .line 126
    :cond_41
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->nTraps:I

    if-lez v1, :cond_4c

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    .line 129
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eqz v4, :cond_47

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget v6, v4, Lcom/watabou/utils/Rect;->left:I

    :goto_1d
    iget v8, v4, Lcom/watabou/utils/Rect;->right:I

    if-gt v6, v8, :cond_45

    .line 132
    iget v8, v4, Lcom/watabou/utils/Rect;->top:I

    :goto_1e
    iget v9, v4, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v8, v9, :cond_44

    .line 133
    new-instance v9, Lcom/watabou/utils/Point;

    invoke-direct {v9, v6, v8}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 134
    invoke-virtual {v4, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canPlaceTrap(Lcom/watabou/utils/Point;)Z

    move-result v11

    if-eqz v11, :cond_43

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 135
    :cond_45
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_46
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/watabou/utils/Point;

    .line 136
    invoke-virtual {v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    .line 137
    iget-object v6, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v6, v6, v5

    const/4 v8, 0x1

    if-ne v6, v8, :cond_46

    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 139
    :cond_47
    throw v3

    :cond_48
    const/4 v2, 0x0

    .line 140
    :goto_20
    iget v3, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v2, v3, :cond_4a

    .line 141
    iget-object v3, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 143
    :cond_4a
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->nTraps:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->nTraps:I

    const/4 v2, 0x0

    .line 144
    :goto_21
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->nTraps:I

    if-ge v2, v3, :cond_4c

    .line 145
    invoke-static {v1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 146
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->trapClasses:[Ljava/lang/Class;

    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->trapChances:[F

    invoke-static {v5}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->hide()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 148
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 149
    iget-object v5, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-boolean v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    if-eqz v4, :cond_4b

    const/16 v4, 0x12

    goto :goto_22

    :cond_4b
    const/16 v4, 0x11

    :goto_22
    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 150
    :cond_4c
    invoke-virtual {v0, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->decorate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    return v1
.end method

.method public setTraps(I[Ljava/lang/Class;[F)Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class<",
            "*>;[F)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->nTraps:I

    .line 2
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->trapClasses:[Ljava/lang/Class;

    .line 3
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->trapChances:[F

    return-object p0
.end method
