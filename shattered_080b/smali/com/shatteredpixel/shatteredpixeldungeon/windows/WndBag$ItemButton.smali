.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;
.source "WndBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemButton"
.end annotation


# instance fields
.field public bg:Lcom/watabou/noosa/ColorBlock;

.field public item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 2
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;-><init>()V

    .line 3
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 4
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    instance-of p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    :cond_0
    const/high16 p1, 0x41e00000    # 28.0f

    .line 7
    iput p1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 8
    iput p1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x41e00000    # 28.0f

    const v2, -0x66aca9b3

    invoke-direct {v0, v1, v1, v2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->createChildren()V

    return-void
.end method

.method public item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const v0, -0x66aca9b3

    if-eqz p1, :cond_1d

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, -0x666e6c74

    :cond_0
    invoke-static {v0}, Lcom/watabou/gltextures/TextureCache;->createSolid(I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    iput v1, v0, Lcom/watabou/noosa/Visual;->ra:F

    const v1, -0x41e66666    # -0.15f

    .line 5
    iput v1, v0, Lcom/watabou/noosa/Visual;->ga:F

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    iput v1, v0, Lcom/watabou/noosa/Visual;->ba:F

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    iput v1, v0, Lcom/watabou/noosa/Visual;->ra:F

    .line 10
    iput v1, v0, Lcom/watabou/noosa/Visual;->ba:F

    .line 11
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->enable(Z)V

    goto/16 :goto_1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 14
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 15
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_6

    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_1b

    :cond_6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 16
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 17
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UPGRADEABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_7

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isUpgradable()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 18
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 19
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNIDENTIFED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 20
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 21
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNCURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_9

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;->uncursable(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 22
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 23
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->CURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_b

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    if-eqz v0, :cond_a

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz v0, :cond_1b

    :cond_a
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v0, :cond_1b

    :cond_b
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 24
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 25
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->QUICKSLOT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_c

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    if-nez v0, :cond_1b

    :cond_c
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 26
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 27
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_d

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-nez v0, :cond_1b

    :cond_d
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 28
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 29
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_e

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-nez v0, :cond_1b

    :cond_e
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 30
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 31
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ENCHANTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_f

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-nez v0, :cond_1b

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    if-nez v0, :cond_1b

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-nez v0, :cond_1b

    :cond_f
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 32
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 33
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_10

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v0, :cond_1b

    :cond_10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 34
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 35
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_11

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-nez v0, :cond_1b

    :cond_11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 36
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 37
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_12

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    if-nez v0, :cond_1b

    :cond_12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 38
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 39
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_13

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-nez v0, :cond_1b

    :cond_13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 40
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 41
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_14

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-nez v0, :cond_1b

    :cond_14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 42
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 43
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNIDED_POTION_OR_SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_15

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v0

    if-nez v0, :cond_15

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-nez v0, :cond_1b

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-nez v0, :cond_1b

    :cond_15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 44
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 45
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->EQUIPMENT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_16

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    if-nez v0, :cond_1b

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v0, :cond_1b

    :cond_16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 46
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 47
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALCHEMY:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_17

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->usableInRecipe(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 48
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 49
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->TRANMSUTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_18

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;->canTransmute(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 50
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 51
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->NOT_EQUIPPED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_19

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 52
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 53
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->RECYCLABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne v0, v2, :cond_1a

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Recycle;->isRecyclable(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p1

    if-nez p1, :cond_1b

    :cond_1a
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 54
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 55
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne p1, v0, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    .line 56
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->enable(Z)V

    goto :goto_1

    .line 57
    :cond_1d
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    :goto_1
    return-void
.end method

.method public layout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->layout()V

    return-void
.end method

.method public onClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastBag:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->hide()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 5
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->hide()V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 8
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    .line 9
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-interface {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;->onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 11
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_0
    return-void
.end method

.method public onLongClick()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->hide()V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public onPointerDown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v1, 0x3f333333    # 0.7f

    const-string v2, "snd_click.mp3"

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onPointerUp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method
