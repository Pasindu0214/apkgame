.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;
.source "ImpShopRoom.java"


# instance fields
.field public impSpawned:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->impSpawned:Z

    return-void
.end method


# virtual methods
.method public entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public maxConnections(I)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public maxHeight()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public maxWidth()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public minHeight()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public onLevelLoad(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->impSpawned:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->impSpawned:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->placeShopkeeper(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->placeItems(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    :cond_0
    return-void
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    const/16 v1, 0xe

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v1, 0x3

    const/16 v2, 0x1d

    .line 3
    invoke-static {p1, p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 5
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed:Z

    if-eqz v1, :cond_1

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->impSpawned:Z

    .line 8
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->placeShopkeeper(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->placeItems(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->impSpawned:Z

    :goto_1
    return-void
.end method

.method public placeShopkeeper(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/utils/Point;

    .line 3
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 5
    :cond_1
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/ImpShopkeeper;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/ImpShopkeeper;-><init>()V

    .line 6
    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 7
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 8
    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_2

    .line 9
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "imp_spawned"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->impSpawned:Z

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->impSpawned:Z

    const-string v1, "imp_spawned"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method
