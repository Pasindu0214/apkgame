.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;
.source "ChaliceOfBlood.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$chaliceRegen;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_CHALICE1:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    return-void
.end method


# virtual methods
.method public actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;
    .locals 2
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
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge p1, v1, :cond_0

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez p1, :cond_0

    const-string p1, "PRICK"

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    return-void
.end method

.method public desc()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\n\n"

    .line 3
    invoke-static {v1, v2}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_cursed"

    .line 6
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-nez v2, :cond_1

    .line 8
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_1"

    .line 9
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_1
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge v2, v4, :cond_2

    .line 11
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_2"

    .line 12
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_3"

    .line 14
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;

    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v1, "PRICK"

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int p2, p2, p2

    mul-int/lit8 p2, p2, 0x3

    int-to-double v1, p2

    .line 4
    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-double v3, p2

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    cmpl-double p2, v1, v3

    if-lez p2, :cond_0

    .line 5
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$1;

    const/4 p2, 0x0

    new-array v1, p2, [Ljava/lang/Object;

    const-string v2, "name"

    .line 6
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/Object;

    const-string v3, "prick_warn"

    .line 7
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-array v4, p2, [Ljava/lang/Object;

    const-string v5, "yes"

    .line 8
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2

    const/4 v4, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v5, "no"

    .line 9
    invoke-static {v0, v5, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    .line 10
    invoke-direct {p1, p0, v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;->prick(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public passiveBuff()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$chaliceRegen;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$chaliceRegen;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;)V

    return-object v0
.end method

.method public final prick(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int v1, v1, v1

    mul-int/lit8 v1, v1, 0x3

    .line 3
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Earthroot$Armor;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Earthroot$Armor;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Earthroot$Armor;->absorb(I)I

    move-result v1

    .line 5
    :cond_0
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->absorb(I)I

    move-result v1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->drRoll()I

    move-result v2

    sub-int/2addr v1, v2

    .line 8
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    const/high16 v3, 0x40400000    # 3.0f

    .line 10
    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "onprick"

    .line 11
    invoke-static {p0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    sget-object v3, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "snd_cursed.mp3"

    .line 13
    invoke-virtual {v3, v5, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 14
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->CURSE:Lcom/watabou/noosa/particles/Emitter$Factory;

    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x4

    const/4 v6, 0x0

    .line 15
    invoke-virtual {v3, v4, v6, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 16
    :goto_0
    invoke-virtual {p1, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->damage(ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "ondeath"

    .line 19
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 20
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :goto_1
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    .line 3
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_CHALICE3:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 4
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_CHALICE2:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    :cond_1
    :goto_0
    return-void
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_CHALICE3:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_CHALICE2:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method
