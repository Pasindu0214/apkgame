.class public Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;
.super Ljava/lang/Object;
.source "Ballistica.java"


# instance fields
.field public collisionPos:Ljava/lang/Integer;

.field public dist:Ljava/lang/Integer;

.field public path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sourcePos:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(III)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 3
    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    .line 4
    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    .line 6
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v7, p3, 0x2

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-int/lit8 v8, p3, 0x4

    if-lez v8, :cond_2

    const/4 v3, 0x1

    .line 7
    :cond_2
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 9
    rem-int v9, v1, v8

    .line 10
    rem-int v10, v2, v8

    .line 11
    div-int v11, v1, v8

    .line 12
    div-int v12, v2, v8

    sub-int/2addr v10, v9

    sub-int/2addr v12, v11

    const/4 v9, -0x1

    if-lez v10, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, -0x1

    :goto_2
    if-lez v12, :cond_4

    const/4 v9, 0x1

    .line 13
    :cond_4
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 14
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int v9, v9, v8

    if-le v10, v12, :cond_5

    move/from16 v16, v11

    move v11, v9

    move/from16 v9, v16

    goto :goto_3

    :cond_5
    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    .line 15
    :goto_3
    div-int/lit8 v8, v10, 0x2

    move v13, v1

    .line 16
    :cond_6
    :goto_4
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v14

    if-eqz v14, :cond_c

    if-eqz v3, :cond_7

    .line 17
    iget-object v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_7

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v15, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v15, v15, v13

    if-nez v15, :cond_7

    iget-object v14, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v14, v14, v13

    if-nez v14, :cond_7

    .line 18
    iget-object v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-static {v14, v6}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 19
    iget-object v15, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    if-nez v15, :cond_7

    .line 20
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    .line 21
    :cond_7
    iget-object v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_8

    .line 22
    iget-object v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_8

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v14, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v14, v14, v13

    if-nez v14, :cond_a

    :cond_8
    iget-object v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    .line 23
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_9

    if-eqz v7, :cond_9

    invoke-static {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v14

    if-nez v14, :cond_a

    :cond_9
    if-ne v13, v2, :cond_b

    if-eqz v5, :cond_b

    .line 24
    :cond_a
    iget-object v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    if-nez v14, :cond_b

    .line 25
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    :cond_b
    add-int/2addr v13, v9

    add-int/2addr v8, v12

    if-lt v8, v10, :cond_6

    sub-int/2addr v8, v10

    add-int/2addr v13, v11

    goto :goto_4

    .line 26
    :cond_c
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 27
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    goto :goto_5

    .line 28
    :cond_d
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 29
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    goto :goto_5

    .line 30
    :cond_e
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-static {v1, v2, v1}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v1

    .line 31
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    .line 32
    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    :goto_5
    return-void
.end method


# virtual methods
.method public subPath(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
