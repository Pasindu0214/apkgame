.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;
.source "WandOfFireblast.java"


# instance fields
.field public affectedCells:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public direction:I

.field public visualCells:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_FIREBOLT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->collisionProperties:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->direction:I

    return-void
.end method


# virtual methods
.method public chargesPerCast()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->affectedCells:Ljava/util/HashSet;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->visualCells:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->chargesPerCast()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 4
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    sget-object v4, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 6
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v6, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    aget v6, v6, v3

    add-int/2addr v4, v6

    iget-object v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 7
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->direction:I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-float v0, v0

    .line 8
    invoke-virtual {p1, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->subPath(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-float/2addr v0, v5

    .line 9
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->affectedCells:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    cmpl-float v6, v0, v5

    if-lez v6, :cond_4

    .line 10
    sget-object v6, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->direction:I

    const/4 v8, 0x7

    if-nez v7, :cond_2

    const/4 v7, 0x7

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, -0x1

    :goto_3
    aget v6, v6, v7

    add-int/2addr v6, v4

    sub-float v5, v0, v5

    invoke-virtual {p0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->spreadFlames(IF)V

    .line 11
    sget-object v6, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->direction:I

    aget v6, v6, v7

    add-int/2addr v6, v4

    invoke-virtual {p0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->spreadFlames(IF)V

    .line 12
    sget-object v6, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->direction:I

    if-ne v7, v8, :cond_3

    const/4 v7, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :goto_4
    aget v6, v6, v7

    add-int/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->spreadFlames(IF)V

    goto :goto_2

    .line 13
    :cond_4
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->visualCells:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->visualCells:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->visualCells:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x64

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 16
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v4, v4, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    invoke-virtual {v4, v6}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v6, v2, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->reset(ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)V

    goto :goto_5

    .line 17
    :cond_6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v2, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    div-int/lit8 v1, v1, 0x2

    .line 18
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 19
    invoke-static {v2, v3, v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 20
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string p2, "snd_zap.mp3"

    .line 21
    invoke-virtual {p1, p2, v5, v5, v5}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public max(I)I
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x6

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->chargesPerCast()I

    move-result v0

    mul-int v0, v0, p1

    return v0
.end method

.method public min(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->chargesPerCast()I

    move-result v0

    mul-int v0, v0, p1

    return v0
.end method

.method public onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blazing;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blazing;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blazing;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->affectedCells:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->chargesPerCast()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-static {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v3

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 6
    :cond_3
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->chargesPerCast()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 10
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;->damageRoll()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 11
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    const/high16 v2, 0x41000000    # 8.0f

    .line 12
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    .line 13
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->chargesPerCast()I

    move-result v1

    const/4 v2, 0x2

    const/high16 v3, 0x40800000    # 4.0f

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    goto :goto_1

    .line 14
    :cond_5
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    invoke-static {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_1

    .line 15
    :cond_6
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    invoke-static {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_1

    :cond_7
    return-void
.end method

.method public final spreadFlames(IF)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->affectedCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x3fc00000    # 1.5f

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->visualCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->direction:I

    const/4 v3, 0x7

    if-nez v2, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    :goto_0
    aget v1, v1, v2

    add-int/2addr v1, p1

    sub-float/2addr p2, v0

    invoke-virtual {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->spreadFlames(IF)V

    .line 5
    sget-object v0, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->direction:I

    aget v0, v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->spreadFlames(IF)V

    .line 6
    sget-object v0, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->direction:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_1
    aget v0, v0, v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->spreadFlames(IF)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->visualCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_4
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_5

    .line 9
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->visualCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 3

    const v0, 0xee7722

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    const v0, 0x3f19999a    # 0.6f

    .line 3
    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 4
    iget-object v0, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/high16 v1, -0x3de00000    # -40.0f

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 7
    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 8
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 9
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->shuffleXY(F)V

    return-void
.end method

.method public statsDesc()Ljava/lang/String;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "stats_desc"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->chargesPerCast()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;->min()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;->max()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->chargesPerCast()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->min(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;->max(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
