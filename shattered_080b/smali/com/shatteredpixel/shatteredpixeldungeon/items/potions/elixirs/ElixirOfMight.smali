.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/Elixir;
.source "ElixirOfMight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$Recipe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/Elixir;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ELIXIR_MIGHT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setKnown()V

    .line 2
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    .line 3
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;

    const/4 v3, 0x5

    .line 4
    iput v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;->left:I

    .line 5
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    .line 7
    :goto_0
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;

    .line 8
    iput v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;->left:I

    .line 9
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->updateHT(Z)V

    .line 10
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v0, 0xff00

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;->boost()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "msg_1"

    invoke-static {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v3, [Ljava/lang/Object;

    .line 11
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight;

    const-string v1, "msg_2"

    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateStrengthAttained()V

    return-void
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;->boost(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method
