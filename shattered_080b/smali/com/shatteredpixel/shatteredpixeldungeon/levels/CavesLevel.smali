.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;
.source "CavesLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Sparkle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;-><init>()V

    const v0, 0x534f3e

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xb9d661

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    return-void
.end method

.method public static addCavesVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V
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
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;

    invoke-direct {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Vein;-><init>(I)V

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

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;->addCavesVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public initRooms()Ljava/util/ArrayList;
    .locals 4
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
    sget-boolean v1, La/b/a/e;->spawned:Z

    if-nez v1, :cond_1

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_1

    rsub-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/BlacksmithRoom;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/BlacksmithRoom;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 4
    sput-boolean v1, La/b/a/e;->spawned:Z

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, La/b/a/e;->alternative:Z

    .line 6
    sput-boolean v3, La/b/a/e;->given:Z

    :cond_1
    return-object v0
.end method

.method public painter()Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;
    .locals 8

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CavesPainter;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CavesPainter;-><init>()V

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->WATER:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v1, v2, :cond_0

    const v1, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const v1, 0x3e99999a    # 0.3f

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
    const v2, 0x3e19999a    # 0.15f

    .line 5
    :goto_1
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassFill:F

    const/4 v2, 0x3

    .line 6
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassSmoothness:I

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->nTraps()I

    move-result v3

    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    .line 8
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/FrostTrap;

    aput-object v7, v5, v6

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/StormTrap;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CorrosionTrap;

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrippingTrap;

    aput-object v6, v5, v2

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/RockfallTrap;

    aput-object v2, v5, v1

    const/4 v1, 0x7

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap;

    aput-object v2, v5, v1

    const/16 v1, 0x8

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ConfusionTrap;

    aput-object v2, v5, v1

    const/16 v1, 0x9

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/SummoningTrap;

    aput-object v2, v5, v1

    const/16 v1, 0xa

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WarpingTrap;

    aput-object v2, v5, v1

    const/16 v1, 0xb

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap;

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
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public specialRooms()I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
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

    add-int/lit8 v0, v0, 0x6

    return v0

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc

    if-eq p1, v1, :cond_2

    const/16 v1, 0xf

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "wall_deco_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "exit_desc"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "entrance_desc"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/16 v1, 0xf

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

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "grass_name"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_caves.png"

    return-object v0
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water2.png"

    return-object v0
.end method
