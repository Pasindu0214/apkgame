.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MassGraveRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "MassGraveRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MassGraveRoom$Bones;
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
.method public minHeight()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->BARRICADE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const/4 v0, 0x4

    .line 4
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 5
    invoke-static {p1, p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 6
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MassGraveRoom$Bones;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MassGraveRoom$Bones;-><init>()V

    .line 7
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->setRect(IIII)V

    .line 8
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 10
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Skeleton;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Skeleton;-><init>()V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v4

    .line 12
    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v5, v4

    if-ne v5, v0, :cond_0

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v5

    if-nez v5, :cond_0

    .line 13
    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 14
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    invoke-direct {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    invoke-direct {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    .line 20
    invoke-direct {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    .line 21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_2
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    .line 23
    invoke-direct {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    .line 24
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_3
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v1

    const v3, 0x3f19999a    # 0.6f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_4
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v1

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_5

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v3

    .line 29
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v4, v3

    if-ne v4, v0, :cond_6

    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v4, v3}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 30
    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 32
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    goto :goto_1

    :cond_7
    return-void
.end method
