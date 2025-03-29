.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;
.source "StoneOfEnchantment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ENCHANTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_ENCHANT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    goto :goto_0

    .line 3
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 4
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->show(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "weapon"

    .line 6
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "armor"

    .line 7
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;->useAnimation()V

    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x1e

    return v0
.end method
