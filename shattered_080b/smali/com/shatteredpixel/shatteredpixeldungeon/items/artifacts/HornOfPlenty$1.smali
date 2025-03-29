.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$1;
.super Ljava/lang/Object;
.source "HornOfPlenty.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 8

    if-eqz p1, :cond_4

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    if-eqz v0, :cond_4

    .line 2
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-nez v0, :cond_0

    .line 3
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "reject"

    invoke-static {p1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 5
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 6
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    const/high16 v2, 0x40400000    # 3.0f

    .line 7
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 9
    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    move-object v3, p1

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    .line 10
    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->storedFoodEnergy:I

    int-to-float v6, v6

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->energy:F

    add-float/2addr v6, v3

    float-to-int v3, v6

    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->storedFoodEnergy:I

    int-to-float v6, v3

    const/high16 v7, 0x43960000    # 300.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 12
    div-int/lit16 v3, v3, 0x12c

    rsub-int/lit8 v4, v4, 0xa

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 14
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 15
    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->storedFoodEnergy:I

    int-to-float v4, v4

    int-to-float v3, v3

    mul-float v3, v3, v7

    sub-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->storedFoodEnergy:I

    .line 16
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-ne v3, v5, :cond_2

    .line 17
    iput v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->storedFoodEnergy:I

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "maxlevel"

    .line 18
    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "levelup"

    .line 19
    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "feed"

    .line 20
    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :goto_0
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_4
    :goto_1
    return-void
.end method
