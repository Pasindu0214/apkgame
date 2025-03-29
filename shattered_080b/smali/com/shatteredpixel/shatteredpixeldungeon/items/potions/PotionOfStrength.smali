.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;
.source "PotionOfStrength.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;-><init>()V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->initials:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setKnown()V

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    .line 3
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "msg_1"

    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const v3, 0xff00

    invoke-virtual {p1, v3, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    const-string v2, "msg_2"

    invoke-static {v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateStrengthAttained()V

    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x32

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x1e

    :goto_0
    return v0
.end method
