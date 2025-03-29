.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Succubus.java"


# instance fields
.field public blinkCooldown:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;->blinkCooldown:I

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SuccubusSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x50

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x19

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 v1, 0x6

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    const/16 v1, 0xc

    .line 7
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const v0, 0x3ea8f5c3    # 0.33f

    .line 10
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->DEMONIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 2
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "snd_charms.mp3"

    if-eqz v1, :cond_1

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    sub-int v1, p1, v0

    add-int/lit8 v4, p2, 0x5

    add-int/2addr v1, v4

    if-lez v1, :cond_0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 5
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barrier;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barrier;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->setShield(I)V

    goto :goto_0

    :cond_0
    add-int/2addr p1, v4

    .line 6
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 8
    invoke-virtual {p1, v0, v4, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 9
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 10
    invoke-virtual {p1, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 11
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x4

    .line 12
    invoke-static {v1, v4}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    const/4 v4, 0x5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;->object:I

    .line 13
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0, v1, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 14
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 15
    invoke-virtual {p1, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_2
    :goto_1
    return p2
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x28

    return p1
.end method

.method public createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/watabou/utils/Random;->oneOf([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;

    if-eq v0, v1, :cond_0

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object v0
.end method

.method public damageRoll()I
    .locals 2

    const/16 v0, 0x16

    const/16 v1, 0x1e

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public getCloser(I)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    aget-boolean v2, v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_11

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_11

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;->blinkCooldown:I

    if-gtz v2, :cond_11

    .line 2
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 7
    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 8
    rem-int v8, v2, v7

    .line 9
    rem-int v9, v1, v7

    .line 10
    div-int v10, v2, v7

    .line 11
    div-int v11, v1, v7

    sub-int/2addr v9, v8

    sub-int/2addr v11, v10

    const/4 v8, -0x1

    if-lez v9, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, -0x1

    :goto_0
    if-lez v11, :cond_1

    const/4 v8, 0x1

    .line 12
    :cond_1
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 13
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    mul-int v8, v8, v7

    if-le v9, v11, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v16, v10

    move v10, v8

    move/from16 v8, v16

    move/from16 v17, v11

    move v11, v9

    move/from16 v9, v17

    .line 14
    :goto_1
    div-int/lit8 v7, v9, 0x2

    const/4 v12, 0x0

    move v13, v2

    .line 15
    :cond_3
    :goto_2
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 16
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_4

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v15, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v15, v15, v13

    if-nez v15, :cond_4

    iget-object v14, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v14, v14, v13

    if-nez v14, :cond_4

    .line 17
    invoke-static {v4, v3}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v12, :cond_4

    .line 18
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 19
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_5

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v14, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v14, v14, v13

    if-nez v14, :cond_7

    .line 21
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_6

    invoke-static {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v14

    if-nez v14, :cond_7

    :cond_6
    if-ne v13, v1, :cond_8

    :cond_7
    if-nez v12, :cond_8

    .line 22
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :cond_8
    add-int/2addr v13, v10

    add-int/2addr v7, v11

    if-lt v7, v9, :cond_3

    sub-int/2addr v7, v9

    add-int/2addr v13, v8

    goto :goto_2

    :cond_9
    if-eqz v12, :cond_a

    .line 23
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    .line 24
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/Integer;

    goto :goto_3

    .line 26
    :cond_b
    invoke-static {v2, v4, v2}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v12

    .line 27
    :goto_3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 28
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    if-eqz v2, :cond_c

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v1, v2, :cond_c

    .line 29
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    :cond_c
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v2, v2, v1

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eqz v2, :cond_10

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v6, v2

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_e

    aget v8, v2, v7

    .line 33
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v8

    .line 34
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_d

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-nez v8, :cond_d

    .line 35
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 36
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 37
    invoke-static {v1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5

    .line 38
    :cond_f
    invoke-static {v5, v4}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;->blinkCooldown:I

    goto :goto_6

    .line 39
    :cond_10
    :goto_5
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 40
    invoke-static {v5, v4}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;->blinkCooldown:I

    :goto_6
    const/high16 v1, -0x40800000    # -1.0f

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v3

    .line 42
    :cond_11
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;->blinkCooldown:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;->blinkCooldown:I

    .line 43
    invoke-super/range {p0 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getCloser(I)Z

    move-result v1

    return v1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "blink_cd"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;->blinkCooldown:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;->blinkCooldown:I

    const-string v1, "blink_cd"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
