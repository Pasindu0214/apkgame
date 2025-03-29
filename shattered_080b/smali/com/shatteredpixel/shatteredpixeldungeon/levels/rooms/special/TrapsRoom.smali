.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/TrapsRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "TrapsRoom.java"


# static fields
.field public static levelTraps:[[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/FlashingTrap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ExplosiveTrap;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrippingTrap;

    const/4 v4, 0x5

    new-array v4, v4, [[Ljava/lang/Class;

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/TeleportationTrap;

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/FlockTrap;

    const/4 v10, 0x2

    aput-object v8, v6, v10

    aput-object v6, v4, v7

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v2, v6, v7

    aput-object v3, v6, v9

    aput-object v1, v6, v10

    aput-object v6, v4, v9

    new-array v3, v5, [Ljava/lang/Class;

    aput-object v2, v3, v7

    aput-object v0, v3, v9

    aput-object v1, v3, v10

    aput-object v3, v4, v10

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WarpingTrap;

    aput-object v2, v1, v7

    aput-object v0, v1, v9

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DisintegrationTrap;

    aput-object v0, v1, v10

    aput-object v1, v4, v5

    new-array v0, v9, [Ljava/lang/Class;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    aput-object v0, v4, v1

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/TrapsRoom;->levelTraps:[[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method

.method public static prize(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findPrizeItem()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 3
    invoke-static {p0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 4
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 p0, p0, 0x5

    add-int/2addr p0, v1

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomWeapon(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 p0, p0, 0x5

    add-int/2addr p0, v1

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object p0

    .line 6
    :goto_0
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 8
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_2
    return-object p0
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 12

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/TrapsRoom;->levelTraps:[[Ljava/lang/Class;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v1, v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/watabou/utils/Random;->oneOf([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1, p0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p1, p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v4

    .line 7
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 8
    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v7, v3

    .line 9
    iget v8, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v7, v7, v8

    add-int/2addr v7, v6

    .line 10
    aget v5, v5, v7

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    .line 11
    :goto_2
    iget v5, v4, Lcom/watabou/utils/Point;->x:I

    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    const/4 v7, -0x1

    if-ne v5, v6, :cond_3

    .line 12
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v3

    .line 13
    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 14
    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v6

    add-int/lit8 v10, v6, -0x2

    move-object v6, p1

    move v7, v4

    move v11, v1

    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    :goto_3
    move v7, v5

    goto/16 :goto_6

    .line 15
    :cond_3
    iget v8, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v5, v8, :cond_4

    add-int/lit8 v4, v6, 0x1

    .line 16
    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 17
    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v6

    add-int/lit8 v10, v6, -0x2

    move-object v6, p1

    move v7, v4

    move v11, v1

    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_3

    .line 18
    :cond_4
    iget v4, v4, Lcom/watabou/utils/Point;->y:I

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v4, v5, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    .line 20
    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v5, v3

    .line 21
    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v6

    add-int/lit8 v9, v6, -0x2

    const/4 v10, 0x1

    move-object v6, p1

    move v8, v5

    move v11, v1

    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    :goto_4
    move v7, v4

    goto :goto_5

    .line 22
    :cond_5
    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v4, v5, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    .line 24
    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v3

    .line 25
    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v6

    add-int/lit8 v9, v6, -0x2

    const/4 v10, 0x1

    move-object v6, p1

    move v8, v5

    move v11, v1

    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_4

    :goto_5
    move v4, v7

    goto :goto_3

    :cond_6
    const/4 v4, -0x1

    .line 26
    :goto_6
    invoke-virtual {p0}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/watabou/utils/Point;

    .line 27
    invoke-virtual {p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v6

    .line 28
    iget-object v8, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v8, v8, v6

    if-ne v8, v2, :cond_7

    .line 29
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {p1, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    goto :goto_7

    .line 30
    :cond_8
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v7, v7, v0

    add-int/2addr v7, v4

    const/4 v0, 0x3

    .line 31
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_a

    if-nez v1, :cond_9

    .line 32
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v3, v0, v7

    .line 33
    :cond_9
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/TrapsRoom;->prize(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    goto :goto_8

    :cond_a
    const/16 v0, 0xb

    .line 34
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v0, v1, v7

    .line 35
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/TrapsRoom;->prize(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 36
    :goto_8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void
.end method
