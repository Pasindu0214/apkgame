.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;
.source "SewerLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$WaterParticle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;-><init>()V

    const v0, 0x48763c

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0x59994a

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    return-void
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v2, v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 5
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;

    invoke-direct {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public createItems()V
    .locals 10

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->DEW_VIAL:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->dropped()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;-><init>()V

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->DEW_VIAL:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 5
    :cond_0
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned:Z

    if-nez v0, :cond_8

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-le v0, v1, :cond_8

    const/4 v2, 0x5

    rsub-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_8

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;-><init>()V

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v3

    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 8
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned:Z

    .line 10
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v3, v0, -0x1

    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type:I

    const/4 v3, 0x0

    .line 11
    sput-boolean v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given:Z

    .line 12
    sput-boolean v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed:Z

    .line 13
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->depth:I

    .line 14
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    const v4, 0x3f733333    # 0.95f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x3

    const/4 v8, 0x2

    cmpg-float v9, v0, v6

    if-gez v9, :cond_2

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/LeatherArmor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/LeatherArmor;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    cmpg-float v9, v0, v5

    if-gez v9, :cond_3

    .line 16
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MailArmor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MailArmor;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    const/4 v2, 0x4

    .line 17
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ScaleArmor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ScaleArmor;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    goto :goto_0

    .line 18
    :cond_4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/PlateArmor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/PlateArmor;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 19
    :goto_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 20
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 21
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    cmpg-float v2, v0, v6

    if-gez v2, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    cmpg-float v2, v0, v5

    if-gez v2, :cond_6

    goto :goto_1

    :cond_6
    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    .line 22
    :goto_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/16 v0, 0xa

    .line 24
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_8

    .line 25
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 26
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 27
    :cond_8
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->createItems()V

    return-void
.end method

.method public painter()Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;
    .locals 4

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/SewerPainter;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/SewerPainter;-><init>()V

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->WATER:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v1, v2, :cond_0

    const v1, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const v1, 0x3e99999a    # 0.3f

    :goto_0
    const/4 v2, 0x5

    .line 2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterFill:F

    .line 3
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->waterSmoothness:I

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->GRASS:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v1, v2, :cond_1

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_1

    :cond_1
    const v1, 0x3e4ccccd    # 0.2f

    :goto_1
    const/4 v2, 0x4

    .line 5
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassFill:F

    .line 6
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->grassSmoothness:I

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->nTraps()I

    move-result v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;->trapClasses()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;->trapChances()[F

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->setTraps(I[Ljava/lang/Class;[F)Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;

    return-object v0
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
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
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

    add-int/lit8 v0, v0, 0x5

    return v0

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;

    const/16 v1, 0x14

    const/4 v2, 0x0

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

    const-string v1, "empty_deco_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "water_name"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_sewers.png"

    return-object v0
.end method

.method public trapChances()[F
    .locals 3

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-array v0, v1, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public trapClasses()[Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WornDartTrap;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v0, v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ChillingTrap;

    aput-object v4, v1, v2

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ShockingTrap;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ToxicTrap;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/AlarmTrap;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/OozeTrap;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ConfusionTrap;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/FlockTrap;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/SummoningTrap;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/TeleportationTrap;

    aput-object v2, v1, v0

    :goto_0
    return-object v1
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water0.png"

    return-object v0
.end method
