.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfCleansing;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;
.source "PotionOfCleansing.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;-><init>()V

    const/16 v0, 0x9

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->initials:Ljava/lang/Integer;

    return-void
.end method

.method public static cleanse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->NEGATIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    if-ne v1, v2, :cond_1

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 4
    :cond_1
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    const/high16 v1, 0x43e10000    # 450.0f

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->satisfy(F)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->setKnown()V

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfCleansing;->cleanse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    return-void
.end method

.method public shatter(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->shatter(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_shatter.mp3"

    .line 5
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 6
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->splash(I)V

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->setKnown()V

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfCleansing;->cleanse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_2
    :goto_0
    return-void
.end method
