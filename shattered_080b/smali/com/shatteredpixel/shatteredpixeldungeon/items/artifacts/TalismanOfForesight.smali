.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;
.source "TalismanOfForesight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;
    }
.end annotation


# instance fields
.field public warn:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_TALISMAN:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    const/16 v1, 0xa

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/16 v1, 0x64

    .line 7
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    const-string v1, "SCRY"

    .line 8
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;->warn:I

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

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ne p1, v1, :cond_0

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez p1, :cond_0

    const-string p1, "SCRY"

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge p1, v0, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-lt p1, v0, :cond_0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 5
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "full_charge"

    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public desc()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const/4 v3, 0x0

    const-string v4, "\n\n"

    if-nez v2, :cond_0

    .line 4
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_worn"

    .line 5
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_cursed"

    .line 7
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "SCRY"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "need_to_equip"

    invoke-static {p1, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_0
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-eq p2, v1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "no_charge"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 6
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 7
    sget-object p2, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_beacon.mp3"

    .line 8
    invoke-virtual {p2, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 p2, 0x0

    .line 10
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 11
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge p2, v2, :cond_3

    .line 12
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, p2

    .line 13
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 14
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 15
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v2, v2, p2

    if-eqz v2, :cond_2

    .line 16
    invoke-static {p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->discoverTile(II)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "scry"

    .line 17
    invoke-static {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 19
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Awareness;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 20
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    :cond_4
    :goto_1
    return-void
.end method

.method public passiveBuff()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;)V

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "warn"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;->warn:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;->warn:I

    const-string v1, "warn"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
