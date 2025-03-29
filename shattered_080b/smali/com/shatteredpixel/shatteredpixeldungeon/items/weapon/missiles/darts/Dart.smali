.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;
.source "Dart.java"


# static fields
.field public static bow:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;


# instance fields
.field public final itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->DART:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->baseUses:F

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    return-void
.end method

.method public static synthetic access$1300()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object v0
.end method


# virtual methods
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
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "TIP"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 4

    const-string v0, "TIP"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "prompt"

    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    return-void
.end method

.method public hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;",
            ">;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->bow:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    return p1
.end method

.method public info()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->updateCrossbow()V

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->info()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public max(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->bow:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public min(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->bow:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onThrow(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->updateCrossbow()V

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->onThrow(I)V

    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->price()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->bow:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicImmune;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->bow:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->bow:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p3

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1
.end method

.method public final updateCrossbow()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->bow:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->bow:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    :goto_0
    return-void
.end method
