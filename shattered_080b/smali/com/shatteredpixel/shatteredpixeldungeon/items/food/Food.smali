.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Food.java"


# instance fields
.field public energy:F

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    const/high16 v0, 0x43960000    # 300.0f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->energy:F

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "eat_msg"

    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->message:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    .line 6
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RATION:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method

.method public static foodProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Recharging;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 3
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x5

    .line 5
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 6
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v2, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "EAT"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "EAT"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->satisfy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 5
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->message:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->foodProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 7
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 8
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 9
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->show(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 10
    sget-object p2, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_eat.mp3"

    .line 11
    invoke-virtual {p2, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/high16 p2, 0x40400000    # 3.0f

    .line 12
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 13
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateFoodEaten()V

    :cond_0
    return-void
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public satisfy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->energy:F

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->satisfy(F)V

    return-void
.end method
