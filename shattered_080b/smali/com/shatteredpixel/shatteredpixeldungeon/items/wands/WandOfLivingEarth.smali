.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;
.source "WandOfLivingEarth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_LIVING_EARTH:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x9

    .line 3
    invoke-static {v1, v2, v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "snd_zap.mp3"

    .line 5
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public max(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x6

    return p1
.end method

.method public min(I)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method public onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 2

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 2
    instance-of v0, p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    if-eqz v0, :cond_0

    .line 3
    check-cast p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    int-to-float p1, p4

    const/high16 p4, 0x3e800000    # 0.25f

    mul-float p1, p1, p4

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 5
    iget-object p2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    .line 6
    invoke-virtual {p2, v0, p4, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 7
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result p4

    invoke-static {p3, p2, p4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->access$100(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;II)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p3

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    .line 9
    invoke-virtual {p3, v0, p4, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 10
    const-class p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    invoke-static {p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result p3

    invoke-static {p2, p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;II)V

    :goto_1
    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;->damageRoll()I

    move-result v5

    .line 3
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 4
    instance-of v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    if-eqz v8, :cond_0

    .line 5
    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 6
    :goto_0
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    const/4 v8, 0x0

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 7
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    :cond_3
    if-eqz v6, :cond_4

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v3

    invoke-static {v6, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;II)V

    :cond_4
    move v3, v5

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_5

    if-ne v7, v4, :cond_5

    .line 9
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x8

    .line 10
    invoke-virtual {v1, v2, v10, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 11
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v2

    invoke-static {v7, v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->access$100(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;II)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v1

    invoke-static {v7, v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    goto/16 :goto_4

    :cond_5
    if-nez v7, :cond_d

    if-eqz v6, :cond_d

    .line 13
    iget v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    .line 14
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armorToGuardian()I

    move-result v12

    if-lt v11, v12, :cond_d

    .line 15
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;-><init>()V

    .line 16
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v11

    .line 17
    iget v12, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    .line 18
    invoke-static {v3, v7, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->access$100(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;II)V

    if-eqz v4, :cond_b

    .line 19
    iget-object v11, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v11

    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x5

    .line 20
    invoke-virtual {v11, v12, v10, v13}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v11

    invoke-static {v4, v11, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    .line 22
    invoke-virtual {v4, v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 23
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    .line 24
    sget-object v9, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v11, v9

    const/4 v12, -0x1

    const/4 v13, -0x1

    :goto_2
    if-ge v8, v11, :cond_8

    aget v14, v9, v8

    .line 25
    iget-object v15, v1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v14

    .line 26
    aget-boolean v14, v5, v15

    if-eqz v14, :cond_7

    invoke-static {v15}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v14

    if-nez v14, :cond_7

    if-eq v13, v12, :cond_6

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 27
    invoke-virtual {v14, v15, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v7

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v14, v13, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_7

    :cond_6
    move v13, v15

    :cond_7
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    if-ne v13, v12, :cond_9

    .line 28
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v2, v4, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void

    .line 30
    :cond_9
    iput v13, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    invoke-static {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V

    .line 32
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 33
    iget-object v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v1, v5, :cond_a

    invoke-virtual {v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 34
    :cond_a
    iput-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 35
    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v1, v2, :cond_c

    .line 36
    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto :goto_3

    .line 37
    :cond_b
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    invoke-static {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V

    .line 39
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 40
    :cond_c
    :goto_3
    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    .line 41
    invoke-virtual {v1, v2, v4, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 42
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto/16 :goto_4

    :cond_d
    if-eqz v4, :cond_10

    .line 43
    iget-object v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x5

    const/4 v10, 0x0

    .line 44
    invoke-virtual {v1, v6, v10, v8}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v1

    invoke-static {v4, v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    .line 46
    invoke-virtual {v4, v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    if-nez v7, :cond_e

    .line 47
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x8

    const/4 v5, 0x0

    .line 48
    invoke-virtual {v1, v2, v5, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    .line 49
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x8

    .line 50
    invoke-virtual {v1, v6, v5, v8}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 51
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v5

    invoke-static {v7, v1, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->access$100(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;II)V

    .line 52
    iget-object v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v1, v3, :cond_f

    invoke-virtual {v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 53
    :cond_f
    iput-object v4, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 54
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v2, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v1, v2, :cond_11

    .line 55
    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto :goto_4

    .line 56
    :cond_10
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 57
    invoke-virtual {v2, v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    :cond_11
    :goto_4
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0xfff568

    const v1, 0x80791a

    .line 2
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    goto :goto_0

    :cond_0
    const v0, 0x805500

    const v1, 0x332500

    .line 3
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    iput v1, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v1, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 6
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 7
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->shuffleXY(F)V

    const/high16 v0, 0x41300000    # 11.0f

    .line 9
    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    .line 10
    iget v1, p1, Lcom/watabou/noosa/Visual;->x:F

    sub-float/2addr v1, v0

    iput v1, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 11
    iget v1, p1, Lcom/watabou/noosa/Visual;->y:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method
