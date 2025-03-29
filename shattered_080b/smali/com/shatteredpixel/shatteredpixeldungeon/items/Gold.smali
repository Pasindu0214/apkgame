.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Gold.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GOLD:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-void
.end method


# virtual methods
.method public actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;
    .locals 0
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
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 6

    .line 1
    const v0, 0x2710  # 10000 in decimal
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I


    .line 2
    const v0, 0x2710  # 10000
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I


    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_1

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    const/16 v2, 0x9c4

    if-lt v1, v2, :cond_2

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 11
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    const/16 v2, 0x1d4c

    if-lt v1, v2, :cond_3

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 14
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 16
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;

    if-eqz v0, :cond_4

    .line 17
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 18
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    iget-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v2, :cond_4

    .line 19
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 20
    :cond_4
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pickUp(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)V

    .line 21
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v1, 0xffff00

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%+d"

    invoke-virtual {v0, v1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    .line 23
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v1, 0x3f666666    # 0.9f

    const v3, 0x3f8ccccd    # 1.1f

    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    const-string v3, "snd_gold.mp3"

    invoke-virtual {p1, v3, v0, v0, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return v2
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

.method public random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    mul-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x1e

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-object p0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "value"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
