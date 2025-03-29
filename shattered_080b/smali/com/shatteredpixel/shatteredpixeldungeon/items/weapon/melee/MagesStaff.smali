.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;
.source "MagesStaff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;
    }
.end annotation


# instance fields
.field public final StaffParticleFactory:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public final itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

.field public wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->MAGES_STAFF:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    const-string v1, "ZAP"

    .line 4
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->usesTargeting:Z

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$2;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->StaffParticleFactory:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;-><init>()V

    .line 12
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->MAGES_STAFF:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    const-string v1, "ZAP"

    .line 14
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 15
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->usesTargeting:Z

    .line 16
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    .line 18
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    .line 19
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$2;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->StaffParticleFactory:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 21
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 22
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 23
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 24
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->updateWand(Z)V

    .line 25
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "staff_name"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    return-void
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
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "IMBUE"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    if-lez v0, :cond_0

    const-string v0, "ZAP"

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f400000    # 0.75f

    .line 2
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 3
    iget-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charger:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    .line 4
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->scalingFactor:F

    :cond_0
    return-void
.end method

.method public collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f400000    # 0.75f

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public degrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->updateWand(Z)V

    return-object p0
.end method

.method public emitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/watabou/noosa/particles/Emitter;

    invoke-direct {v0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    const/high16 v1, 0x41480000    # 12.5f

    const/high16 v2, 0x40400000    # 3.0f

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->pos(FF)V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->fillTarget:Z

    .line 5
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->StaffParticleFactory:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v3, 0x3dcccccd    # 0.1f

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-object v0
.end method

.method public enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curse()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->updateWand(Z)V

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    return-object p0
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "IMBUE"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "prompt"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    goto :goto_2

    :cond_0
    const-string v0, "ZAP"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 7
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Z)V

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void

    .line 8
    :cond_1
    iget-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasCurseEnchant()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iput-boolean v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iput-boolean v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 11
    :goto_1
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {p2, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public imbueWand(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v1

    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v2

    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4
    :cond_0
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 6
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->updateWand(Z)V

    .line 8
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "staff_name"

    .line 10
    invoke-static {p1, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 11
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->getSlot(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 12
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    .line 13
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aput-object v0, p2, p1

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 15
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {p2, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 16
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 17
    :cond_2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-object p0
.end method

.method public info()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->info()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\n\n"

    .line 3
    invoke-static {v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "name"

    invoke-static {v2, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 4
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    const-string v3, "has_wand"

    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->statsDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public max(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, v1}, La/a/a/a/a;->a(IIII)I

    move-result p1

    return p1
.end method

.method public onDetach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->stopCharging()V

    :cond_0
    return-void
.end method

.method public price()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->BATTLEMAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v2, v3, :cond_1

    .line 2
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    if-ge v2, v3, :cond_0

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    const v3, 0x3ea8f5c3    # 0.33f

    add-float/2addr v2, v3

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1
.end method

.method public reachFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->reachFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v0

    .line 2
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    instance-of v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfDisintegration;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->BATTLEMAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "wand"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz p1, :cond_0

    .line 4
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "staff_name"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public status()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const-string v1, "wand"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    return-void
.end method

.method public updateWand(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level(I)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    add-int/2addr v1, p1

    iget p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_0
    return-void
.end method

.method public upgrade(Z)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->upgrade(Z)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->updateWand(Z)V

    return-object p0
.end method

.method public wandClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
