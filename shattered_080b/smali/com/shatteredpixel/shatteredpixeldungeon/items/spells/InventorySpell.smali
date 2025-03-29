.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;
.source "InventorySpell.java"


# static fields
.field public static itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# instance fields
.field public inventoryTitle:Ljava/lang/String;

.field public mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "inv_title"

    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;->inventoryTitle:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    return-void
.end method


# virtual methods
.method public onCast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;->inventoryTitle:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    return-void
.end method

.method public abstract onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end method
