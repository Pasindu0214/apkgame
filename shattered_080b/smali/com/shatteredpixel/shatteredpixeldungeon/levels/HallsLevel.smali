.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;
.source "HallsLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$FireParticle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    rsub-int/lit8 v0, v0, 0x1a

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    const v0, 0x801500

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xa68521

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    return-void
.end method

.method public static addHallsVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;

    invoke-direct {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel$Stream;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;->addHallsVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public create()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;-><init>()V

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;-><init>()V

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->create()V

    return-void
.end method

.method public initRooms()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->initRooms()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/DemonSpawnerRoom;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/DemonSpawnerRoom;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public nMobs()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->nMobs()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public painter()Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;
    .locals 8

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/HallsPainter;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/HallsPainter;-><init>()V

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->WATER:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v1, v2, :cond_0

    const v1, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_0
    const v1, 0x3e19999a    # 0.15f

    .line 2
    :goto_0
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterFill:F

    const/4 v1, 0x6

    .line 3
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterSmoothness:I

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->GRASS:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v2, v3, :cond_1

    const v2, 0x3f266666    # 0.65f

    goto :goto_1

    :cond_1
    const v2, 0x3dcccccd    # 0.1f

    .line 5
    :goto_1
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassFill:F

    const/4 v2, 0x3

    .line 6
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassSmoothness:I

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->nTraps()I

    move-result v3

    const/16 v4, 0x10

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    .line 8
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/FrostTrap;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/StormTrap;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CorrosionTrap;

    aput-object v7, v5, v6

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BlazingTrap;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DisintegrationTrap;

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/RockfallTrap;

    aput-object v6, v5, v2

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/FlashingTrap;

    aput-object v2, v5, v1

    const/4 v1, 0x7

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap;

    aput-object v2, v5, v1

    const/16 v1, 0x8

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WeakeningTrap;

    aput-object v2, v5, v1

    const/16 v1, 0x9

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DisarmingTrap;

    aput-object v2, v5, v1

    const/16 v1, 0xa

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/SummoningTrap;

    aput-object v2, v5, v1

    const/16 v1, 0xb

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WarpingTrap;

    aput-object v2, v5, v1

    const/16 v1, 0xc

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CursingTrap;

    aput-object v2, v5, v1

    const/16 v1, 0xd

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

    aput-object v2, v5, v1

    const/16 v1, 0xe

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap;

    aput-object v2, v5, v1

    const/16 v1, 0xf

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DistortionTrap;

    aput-object v2, v5, v1

    new-array v1, v4, [F

    .line 9
    fill-array-data v1, :array_0

    .line 10
    invoke-virtual {v0, v3, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->setTraps(I[Ljava/lang/Class;[F)Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;

    return-object v0

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public specialRooms()I
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

.method public standardRooms()I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0

    nop

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    :pswitch_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "water_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "statue_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0xf

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "statue_name"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "water_name"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_name"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "grass_name"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_halls.png"

    return-object v0
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water4.png"

    return-object v0
.end method
