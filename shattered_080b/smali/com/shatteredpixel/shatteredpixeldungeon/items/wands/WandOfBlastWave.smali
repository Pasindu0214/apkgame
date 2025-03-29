.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;
.source "WandOfBlastWave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$BlastWave;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_BLAST_WAVE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->collisionProperties:I

    return-void
.end method

.method public static throwChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;IZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    div-int/lit8 p2, p2, 0x2

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 4
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_9

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    .line 6
    :cond_2
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-static {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    if-gt v3, p2, :cond_4

    .line 7
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-boolean v4, v4, v5

    if-nez v4, :cond_3

    add-int/lit8 p2, v3, -0x1

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_4
    :goto_2
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-eqz v3, :cond_5

    add-int/lit8 p2, p2, -0x1

    move v8, p2

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    move v8, p2

    :goto_3
    if-gez v8, :cond_6

    return-void

    .line 9
    :cond_6
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 10
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne p1, p2, :cond_7

    return-void

    :cond_7
    if-eqz v0, :cond_8

    if-eqz p3, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    .line 11
    :goto_4
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 12
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;

    move-object v3, v0

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;IZI)V

    invoke-direct {p2, p0, p3, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;IILcom/watabou/utils/Callback;)V

    const/high16 p0, -0x40800000    # -1.0f

    invoke-static {p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    :cond_9
    :goto_5
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

    const/4 v2, 0x5

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
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Elastic;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Elastic;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Elastic;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_blast.mp3"

    .line 2
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$BlastWave;->blast(I)V

    .line 4
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    .line 5
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/TenguDartTrap;

    if-nez v6, :cond_0

    .line 6
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    .line 7
    invoke-virtual {v6, v7, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x6

    if-ge v3, v1, :cond_5

    aget v6, v0, v3

    .line 9
    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v8

    invoke-static {v7, v8, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    .line 11
    iget-object v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v8, v9, :cond_2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;->damageRoll()I

    move-result v8

    invoke-virtual {v7, v8, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 12
    :cond_2
    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 13
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget v9, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v6, v9

    invoke-direct {v8, v9, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    .line 14
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v4

    .line 15
    invoke-static {v7, v8, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;->throwChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;IZ)V

    goto :goto_2

    .line 16
    :cond_3
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v7, v5, :cond_4

    .line 17
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "ondeath"

    .line 18
    invoke-static {p0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v1

    invoke-static {v0, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    .line 21
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;->damageRoll()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 22
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    if-le v1, v2, :cond_6

    .line 23
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, v2, p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    .line 24
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    .line 25
    invoke-static {v0, v1, p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;->throwChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;IZ)V

    :cond_6
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 3

    const v0, 0x664422

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const v0, 0x3f19999a    # 0.6f

    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 3
    iget-object v0, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const v1, 0x40c90fda

    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 5
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 6
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->radiateXY(F)V

    return-void
.end method
