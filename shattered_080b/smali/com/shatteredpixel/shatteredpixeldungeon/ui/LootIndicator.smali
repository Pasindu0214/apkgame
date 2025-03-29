.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;
.source "LootIndicator.java"


# instance fields
.field public lastItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public lastQuantity:I

.field public slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x1f75cc

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->lastItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->lastQuantity:I

    const/high16 v1, 0x41c00000    # 24.0f

    .line 4
    invoke-virtual {p0, v1, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 5
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->createChildren()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2, v1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->showParams(ZZZ)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v4, v2

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v5, 0x40c00000    # 6.0f

    sub-float/2addr v2, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v3}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_9

    .line 3
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v3, v4, :cond_6

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->MIMIC:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v3, v4, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v3, v4, :cond_2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->TOMB:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v3, v4, :cond_3

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->TOMB:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v3, v4, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v3, v4, :cond_5

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    .line 4
    :cond_5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_6
    :goto_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 6
    :goto_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->lastItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-ne v0, v3, :cond_7

    .line 7
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 8
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->lastQuantity:I

    if-eq v3, v4, :cond_8

    .line 9
    :cond_7
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->lastItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 10
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 11
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->lastQuantity:I

    .line 12
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->lightness:F

    .line 14
    :cond_8
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->lastItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 16
    iput-boolean v2, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 17
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iget-boolean v3, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->enable(Z)V

    .line 18
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->update()V

    return-void
.end method
