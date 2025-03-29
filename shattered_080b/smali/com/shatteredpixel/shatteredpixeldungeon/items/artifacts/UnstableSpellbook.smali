.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;
.source "UnstableSpellbook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$bookRecharge;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$ExploitHandler;
    }
.end annotation


# instance fields
.field public itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

.field public mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public final scrolls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_SPELLBOOK:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    int-to-float v1, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    const-string v0, "READ"

    .line 8
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 11
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$2;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    .line 13
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 14
    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 15
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    aput v1, v0, v3

    .line 17
    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v3

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$002(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;
    .locals 0

    .line 1
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    return-object p0
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

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v1, :cond_0

    const-string v1, "READ"

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

    const-string p1, "ADD"

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge p1, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    sub-float/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    add-int/lit8 p1, p1, 0x1

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_0
    return-void
.end method

.method public desc()Ljava/lang/String;
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v2

    const-string v3, "\n\n"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 3
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "desc_cursed"

    .line 5
    invoke-static {v0, v5, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 7
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge v2, v5, :cond_1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 8
    invoke-static {v1, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "desc_index"

    .line 9
    invoke-static {v0, v5, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n_"

    .line 10
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "name"

    invoke-static {v5, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_1

    .line 12
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_1
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-lez v2, :cond_2

    .line 14
    invoke-static {v1, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "desc_empowered"

    .line 15
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "READ"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "prompt"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 3
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Blindness;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    if-eqz p2, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "blinded"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    if-nez p2, :cond_1

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "need_to_equip"

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-gtz p2, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no_charge"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "cursed"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 7
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 8
    :cond_4
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz v9, :cond_4

    .line 9
    instance-of p2, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;

    const/4 v3, 0x2

    if-nez p2, :cond_5

    instance-of p2, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;

    if-nez p2, :cond_5

    instance-of p2, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;

    if-eqz p2, :cond_6

    .line 10
    :cond_5
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p2

    if-eqz p2, :cond_4

    :cond_6
    instance-of p2, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    if-eqz p2, :cond_7

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_7
    instance-of p2, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;

    if-nez p2, :cond_4

    .line 12
    invoke-virtual {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->anonymize()V

    .line 13
    sput-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 14
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 15
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-lez p2, :cond_8

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 16
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$ExploitHandler;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$ExploitHandler;

    .line 17
    iput-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$ExploitHandler;->scroll:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 18
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;

    new-array p2, v2, [Ljava/lang/Object;

    .line 19
    invoke-static {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array p2, v2, [Ljava/lang/Object;

    .line 20
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    const-string v4, "read_empowered"

    invoke-static {v1, v4, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    .line 21
    iget-object p2, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    aput-object p2, v7, v2

    .line 22
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->regToExo:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "name"

    invoke-static {p2, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$ExploitHandler;Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;)V

    .line 24
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 25
    :cond_8
    invoke-virtual {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->doRead()V

    .line 26
    :goto_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_1

    :cond_9
    const-string p1, "ADD"

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 28
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    :cond_a
    :goto_1
    return-void
.end method

.method public passiveBuff()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$bookRecharge;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$bookRecharge;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;)V

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    const-string v1, "scrolls"

    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getClassArray(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    const-string v1, "scrolls"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    add-int/lit8 v1, v1, -0x1

    .line 4
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method
