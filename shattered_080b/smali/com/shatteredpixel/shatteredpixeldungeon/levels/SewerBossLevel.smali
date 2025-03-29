.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;
.source "SewerBossLevel.java"


# instance fields
.field public stairs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;-><init>()V

    const v0, 0x48763c

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0x59994a

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;->stairs:I

    return-void
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel$Torch;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel$Torch;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel$Torch;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel$Torch;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public builder()Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;
    .locals 6

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;-><init>()V

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f333333    # 0.7f

    .line 2
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v3

    const/4 v4, 0x2

    .line 3
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iput v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveExponent:I

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v1, v5

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveIntensity:F

    rem-float/2addr v3, v2

    .line 5
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveOffset:F

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v5, v2, v3

    .line 6
    iput v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLength:F

    .line 7
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLenJitterChances:[F

    new-array v2, v4, [F

    .line 8
    fill-array-data v2, :array_0

    new-array v1, v1, [F

    aput v5, v1, v3

    .line 9
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathTunnelChances:[F

    .line 10
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->branchTunnelChances:[F

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public createItems()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->roomEntrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    :cond_1
    return-void
.end method

.method public createMobs()V
    .locals 0

    return-void
.end method

.method public initRooms()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossEntranceRoom;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossEntranceRoom;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->roomEntrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 4
    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->setSizeCat(II)Z

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;->randomGooRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->builder:Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;

    .line 11
    iput-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 12
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/RatKingRoom;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/RatKingRoom;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public nTraps()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public painter()Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;
    .locals 4

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/SewerPainter;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/SewerPainter;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterFill:F

    const/4 v1, 0x5

    .line 3
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterSmoothness:I

    const v1, 0x3e4ccccd    # 0.2f

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassFill:F

    const/4 v1, 0x4

    .line 5
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassSmoothness:I

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;->trapClasses()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;->trapChances()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->setTraps(I[Ljava/lang/Class;[F)Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;

    return-object v0
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->roomEntrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 3
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_0

    return v0
.end method

.method public respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "stairs"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;->stairs:I

    return-void
.end method

.method public seal()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/16 v1, 0x1d

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ripple(I)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;->stairs:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    :cond_0
    return-void
.end method

.method public standardRooms()I
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;->stairs:I

    const-string v1, "stairs"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public unseal()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;->stairs:I

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;->stairs:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerBossLevel;->stairs:I

    const/4 v1, 0x7

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    :cond_0
    return-void
.end method
