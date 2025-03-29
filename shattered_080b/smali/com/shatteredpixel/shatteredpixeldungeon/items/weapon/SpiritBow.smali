.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;
.source "SpiritBow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;
    }
.end annotation


# instance fields
.field public shooter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

.field public sniperSpecial:Z

.field public targetPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SPIRIT_BOW:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const-string v0, "SHOOT"

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->usesTargeting:Z

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->shooter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method


# virtual methods
.method public STRReq(I)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-int p1, v0

    div-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "EQUIP"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "SHOOT"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public buffedLvl()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->level()I

    move-result v0

    return v0
.end method

.method public damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->min()I

    move-result v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->max()I

    move-result v2

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->damageFactor(I)I

    move-result v0

    .line 4
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v1, :cond_0

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, v0

    const v0, 0x3f2ac083    # 0.667f

    mul-float p1, p1, v0

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->targetPos:I

    invoke-virtual {v1, p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p1

    sub-int/2addr p1, v2

    const/high16 v1, 0x40200000    # 2.5f

    const v2, 0x3f99999a    # 1.2f

    const-wide v3, 0x3ff19999a0000000L    # 1.100000023841858

    int-to-double v5, p1

    .line 11
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float p1, v3

    mul-float p1, p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 12
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_3
    int-to-float p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_4
    :goto_0
    return v0
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "SHOOT"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->shooter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    :cond_0
    return-void
.end method

.method public info()Ljava/lang/String;
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\n"

    .line 2
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->min()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->damageFactor(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->max()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->damageFactor(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "stats"

    .line 6
    invoke-static {v3, v5, v4, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v4

    const-string v5, " "

    if-le v3, v4, :cond_0

    .line 8
    invoke-static {v1, v5}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "too_heavy"

    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v3

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 10
    invoke-static {v1, v5}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "excess_str"

    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "stronger"

    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "faster"

    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v3, :cond_5

    iget-boolean v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curse()Z

    move-result v3

    if-nez v3, :cond_5

    .line 15
    :cond_4
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "enchanted"

    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1, v5}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "desc"

    invoke-static {v3, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_5
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 18
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "cursed_worn"

    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 19
    :cond_6
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v3, :cond_7

    .line 20
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "cursed"

    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v3, :cond_8

    .line 22
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "not_cursed"

    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_8
    :goto_2
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "distance"

    invoke-static {v1, v3, v2, v0}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public level()I
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    div-int/lit8 v0, v0, 0x5

    :goto_0
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public max(I)I
    .locals 2

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x6

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfSharpshooting;->levelDamageBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    const/4 v1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p1, v1

    return p1
.end method

.method public min(I)I
    .locals 1

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfSharpshooting;->levelDamageBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    add-int/2addr p1, v0

    return p1
.end method

.method public speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfFuror;->attackDelayMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result p1

    :goto_0
    mul-float p1, p1, v0

    return p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfFuror;->attackDelayMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result p1

    goto :goto_0

    .line 5
    :cond_2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result p1

    return p1
.end method

.method public spentUpgrades()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v0

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    sub-int/2addr v0, v1

    return v0
.end method
