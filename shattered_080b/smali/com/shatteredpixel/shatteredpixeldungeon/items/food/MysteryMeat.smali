.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;
.source "MysteryMeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat$PlaceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->MEAT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/high16 v0, 0x43160000    # 150.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->energy:F

    return-void
.end method


# virtual methods
.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public satisfy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->satisfy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "stuffed"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Slow;

    invoke-static {p1, v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_0

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "not_well"

    .line 5
    invoke-static {v0, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;->set(F)V

    goto :goto_0

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "legs"

    .line 7
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Roots;

    invoke-static {p1, v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_0

    :cond_3
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "hot"

    .line 9
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    const/high16 v0, 0x41000000    # 8.0f

    .line 11
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    :goto_0
    return-void
.end method
