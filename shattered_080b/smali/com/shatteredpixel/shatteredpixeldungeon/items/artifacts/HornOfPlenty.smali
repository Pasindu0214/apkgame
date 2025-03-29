.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;
.source "HornOfPlenty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;
    }
.end annotation


# static fields
.field public static itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# instance fields
.field public mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public storedFoodEnergy:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN1:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 6
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/2addr v2, v0

    .line 7
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    const-string v0, "EAT"

    .line 8
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 9
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->storedFoodEnergy:I

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

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

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-lez v1, :cond_0

    const-string v1, "EAT"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 6
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez p1, :cond_1

    const-string p1, "STORE"

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge p1, v0, :cond_4

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v2, 0x3e800000    # 0.25f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_4

    sub-float/2addr v1, v2

    .line 3
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    add-int/lit8 p1, p1, 0x1

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-ne p1, v0, :cond_0

    .line 5
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "full"

    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 7
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/16 v0, 0xf

    if-lt p1, v0, :cond_1

    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN4:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-lt p1, v0, :cond_2

    .line 8
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN3:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-lt p1, v0, :cond_3

    .line 9
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN2:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 10
    :cond_3
    :goto_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_4
    return-void
.end method

.method public desc()Ljava/lang/String;
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

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
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 5
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge v2, v5, :cond_1

    .line 6
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_hint"

    .line 7
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_cursed"

    .line 9
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "EAT"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    if-nez p2, :cond_0

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "need_to_equip"

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-nez p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no_food"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    invoke-static {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    .line 6
    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 7
    div-int/lit8 v0, v0, 0x2d

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-le v0, v3, :cond_2

    move v0, v3

    :cond_2
    const/high16 v3, 0x42340000    # 45.0f

    int-to-float v4, v0

    mul-float v4, v4, v3

    .line 9
    invoke-virtual {p2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->satisfy(F)V

    .line 10
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->foodProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 11
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    add-int/2addr p2, v2

    sput p2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    .line 12
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 13
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 14
    iput-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 15
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->show(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 16
    sget-object p2, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v2, "snd_eat.mp3"

    .line 17
    invoke-virtual {p2, v2, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "eat"

    .line 18
    invoke-static {p0, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p2, 0x40400000    # 3.0f

    .line 19
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 20
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateFoodEaten()V

    .line 21
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/16 p2, 0xf

    if-lt p1, p2, :cond_3

    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN4:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_3
    const/16 p2, 0xa

    if-lt p1, p2, :cond_4

    .line 22
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN3:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_4
    const/4 p2, 0x5

    if-lt p1, p2, :cond_5

    .line 23
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN2:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    .line 24
    :cond_5
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN1:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 25
    :goto_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_1

    :cond_6
    const-string p1, "STORE"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "prompt"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    :cond_7
    :goto_1
    return-void
.end method

.method public level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 p1, p1, 0xa

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    return-void
.end method

.method public passiveBuff()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;)V

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "stored"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->storedFoodEnergy:I

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/16 v0, 0xf

    if-lt p1, v0, :cond_0

    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN4:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    .line 4
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN3:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-lt p1, v0, :cond_2

    .line 5
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN2:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    :cond_2
    :goto_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;->storedFoodEnergy:I

    const-string v1, "stored"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v0, v0, 0xa

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    return-object p0
.end method
