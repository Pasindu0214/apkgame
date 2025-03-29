.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;
.source "ScrollOfRemoveCurse.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;-><init>()V

    const/4 v0, 0x7

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNCURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    return-void
.end method

.method public static uncursable(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasCurseEnchant()Z

    move-result p0

    return p0

    .line 4
    :cond_2
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_3

    .line 5
    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasCurseGlyph()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs uncurse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v4, p1, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 2
    iput-boolean v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 3
    iget-boolean v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v6, :cond_0

    .line 4
    iput-boolean v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const/4 v3, 0x1

    .line 5
    :cond_0
    instance-of v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 6
    move-object v6, v4

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 7
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasCurseEnchant()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8
    invoke-virtual {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const/4 v3, 0x1

    .line 9
    :cond_1
    instance-of v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v6, :cond_2

    .line 10
    move-object v6, v4

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 11
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasCurseGlyph()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 12
    invoke-virtual {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v3, 0x1

    .line 13
    :cond_2
    instance-of v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v5, :cond_3

    .line 14
    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->updateLevel()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz p0, :cond_5

    .line 15
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v2, 0x3d4ccccd    # 0.05f

    const/16 v4, 0xa

    invoke-virtual {p1, v0, v2, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->updateHT(Z)V

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_5
    return v3
.end method


# virtual methods
.method public onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/4 v1, 0x6

    const/high16 v2, 0x42000000    # 32.0f

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;->uncurse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p1

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Degrade;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "cleansed"

    .line 4
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "not_cleansed"

    .line 5
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    :goto_0
    mul-int/lit8 v0, v0, 0x1e

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    goto :goto_0

    :goto_1
    return v0
.end method
