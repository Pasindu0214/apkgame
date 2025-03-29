.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CursingTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "CursingTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    return-void
.end method

.method public static curse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    .line 4
    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    if-nez v3, :cond_1

    .line 5
    move-object v3, v2

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v2, :cond_3

    .line 9
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 13
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CursingTrap;->curse(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CursingTrap;->curse(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 18
    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->equipCursed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 19
    const-class p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CursingTrap;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "curse"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static curse(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 21
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    move-object v0, p0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 23
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-nez v2, :cond_0

    new-array v2, v1, [Ljava/lang/Class;

    .line 24
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 25
    :cond_0
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_1

    .line 26
    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 27
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Class;

    .line 28
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    :cond_1
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 4
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_cursed.mp3"

    .line 5
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 6
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-virtual {v0, v1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 8
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isUpgradable()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-nez v2, :cond_1

    .line 9
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CursingTrap;->curse(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v1, :cond_3

    .line 11
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CursingTrap;->curse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_3
    return-void
.end method
