.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "ElixirOfAquaticRejuvenation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AquaHealing"
.end annotation


# instance fields
.field public left:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->POSITIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->announced:Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ge v0, v1, :cond_1

    int-to-float v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    int-to-float v1, v1

    invoke-static {v3, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v1

    rem-float v4, v0, v3

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    float-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    .line 7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 8
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    .line 9
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v0, v1, v4, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 11
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    if-gtz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 14
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v1, v1

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 15
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    :cond_3
    :goto_1
    return v2
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "left"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    const-string v1, "left"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public tintIcon(Lcom/watabou/noosa/Image;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;->greyIcon(Lcom/watabou/noosa/Image;FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
