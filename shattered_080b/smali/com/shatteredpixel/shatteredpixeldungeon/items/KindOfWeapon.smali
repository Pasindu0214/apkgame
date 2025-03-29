.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;
.source "KindOfWeapon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;-><init>()V

    return-void
.end method


# virtual methods
.method public accuracyFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public canReach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->reachFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eq v3, p1, :cond_1

    .line 4
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aput-boolean v2, v0, v3

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->reachFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    .line 6
    sget-object p2, Lcom/watabou/utils/PathFinder;->distance:[I

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget p2, p2, v0

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->reachFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    if-gt p2, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->min()I

    move-result p1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->max()I

    move-result v0

    invoke-static {p1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p1

    return p1
.end method

.method public defenseFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public doEquip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, v2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    return v1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    .line 6
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 8
    iput-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 9
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_2

    .line 10
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->equipCursed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 11
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "equip_cursed"

    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return v2
.end method

.method public doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public max()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->max(I)I

    move-result v0

    return v0
.end method

.method public abstract max(I)I
.end method

.method public min()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->min(I)I

    move-result v0

    return v0
.end method

.method public abstract min(I)I
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 0

    return p3
.end method

.method public reachFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
