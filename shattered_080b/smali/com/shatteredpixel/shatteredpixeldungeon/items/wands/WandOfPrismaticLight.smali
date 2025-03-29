.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfPrismaticLight;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;
.source "WandOfPrismaticLight.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_PRISMATIC_LIGHT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x6

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->collisionProperties:I

    return-void
.end method


# virtual methods
.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$LightRay;

    .line 2
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$LightRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    invoke-interface {p2}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method

.method public max(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x5

    return p1
.end method

.method public min(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 0

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result p1

    int-to-float p1, p1

    const/high16 p4, 0x3f800000    # 1.0f

    add-float/2addr p1, p4

    invoke-static {p3, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 14

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->subPath(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v8, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v8, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    aget v11, v8, v10

    add-int/2addr v11, v4

    .line 4
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v13, v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    aget-boolean v13, v13, v11

    if-eqz v13, :cond_1

    .line 5
    iget-object v12, v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    aput-boolean v7, v12, v11

    .line 6
    :cond_1
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v12, v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v12, v12, v11

    .line 7
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    aget v13, v13, v12

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_2

    .line 8
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v3, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discover(I)V

    .line 9
    invoke-static {v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->discoverTile(II)V

    .line 10
    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;->discover(I)V

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/RainbowParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-static {v7, v6}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v6

    .line 12
    invoke-virtual {v4, v8, v5, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    .line 13
    sget-object v2, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v3, "snd_secret.mp3"

    .line 14
    invoke-virtual {v2, v3, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 15
    :cond_5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    .line 16
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x6

    if-ge v2, v4, :cond_7

    const/16 v2, 0x20

    .line 17
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v2, v0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_2

    .line 19
    :cond_6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v9

    mul-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    add-float/2addr v9, v8

    invoke-static {v2, v0, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 20
    :cond_7
    :goto_2
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 21
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v0

    invoke-static {p1, v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    .line 22
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;->damageRoll()I

    move-result v0

    .line 23
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    const/4 v7, 0x3

    if-lt v2, v7, :cond_8

    .line 24
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Blindness;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3eaa7efa    # 0.333f

    mul-float v7, v7, v8

    add-float/2addr v7, v3

    invoke-static {p1, v2, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 25
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    .line 26
    invoke-virtual {v2, v3, v5, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->DEMONIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    .line 28
    :cond_9
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/RainbowParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    .line 29
    invoke-virtual {v1, v2, v5, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 30
    invoke-virtual {p1, v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    goto :goto_4

    .line 31
    :cond_a
    :goto_3
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v4, 0x3d4ccccd    # 0.05f

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v2, v3, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 32
    sget-object v2, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v3, "snd_burning.mp3"

    .line 33
    invoke-virtual {v2, v3, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    int-to-float v0, v0

    const v1, 0x3faa9fbe    # 1.333f

    mul-float v0, v0, v1

    .line 34
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 5

    const/high16 v0, 0x1000000

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v1, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 4
    iget-object v2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const v3, 0x40c90fda

    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v3, v4}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 5
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 6
    iput v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    .line 7
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->radiateXY(F)V

    return-void
.end method
