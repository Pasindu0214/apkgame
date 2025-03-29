.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;
.source "CityLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$SmokeParticle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;-><init>()V

    const v0, 0x4b6636

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xf2f2f2

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    return-void
.end method

.method public static addCityVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke;

    invoke-direct {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke;-><init>(I)V

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

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;->addCityVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public createMobs()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned1:Z

    if-nez v0, :cond_5

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_5

    rsub-int/lit8 v0, v0, 0x14

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    .line 5
    invoke-virtual {v2, v1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 6
    invoke-virtual {v1, v2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 7
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v3, Lcom/watabou/utils/PathFinder;->CIRCLE4:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    add-int/2addr v5, v2

    aget-boolean v5, v1, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/2addr v6, v2

    aget-boolean v6, v1, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget v7, v3, v6

    add-int/2addr v7, v2

    aget-boolean v7, v1, v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    aget v3, v3, v7

    add-int/2addr v2, v3

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    sput-boolean v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned1:Z

    .line 10
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    .line 11
    sput-boolean v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->alternative:Z

    goto :goto_1

    .line 12
    :cond_1
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->alternative:Z

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->alternative:Z

    .line 14
    :goto_1
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given1:Z

    .line 15
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reward:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 16
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v1, :cond_4

    .line 17
    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reward:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    iput-boolean v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 19
    :cond_5
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->createMobs()V

    return-void
.end method

.method public painter()Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;
    .locals 8

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CityPainter;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CityPainter;-><init>()V

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->WATER:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v1, v2, :cond_0

    const v1, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const v1, 0x3e99999a    # 0.3f

    .line 2
    :goto_0
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterFill:F

    const/4 v1, 0x4

    .line 3
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterSmoothness:I

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->GRASS:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v2, v3, :cond_1

    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_1

    :cond_1
    const v2, 0x3e4ccccd    # 0.2f

    .line 5
    :goto_1
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassFill:F

    const/4 v2, 0x3

    .line 6
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassSmoothness:I

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->nTraps()I

    move-result v3

    const/16 v4, 0xf

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

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DisintegrationTrap;

    aput-object v2, v5, v1

    const/4 v1, 0x5

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/RockfallTrap;

    aput-object v2, v5, v1

    const/4 v1, 0x6

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

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap;

    aput-object v2, v5, v1

    const/16 v1, 0xe

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
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public standardRooms()I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    return v0

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "statue_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "sp_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "deco_desc"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "exit_desc"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "entrance_desc"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "water_name"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_name"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_city.png"

    return-object v0
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water3.png"

    return-object v0
.end method
