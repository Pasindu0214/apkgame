.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;
.source "StoneOfAugmentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ENCHANTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_AUGMENTATION:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x1e

    return v0
.end method
