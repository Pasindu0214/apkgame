.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/FrozenCarpaccio;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;
.source "FrozenCarpaccio.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CARPACCIO:I

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

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public satisfy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->satisfy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/FrozenCarpaccio;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "better"

    .line 3
    invoke-static {v0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ge v0, v1, :cond_4

    .line 5
    div-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 6
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "refresh"

    .line 8
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;->cure(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "hard"

    .line 10
    invoke-static {v0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;->set(II)V

    goto :goto_0

    :cond_3
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "invis"

    .line 12
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_4
    :goto_0
    return-void
.end method
