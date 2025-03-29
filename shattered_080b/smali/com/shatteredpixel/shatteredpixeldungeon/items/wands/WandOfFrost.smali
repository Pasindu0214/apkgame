.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFrost;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;
.source "WandOfFrost.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_FROST:I

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

    const/4 v2, 0x1

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

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public min(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 0

    .line 1
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    invoke-virtual {p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    const/16 p4, 0xa

    .line 2
    invoke-static {p2, p4}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    .line 3
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFrost$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFrost$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFrost;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    :cond_0
    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 10

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->freeze()V

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;->damageRoll()I

    move-result p1

    .line 5
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v3

    int-to-double v4, p1

    const-wide v6, 0x3fecccccc0000000L    # 0.8999999761581421

    float-to-double v8, v3

    .line 8
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int p1, v3

    goto :goto_0

    .line 9
    :cond_2
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v4, -0x663301

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->burst(II)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    .line 11
    invoke-virtual {v1, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 12
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    invoke-static {v1, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {v1, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_1

    .line 16
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 17
    invoke-virtual {v0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 3

    const v0, 0x88ccff

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const v0, 0x3f19999a    # 0.6f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    const v1, 0x40c90fda

    .line 4
    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    .line 5
    iget-object v2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    invoke-virtual {v2, v1, v0}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 6
    iget-object v0, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 9
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 10
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    .line 11
    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->radiateXY(F)V

    return-void
.end method
