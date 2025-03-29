.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;
.source "ScrollOfUpgrade.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;-><init>()V

    const/16 v0, 0xb

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UPGRADEABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    return-void
.end method

.method public static removeCurse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "remove_curse"

    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3d4ccccd    # 0.05f

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method

.method public static upgrade(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method

.method public static weakenCurse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "weaken_curse"

    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3d4ccccd    # 0.05f

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;->upgrade(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Degrade;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 3
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const-string v1, "incompatible"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 5
    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 6
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasCurseEnchant()Z

    move-result v4

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasGoodEnchant()Z

    move-result v5

    .line 8
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 9
    iget-boolean v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasCurseEnchant()Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;->removeCurse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v3, :cond_1

    .line 12
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;->weakenCurse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_1
    :goto_0
    if-eqz v5, :cond_8

    .line 13
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasGoodEnchant()Z

    move-result v0

    if-nez v0, :cond_8

    .line 14
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 15
    :cond_2
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_5

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 17
    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 18
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasCurseGlyph()Z

    move-result v4

    .line 19
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGoodGlyph()Z

    move-result v5

    .line 20
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->upgrade(Z)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 21
    iget-boolean v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasCurseGlyph()Z

    move-result v4

    if-nez v4, :cond_3

    .line 22
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;->removeCurse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    goto :goto_1

    .line 23
    :cond_3
    iget-boolean v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v3, :cond_4

    .line 24
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;->weakenCurse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_4
    :goto_1
    if-eqz v5, :cond_8

    .line 25
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGoodGlyph()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 27
    :cond_5
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    if-eqz v0, :cond_6

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_3

    .line 29
    :cond_7
    :goto_2
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 30
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v0, :cond_8

    .line 31
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v0, :cond_8

    .line 32
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;->removeCurse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 33
    :cond_8
    :goto_3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 34
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->upgradesUsed:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->upgradesUsed:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_9

    .line 35
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 36
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_9
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x32

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x1e

    :goto_0
    return v0
.end method
