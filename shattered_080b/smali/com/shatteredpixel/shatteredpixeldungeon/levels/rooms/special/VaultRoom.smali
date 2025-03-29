.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/VaultRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "VaultRoom.java"


# instance fields
.field public prizeClasses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/VaultRoom;->prizeClasses:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public maxHeight()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public maxWidth()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    const/16 v1, 0xe

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 4
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v0, v2

    div-int/2addr v0, v1

    .line 5
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/2addr v2, v1

    .line 6
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v2, v2, v1

    add-int/2addr v2, v0

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/VaultRoom;->prizeClasses:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/VaultRoom;->prize()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/VaultRoom;->prize()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/16 v0, 0xa

    .line 11
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    sget-object v4, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    aget v3, v4, v3

    add-int/2addr v2, v3

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/CrystalMimic;

    invoke-static {v2, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->spawnAt(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    aget v0, v0, v3

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 14
    :goto_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/CrystalKey;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/CrystalKey;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 15
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 16
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void
.end method

.method public final prize()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/VaultRoom;->prizeClasses:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1
.end method
