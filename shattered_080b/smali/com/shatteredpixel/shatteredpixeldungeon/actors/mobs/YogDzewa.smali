.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "YogDzewa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa$YogRipper;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa$Larva;
    }
.end annotation


# instance fields
.field public abilityCooldown:F

.field public fistSummons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public phase:I

.field public regularSummons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public summonCooldown:F

.field public targetedCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/YogSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x3e8

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x32

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->DEMONIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->fistSummons:Ljava/util/ArrayList;

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seedCurDepth()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->pushGenerator(J)V

    .line 12
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->fistSummons:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$BurningFist;

    goto :goto_0

    :cond_0
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$SoiledFist;

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->fistSummons:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$RottingFist;

    goto :goto_1

    :cond_1
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$RustedFist;

    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->fistSummons:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$BrightFist;

    goto :goto_2

    :cond_2
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$DarkFist;

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->fistSummons:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    .line 16
    invoke-static {}, Lcom/watabou/utils/Random;->popGenerator()V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->regularSummons:Ljava/util/ArrayList;

    :goto_3
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 18
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->spawnersAlive:I

    if-lt v0, v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->regularSummons:Ljava/util/ArrayList;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa$Larva;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->regularSummons:Ljava/util/ArrayList;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa$YogRipper;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->regularSummons:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    .line 23
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Sleep;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vertigo;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->die(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    if-nez v1, :cond_2

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 6
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->notice()V

    .line 8
    :cond_2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->findFist()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;

    move-result-object v1

    if-nez v1, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "hope"

    .line 9
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    const/high16 v1, -0x3e900000    # -15.0f

    .line 10
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    .line 11
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    .line 12
    :cond_3
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 13
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v3

    .line 14
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 15
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->rooted:Z

    const/4 v4, 0x0

    if-nez v2, :cond_14

    .line 16
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 17
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 18
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 20
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 21
    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 22
    rem-int v11, v7, v10

    .line 23
    rem-int v12, v6, v10

    .line 24
    div-int v13, v7, v10

    .line 25
    div-int/2addr v6, v10

    sub-int/2addr v12, v11

    sub-int/2addr v6, v13

    if-lez v12, :cond_6

    const/4 v11, 0x1

    goto :goto_0

    :cond_6
    const/4 v11, -0x1

    :goto_0
    if-lez v6, :cond_7

    const/4 v13, 0x1

    goto :goto_1

    :cond_7
    const/4 v13, -0x1

    .line 26
    :goto_1
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 27
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int v13, v13, v10

    if-le v12, v6, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v16, v12

    move v12, v6

    move/from16 v6, v16

    move/from16 v17, v13

    move v13, v11

    move/from16 v11, v17

    .line 28
    :goto_2
    div-int/lit8 v10, v12, 0x2

    move v14, v7

    .line 29
    :cond_9
    :goto_3
    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 30
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    add-int/2addr v14, v11

    add-int/2addr v10, v6

    if-lt v10, v12, :cond_9

    sub-int/2addr v10, v12

    add-int/2addr v14, v13

    goto :goto_3

    .line 32
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 33
    invoke-static {v8, v3}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_4

    .line 34
    :cond_b
    invoke-static {v7, v8, v7}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v6

    .line 35
    :goto_4
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v9, v7, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;

    invoke-virtual {v7}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v6

    invoke-direct {v10, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v9, v10}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 36
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 37
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 38
    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iget-object v10, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v9, v10, :cond_d

    instance-of v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    if-eqz v9, :cond_e

    .line 39
    :cond_d
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_e
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    aget-boolean v9, v9, v7

    if-eqz v9, :cond_c

    .line 41
    invoke-virtual {v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->destroy(I)V

    .line 42
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    const/4 v5, 0x1

    goto :goto_5

    :cond_f
    if-eqz v5, :cond_10

    .line 43
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 44
    :cond_10
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/16 v5, 0x14

    const/16 v6, 0x23

    .line 45
    invoke-static {v5, v6}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v5

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye$DeathGaze;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye$DeathGaze;-><init>()V

    invoke-virtual {v2, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 46
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_12

    .line 47
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    .line 48
    iget v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v5

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v7, 0x2

    invoke-static {v3, v7}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v7

    .line 49
    invoke-virtual {v5, v6, v4, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 50
    :cond_12
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v5

    if-nez v5, :cond_11

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v2, v5, :cond_11

    .line 51
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    .line 52
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "kill"

    invoke-static {v2, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 53
    :cond_13
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 54
    :cond_14
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_29

    .line 55
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr v1, v4

    div-int/lit16 v1, v1, 0x190

    add-int/2addr v1, v3

    .line 56
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_1d

    .line 57
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eqz v5, :cond_16

    .line 58
    :cond_15
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v7, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v8, 0x8

    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v8

    aget v7, v7, v8

    add-int/2addr v6, v7

    .line 59
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v7

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v9, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 60
    invoke-virtual {v8, v9, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_15

    .line 61
    :cond_16
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 65
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 66
    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 67
    rem-int v11, v7, v10

    .line 68
    rem-int v12, v6, v10

    .line 69
    div-int v13, v7, v10

    .line 70
    div-int/2addr v6, v10

    sub-int/2addr v12, v11

    sub-int/2addr v6, v13

    if-lez v12, :cond_17

    const/4 v11, 0x1

    goto :goto_8

    :cond_17
    const/4 v11, -0x1

    :goto_8
    if-lez v6, :cond_18

    const/4 v13, 0x1

    goto :goto_9

    :cond_18
    const/4 v13, -0x1

    .line 71
    :goto_9
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 72
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int v13, v13, v10

    if-le v12, v6, :cond_19

    goto :goto_a

    :cond_19
    move/from16 v16, v12

    move v12, v6

    move/from16 v6, v16

    move/from16 v17, v13

    move v13, v11

    move/from16 v11, v17

    .line 73
    :goto_a
    div-int/lit8 v10, v12, 0x2

    move v14, v7

    .line 74
    :cond_1a
    :goto_b
    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 75
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    add-int/2addr v14, v11

    add-int/2addr v10, v6

    if-lt v10, v12, :cond_1a

    sub-int/2addr v10, v12

    add-int/2addr v14, v13

    goto :goto_b

    .line 77
    :cond_1b
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 78
    invoke-static {v8, v3}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_c

    .line 79
    :cond_1c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_c
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 81
    :cond_1d
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v5, v1

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_1f

    aget v7, v1, v6

    .line 82
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v9, v7

    aget-boolean v7, v8, v9

    if-eqz v7, :cond_1e

    const/4 v1, 0x0

    goto :goto_e

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1f
    const/4 v1, 0x1

    :goto_e
    if-eqz v1, :cond_20

    .line 83
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    :cond_20
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 85
    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 86
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 88
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 89
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 90
    rem-int v10, v6, v9

    .line 91
    rem-int v11, v5, v9

    .line 92
    div-int v12, v6, v9

    .line 93
    div-int/2addr v5, v9

    sub-int/2addr v11, v10

    sub-int/2addr v5, v12

    if-lez v11, :cond_22

    const/4 v10, 0x1

    goto :goto_f

    :cond_22
    const/4 v10, -0x1

    :goto_f
    if-lez v5, :cond_23

    const/4 v12, 0x1

    goto :goto_10

    :cond_23
    const/4 v12, -0x1

    .line 94
    :goto_10
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 95
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int v12, v12, v9

    if-le v11, v5, :cond_24

    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    goto :goto_11

    :cond_24
    move/from16 v16, v11

    move v11, v5

    move/from16 v5, v16

    .line 96
    :goto_11
    div-int/lit8 v9, v11, 0x2

    move v13, v6

    .line 97
    :cond_25
    :goto_12
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v14

    if-eqz v14, :cond_26

    .line 98
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    add-int/2addr v13, v12

    add-int/2addr v9, v5

    if-lt v9, v11, :cond_25

    sub-int/2addr v9, v11

    add-int/2addr v13, v10

    goto :goto_12

    .line 100
    :cond_26
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_27

    .line 101
    invoke-static {v7, v3}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_13

    .line 102
    :cond_27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_13
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 104
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v7, v7, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TargetedCell;

    const/high16 v9, 0xff0000

    invoke-direct {v8, v6, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TargetedCell;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 106
    :cond_28
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 107
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 108
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v4, v5}, Lcom/watabou/utils/Random;->NormalFloat(FF)F

    move-result v4

    add-float/2addr v4, v1

    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    .line 109
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    goto :goto_15

    :cond_29
    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 111
    :cond_2a
    :goto_15
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_2e

    .line 112
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->regularSummons:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 113
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 114
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->regularSummons:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_16
    if-ge v6, v5, :cond_2d

    aget v8, v1, v6

    .line 116
    iget v9, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v9, v8

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v9

    if-nez v9, :cond_2c

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2b

    .line 117
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v9, v10, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v9

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v12, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2c

    .line 118
    :cond_2b
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v7, v8

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_2d
    const/4 v1, -0x1

    if-eq v7, v1, :cond_2e

    .line 119
    iput v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 120
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 121
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {v1, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 122
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->beckon(I)V

    .line 123
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v4, v5}, Lcom/watabou/utils/Random;->NormalFloat(FF)F

    move-result v4

    add-float/2addr v4, v1

    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    .line 124
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->findFist()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 126
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    sub-int/2addr v4, v3

    rsub-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    add-float/2addr v1, v4

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    goto/16 :goto_15

    .line 127
    :cond_2e
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_2f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v1, v5

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    goto :goto_17

    :cond_2f
    const/high16 v5, 0x3f800000    # 1.0f

    .line 128
    :goto_17
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_30

    sub-float/2addr v1, v5

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    .line 129
    :cond_30
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_31

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_31

    .line 130
    iput v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    .line 131
    :cond_31
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    if-ne v1, v4, :cond_32

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_32

    .line 132
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    :cond_32
    return v3
.end method

.method public aggro(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa$Larva;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    if-eqz v2, :cond_0

    .line 3
    :cond_1
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->aggro(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public beckon(I)V
    .locals 0

    return-void
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 2
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->findFist()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;

    move-result-object p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    const/16 p2, 0x64

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    .line 5
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    mul-int/lit16 p1, p1, 0x12c

    sub-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 6
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 7
    :cond_2
    :goto_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_3

    .line 8
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    int-to-float v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    .line 9
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    .line 10
    :cond_3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    if-ge p1, v1, :cond_a

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    mul-int/lit16 p1, p1, 0x12c

    sub-int/2addr v2, p1

    if-gt v1, v2, :cond_a

    .line 11
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    .line 12
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    if-nez p1, :cond_4

    .line 13
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    .line 14
    :cond_4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/Object;

    const-string v3, "darkness"

    .line 15
    invoke-static {p0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, p1, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v3, 0xff00

    new-array v4, p1, [Ljava/lang/Object;

    .line 17
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;

    const-string v6, "invulnerable"

    invoke-static {v5, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, p1, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v1, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->fistSummons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;

    .line 20
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sub-int/2addr v1, v2

    .line 21
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 22
    invoke-virtual {v1, v3, v5, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 23
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 24
    invoke-virtual {v1, v3, v5, p2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 25
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    add-int/2addr p2, v2

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 26
    invoke-virtual {p2, v1, v5, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 27
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_5

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    .line 28
    :cond_5
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_6

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    .line 29
    :cond_6
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 30
    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v1, p2

    .line 31
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p2

    if-nez p2, :cond_7

    .line 32
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    goto :goto_1

    :cond_7
    add-int/lit8 p2, v1, -0x1

    .line 33
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-nez v3, :cond_8

    .line 34
    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    goto :goto_1

    :cond_8
    add-int/2addr v1, v2

    .line 35
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p2

    if-nez p2, :cond_9

    .line 36
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    :cond_9
    :goto_1
    const/high16 p2, 0x40800000    # 4.0f

    .line 37
    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V

    .line 38
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {p2, p1, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 39
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    .line 40
    :cond_a
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    if-eqz p1, :cond_b

    int-to-float p2, v0

    .line 41
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->addTime(F)V

    :cond_b
    :goto_2
    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->description()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->spawnersAlive:I

    if-lez v1, :cond_0

    const-string v1, "\n\n"

    .line 3
    invoke-static {v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;

    const-string v3, "desc_spawners"

    invoke-static {v2, v3, v1, v0}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public die(Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 2
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa$Larva;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    if-eqz v2, :cond_0

    .line 3
    :cond_1
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v1, 0x4

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_3

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    .line 7
    :cond_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->bossSlain()V

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 9
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "defeated"

    .line 10
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    return-void
.end method

.method public final findFist()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 2
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAlive()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInvulnerable(Ljava/lang/Class;)Z
    .locals 0

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->findFist()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notice()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->isAssigned()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->assignBoss(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "notice"

    .line 3
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 5
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->sayBoss()V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    const/high16 v0, 0x41700000    # 15.0f

    const/high16 v1, 0x41200000    # 10.0f

    .line 9
    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalFloat(FF)F

    move-result v2

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    .line 10
    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalFloat(FF)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    :cond_2
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "phase"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->assignBoss(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    :cond_0
    const-string v0, "ability_cd"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    const-string v0, "summon_cd"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->fistSummons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->fistSummons:Ljava/util/ArrayList;

    const-string v1, "fist_summons"

    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getClassArray(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->regularSummons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->regularSummons:Ljava/util/ArrayList;

    const-string v1, "regular_summons"

    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getClassArray(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v0, "targeted_cells"

    .line 10
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 11
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->phase:I

    const-string v1, "phase"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->abilityCooldown:F

    const-string v1, "ability_cd"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->summonCooldown:F

    const-string v1, "summon_cd"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->fistSummons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    const-string v2, "fist_summons"

    invoke-virtual {p1, v2, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->regularSummons:Ljava/util/ArrayList;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    const-string v2, "regular_summons"

    invoke-virtual {p1, v2, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;->targetedCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "targeted_cells"

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[I)V

    return-void
.end method
