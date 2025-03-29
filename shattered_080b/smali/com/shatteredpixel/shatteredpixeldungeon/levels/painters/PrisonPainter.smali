.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/PrisonPainter;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;
.source "PrisonPainter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;-><init>()V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 2
    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EntranceRoom;

    if-eqz v3, :cond_0

    .line 3
    sget-boolean p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->questRoomSpawned:Z

    if-eqz p2, :cond_6

    .line 4
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->questRoomSpawned:Z

    .line 5
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;

    invoke-direct {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;-><init>()V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v3

    iput v3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 7
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 8
    :goto_0
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/watabou/utils/Point;

    .line 9
    iget v6, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {p1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_1

    .line 10
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned2:Z

    .line 12
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given2:Z

    .line 13
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 14
    iput-boolean v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 15
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 16
    :cond_5
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand2:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 18
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand2:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iput-boolean v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 19
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 20
    :cond_6
    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 21
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 22
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    add-int/lit8 v3, p2, 0x1

    :goto_2
    sub-int v4, v0, p2

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x4

    if-ge v3, v5, :cond_c

    .line 23
    aget v4, p1, v3

    if-ne v4, v2, :cond_b

    const v4, 0x3d4ccccd    # 0.05f

    add-int/lit8 v5, v3, 0x1

    .line 24
    aget v7, p1, v5

    if-ne v7, v6, :cond_7

    add-int v7, v3, p2

    aget v7, p1, v7

    if-ne v7, v6, :cond_7

    const/high16 v4, 0x3e800000    # 0.25f

    :cond_7
    add-int/lit8 v7, v3, -0x1

    .line 25
    aget v8, p1, v7

    const v9, 0x3e4ccccd    # 0.2f

    if-ne v8, v6, :cond_8

    add-int v8, v3, p2

    aget v8, p1, v8

    if-ne v8, v6, :cond_8

    add-float/2addr v4, v9

    .line 26
    :cond_8
    aget v5, p1, v5

    if-ne v5, v6, :cond_9

    sub-int v5, v3, p2

    aget v5, p1, v5

    if-ne v5, v6, :cond_9

    add-float/2addr v4, v9

    .line 27
    :cond_9
    aget v5, p1, v7

    if-ne v5, v6, :cond_a

    sub-int v5, v3, p2

    aget v5, p1, v5

    if-ne v5, v6, :cond_a

    add-float/2addr v4, v9

    .line 28
    :cond_a
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v5

    cmpg-float v4, v5, v4

    if-gez v4, :cond_b

    const/16 v4, 0x14

    .line 29
    aput v4, p1, v3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    const/16 v0, 0xc

    const/16 v3, 0xe

    if-ge v1, p2, :cond_f

    .line 30
    aget v5, p1, v1

    if-ne v5, v6, :cond_e

    add-int v5, v1, p2

    aget v7, p1, v5

    if-eq v7, v2, :cond_d

    aget v5, p1, v5

    if-ne v5, v3, :cond_e

    :cond_d
    const/4 v3, 0x6

    .line 31
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_e

    .line 32
    aput v0, p1, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    move v1, p2

    :goto_4
    if-ge v1, v4, :cond_12

    .line 33
    aget v5, p1, v1

    if-ne v5, v6, :cond_11

    sub-int v5, v1, p2

    aget v5, p1, v5

    if-ne v5, v6, :cond_11

    add-int v5, v1, p2

    aget v7, p1, v5

    if-eq v7, v2, :cond_10

    aget v5, p1, v5

    if-ne v5, v3, :cond_11

    :cond_10
    const/4 v5, 0x3

    .line 34
    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    if-nez v5, :cond_11

    .line 35
    aput v0, p1, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-void
.end method
