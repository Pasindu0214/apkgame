.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Statue.java"


# instance fields
.field public weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->INORGANIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->resistances:Ljava/util/HashSet;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Grim;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 8
    iget-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v2, :cond_0

    new-array v0, v0, [Ljava/lang/Class;

    .line 9
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 10
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/lit8 v0, v0, 0x4

    .line 11
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    return-void
.end method

.method public static random()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;-><init>()V

    return-object v0
.end method


# virtual methods
.method public act()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->STATUE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->add(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public attackDelay()F
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->attackDelay()F

    move-result v0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v1

    mul-float v1, v1, v0

    return v1
.end method

.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v0, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 3
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    .line 5
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "kill"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p2
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 p1, p1, 0x9

    int-to-float p1, p1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->accuracyFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public beckon(I)V
    .locals 0

    return-void
.end method

.method public canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->canReach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    return-void
.end method

.method public damageRoll()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v0

    return v0
.end method

.method public description()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->STATUE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    return-void
.end method

.method public die(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 3
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    return-void
.end method

.method public drRoll()I
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->defenseFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public reset()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x1

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "weapon"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    return-void
.end method

.method public spawningWeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const-string v1, "weapon"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    return-void
.end method
