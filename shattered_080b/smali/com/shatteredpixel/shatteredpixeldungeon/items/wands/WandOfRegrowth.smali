.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;
.source "WandOfRegrowth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Seedpod;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher;
    }
.end annotation


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

.field public totChrgUsed:I

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
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_REGROWTH:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->collisionProperties:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->direction:I

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->totChrgUsed:I

    return-void
.end method


# virtual methods
.method public chargesPerCast()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

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

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->affectedCells:Ljava/util/HashSet;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->visualCells:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->chargesPerCast()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    const v1, 0x3f99999a    # 1.2f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

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
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->direction:I

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
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_4

    .line 10
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->affectedCells:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v6, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->direction:I

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

    invoke-virtual {p0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->spreadRegrowth(IF)V

    .line 12
    sget-object v6, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->direction:I

    aget v6, v6, v7

    add-int/2addr v6, v4

    invoke-virtual {p0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->spreadRegrowth(IF)V

    .line 13
    sget-object v6, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->direction:I

    if-ne v7, v8, :cond_3

    const/4 v7, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :goto_4
    aget v6, v6, v7

    add-int/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->spreadRegrowth(IF)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->visualCells:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->visualCells:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->visualCells:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x65

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 17
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

    .line 18
    :cond_6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v2, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    div-int/lit8 v1, v1, 0x2

    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 20
    invoke-static {v2, v3, v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 21
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string p2, "snd_zap.mp3"

    .line 22
    invoke-virtual {p1, p2, v5, v5, v5}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public initialCharges()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blooming;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blooming;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blooming;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Regrowth;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->affectedCells:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x1e

    const/16 v5, 0x14

    const/4 v6, 0x1

    const/16 v7, 0x9

    const/4 v8, 0x2

    if-eqz v3, :cond_1

    .line 2
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v3, v3, v9

    if-eq v3, v6, :cond_0

    if-eq v3, v7, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v3, v8, :cond_0

    const/16 v5, 0xf

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    .line 3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 4
    :cond_1
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->totChrgUsed:I

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v9

    const/16 v10, 0xc

    const/high16 v11, 0x3f800000    # 1.0f

    if-lt v9, v10, :cond_2

    const v3, 0x7fffffff

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x4

    mul-int v9, v9, v3

    int-to-float v3, v9

    const v9, 0x3f6aaaab

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v10, v12

    div-float v10, v11, v10

    add-float/2addr v10, v9

    mul-float v10, v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    :goto_1
    sub-int/2addr v2, v3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->chargesPerCast()I

    move-result v3

    const v9, 0x3e4ccccd    # 0.2f

    mul-int v10, v3, v3

    int-to-float v12, v10

    const v13, 0x3ca3d70a    # 0.02f

    mul-float v14, v12, v13

    add-float/2addr v14, v9

    const v9, 0x3d4ccccd    # 0.05f

    const v15, 0x3c83126f    # 0.016f

    mul-float v15, v15, v12

    add-float/2addr v15, v9

    const v9, 0x3c54fdf4    # 0.013f

    mul-float v12, v12, v9

    add-float/2addr v12, v13

    mul-int v10, v10, v3

    int-to-float v9, v10

    const/high16 v10, 0x40a00000    # 5.0f

    div-float/2addr v9, v10

    const v10, 0x3ba3d70a    # 0.005f

    mul-float v9, v9, v10

    if-lez v2, :cond_3

    int-to-float v10, v2

    mul-float v10, v10, v13

    sub-float/2addr v14, v10

    sub-float/2addr v15, v10

    sub-float/2addr v12, v10

    sub-float/2addr v9, v10

    .line 8
    :cond_3
    iget-object v10, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->affectedCells:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 9
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 10
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v16

    cmpg-float v16, v16, v14

    if-gtz v16, :cond_4

    .line 11
    sget-object v16, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static/range {v16 .. v16}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    .line 12
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v13, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    sub-float/2addr v14, v11

    const/16 v4, 0x1e

    const/4 v8, 0x2

    goto :goto_2

    .line 13
    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v4

    cmpg-float v4, v4, v15

    if-gtz v4, :cond_5

    .line 14
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher$Seed;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher$Seed;-><init>()V

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v13, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    sub-float/2addr v15, v11

    goto :goto_3

    .line 15
    :cond_5
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v4

    cmpg-float v4, v4, v12

    if-gtz v4, :cond_6

    .line 16
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Seedpod$Seed;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Seedpod$Seed;-><init>()V

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v13, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    sub-float/2addr v12, v11

    goto :goto_4

    .line 17
    :cond_6
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v4

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_7

    .line 18
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;-><init>()V

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v13, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    sub-float/2addr v9, v11

    goto :goto_5

    .line 19
    :cond_7
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->affectedCells:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 20
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v9, v9, v8

    if-eq v9, v6, :cond_8

    if-eq v9, v7, :cond_8

    if-ne v9, v5, :cond_9

    .line 21
    :cond_8
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v10, 0x2

    invoke-static {v8, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 22
    :cond_9
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->chargesPerCast()I

    move-result v10

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v11

    invoke-static {v9, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    :cond_a
    const/16 v9, 0x32

    .line 25
    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v9

    if-ge v9, v2, :cond_c

    .line 26
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v10, v10, v8

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    const/16 v10, 0x1e

    .line 27
    invoke-static {v8, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 28
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    goto :goto_7

    :cond_b
    const/16 v10, 0x1e

    .line 29
    :goto_7
    invoke-static {v8, v7, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v8

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    goto :goto_6

    :cond_c
    const/16 v10, 0x1e

    const/4 v11, 0x2

    const/16 v9, 0xa

    .line 30
    invoke-static {v8, v9, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v8

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    goto :goto_6

    .line 31
    :cond_d
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->totChrgUsed:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->totChrgUsed:I

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "totChrgUsed"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->totChrgUsed:I

    return-void
.end method

.method public final spreadRegrowth(IF)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->affectedCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x3fc00000    # 1.5f

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_2

    .line 3
    sget-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->direction:I

    const/4 v3, 0x7

    if-nez v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    :goto_0
    aget v1, v1, v2

    add-int/2addr v1, p1

    sub-float/2addr p2, v0

    invoke-virtual {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->spreadRegrowth(IF)V

    .line 4
    sget-object v0, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->direction:I

    aget v0, v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->spreadRegrowth(IF)V

    .line 5
    sget-object v0, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->direction:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_1
    aget v0, v0, v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->spreadRegrowth(IF)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->visualCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7
    :cond_3
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_4

    .line 8
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->visualCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 2

    const/16 v0, 0x4400

    const v1, 0x88cc44

    .line 1
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    .line 3
    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 4
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 5
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->shuffleXY(F)V

    const/high16 v0, 0x41300000    # 11.0f

    .line 7
    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    .line 8
    iget v1, p1, Lcom/watabou/noosa/Visual;->x:F

    sub-float/2addr v1, v0

    iput v1, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 9
    iget v1, p1, Lcom/watabou/noosa/Visual;->y:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;->totChrgUsed:I

    const-string v1, "totChrgUsed"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
