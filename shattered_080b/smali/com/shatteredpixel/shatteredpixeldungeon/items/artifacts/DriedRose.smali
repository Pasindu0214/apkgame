.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;
.source "DriedRose.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$Petal;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;
    }
.end annotation


# instance fields
.field public armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

.field public droppedPetals:I

.field public firstSummon:Z

.field public ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

.field public ghostDirector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

.field public ghostID:I

.field public talkedTo:Z

.field public weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_ROSE1:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    const-string v0, "SUMMON"

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->talkedTo:Z

    .line 8
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->firstSummon:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 10
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    .line 11
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 12
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 13
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->droppedPetals:I

    .line 14
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostDirector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

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
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "EQUIP"

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    if-nez p1, :cond_1

    const-string p1, "SUMMON"

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    if-eqz p1, :cond_2

    const-string p1, "DIRECT"

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez p1, :cond_3

    const-string p1, "OUTFIT"

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x4

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-lt p1, v0, :cond_0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 6
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "charged"

    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/lit8 v1, v1, 0x1

    .line 9
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 10
    div-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_2
    :goto_0
    return-void
.end method

.method public desc()Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v1

    if-nez v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "desc_no_quest"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const-string v4, "\n\n"

    if-nez v3, :cond_1

    .line 6
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 7
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge v3, v5, :cond_2

    .line 8
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "desc_hint"

    .line 9
    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "desc_cursed"

    .line 11
    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v3, :cond_5

    :cond_3
    const-string v3, "\n"

    .line 13
    invoke-static {v1, v3}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 15
    invoke-static {v1, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "desc_weapon"

    .line 16
    invoke-static {v0, v6, v4, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_4
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v4, :cond_5

    .line 18
    invoke-static {v1, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "desc_armor"

    .line 19
    invoke-static {v0, v2, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "SUMMON"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Z)V

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "spawned"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    if-nez p2, :cond_2

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "need_to_equip"

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 6
    :cond_2
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-eq p2, v2, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no_charge"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 7
    :cond_3
    iget-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz p2, :cond_4

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "cursed"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 8
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 9
    :goto_0
    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 10
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v3, v3, v2

    add-int/2addr v4, v3

    .line 11
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_5

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_6

    .line 12
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 14
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-direct {v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 15
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v2

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    .line 16
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-static {p2}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 17
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V

    .line 18
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-virtual {p2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 19
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShaftParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x4

    invoke-virtual {p2, v3, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 20
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x3

    invoke-virtual {p2, v3, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 21
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 22
    iput-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 23
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 24
    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->firstSummon:Z

    if-nez p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 26
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "hello"

    .line 27
    invoke-static {p2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string p2, "snd_ghost.mp3"

    .line 29
    invoke-virtual {p1, p2, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 30
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->firstSummon:Z

    goto :goto_1

    .line 31
    :cond_8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->isAssigned()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 32
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->sayBoss()V

    goto :goto_1

    .line 33
    :cond_9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->sayAppeared()V

    .line 34
    :goto_1
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 36
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_3

    :cond_a
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no_space"

    .line 37
    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    const-string p1, "DIRECT"

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 39
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-nez p1, :cond_d

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    if-eqz p1, :cond_d

    .line 40
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 41
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    goto :goto_2

    .line 42
    :cond_c
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    .line 43
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostDirector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    goto :goto_3

    :cond_e
    const-string p1, "OUTFIT"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 45
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    :cond_f
    :goto_3
    return-void
.end method

.method public ghostStrength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 2
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xd

    return v0
.end method

.method public passiveBuff()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "talkedto"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->talkedTo:Z

    const-string v0, "firstsummon"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->firstSummon:Z

    const-string v0, "ghostID"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    const-string v0, "petals"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->droppedPetals:I

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    if-eqz v0, :cond_0

    const-string v0, "DIRECT"

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    :cond_0
    const-string v0, "weapon"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 9
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    :cond_1
    const-string v0, "armor"

    .line 10
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 12
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    :cond_2
    return-void
.end method

.method public status()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-nez v0, :cond_2

    .line 8
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->status()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v2, v2

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    add-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->talkedTo:Z

    const-string v1, "talkedto"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->firstSummon:Z

    const-string v1, "firstsummon"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    const-string v1, "ghostID"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->droppedPetals:I

    const-string v1, "petals"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v0, :cond_0

    const-string v1, "weapon"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_1

    const-string v1, "armor"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    :cond_1
    return-void
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_ROSE3:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_ROSE2:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 5
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->droppedPetals:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->droppedPetals:I

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;)V

    .line 8
    :cond_2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method
