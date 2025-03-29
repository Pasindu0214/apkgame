.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/CurseInfusion;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;
.source "CurseInfusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/CurseInfusion$Recipe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CURSE_INFUSE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->CURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_cursed.mp3"

    .line 4
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 6
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_2

    .line 8
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 9
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v1, :cond_1

    new-array v3, v0, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    goto :goto_0

    :cond_1
    new-array v1, v2, [Ljava/lang/Class;

    .line 11
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 12
    :goto_0
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    goto :goto_3

    .line 13
    :cond_2
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v1, :cond_5

    .line 14
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    .line 15
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->updateLevel()V

    goto :goto_3

    .line 16
    :cond_3
    :goto_1
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 17
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v1, :cond_4

    new-array v3, v0, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    goto :goto_2

    :cond_4
    new-array v1, v2, [Ljava/lang/Class;

    .line 19
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 20
    :goto_2
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    .line 21
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    if-eqz v1, :cond_5

    .line 22
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->updateWand(Z)V

    .line 23
    :cond_5
    :goto_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-void
.end method

.method public price()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v0, v0

    const v1, 0x422d5555

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
