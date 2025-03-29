.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;
.source "Blacksmith.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/BlacksmithSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static upgrade(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    .line 2
    :goto_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_evoke.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;->upgrade(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 6
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    move-object v0, p0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Z)Z

    .line 10
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 11
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_2

    .line 12
    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 13
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-eqz p0, :cond_2

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 15
    :cond_2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 16
    move-object p0, p1

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Z)Z

    .line 17
    :cond_3
    instance-of p0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz p0, :cond_4

    .line 18
    iget p0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-le p0, v0, :cond_4

    .line 19
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->split(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result p0

    .line 21
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    if-eqz v1, :cond_5

    add-int/lit8 p0, p0, -0x1

    .line 22
    :cond_5
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    if-eqz v1, :cond_6

    add-int/lit8 p0, p0, -0x1

    .line 23
    :cond_6
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    if-eqz v1, :cond_7

    add-int/lit8 p0, p0, -0x1

    :cond_7
    add-int/2addr p0, v0

    .line 24
    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level(I)V

    .line 25
    instance-of p0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result p0

    if-nez p0, :cond_8

    .line 27
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 28
    :cond_8
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    .line 29
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 30
    sput-boolean v0, La/b/a/e;->reforged:Z

    .line 31
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->TROLL:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    return-void
.end method

.method public static verify(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    .line 2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-ne v2, v3, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "same_item"

    .line 3
    invoke-static {v0, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "diff_type"

    .line 5
    invoke-static {v0, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v2, :cond_8

    iget-boolean v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v2

    if-ltz v2, :cond_7

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v2

    if-gez v2, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isUpgradable()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isUpgradable()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "cant_reforge"

    .line 10
    invoke-static {v0, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "degraded"

    .line 11
    invoke-static {v0, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "cursed"

    .line 12
    invoke-static {v0, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "un_ided"

    .line 13
    invoke-static {v0, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public act()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;->throwItem()V

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 0

    return-void
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    .line 1
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->INFINITE_EVASION:I

    return p1
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget-boolean p1, La/b/a/e;->given:Z

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;)V

    invoke-static {p1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->TROLL:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->add(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    goto/16 :goto_1

    .line 6
    :cond_1
    sget-boolean p1, La/b/a/e;->completed:Z

    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 7
    sget-boolean p1, La/b/a/e;->alternative:Z

    const-string v3, "completed"

    const-string v4, "lost_pick"

    if-eqz p1, :cond_5

    .line 8
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;

    if-nez p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {p0, v4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->tell(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10
    :cond_2
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;->bloodStained:Z

    if-nez v0, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "blood_2"

    .line 11
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->tell(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Z)Z

    .line 14
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array p1, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {p0, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->tell(Ljava/lang/String;)V

    .line 16
    sput-boolean v2, La/b/a/e;->completed:Z

    .line 17
    sput-boolean v1, La/b/a/e;->reforged:Z

    goto/16 :goto_1

    .line 18
    :cond_5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DarkGold;

    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DarkGold;

    if-nez p1, :cond_6

    new-array p1, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {p0, v4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->tell(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_9

    .line 21
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/16 v5, 0xf

    if-ge v4, v5, :cond_7

    goto :goto_0

    .line 22
    :cond_7
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 23
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Z)Z

    .line 24
    :cond_8
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 25
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array p1, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {p0, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->tell(Ljava/lang/String;)V

    .line 27
    sput-boolean v2, La/b/a/e;->completed:Z

    .line 28
    sput-boolean v1, La/b/a/e;->reforged:Z

    goto :goto_1

    :cond_9
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "gold_2"

    .line 29
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->tell(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_a
    sget-boolean p1, La/b/a/e;->reforged:Z

    if-nez p1, :cond_b

    .line 31
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$2;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;)V

    invoke-static {p1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    goto :goto_1

    :cond_b
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "get_lost"

    .line 32
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->tell(Ljava/lang/String;)V

    :goto_1
    return v2
.end method

.method public reset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final tell(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$3;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    return-void
.end method
