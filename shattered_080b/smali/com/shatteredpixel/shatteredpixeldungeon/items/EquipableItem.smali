.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "EquipableItem.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method

.method public static equipCursed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->CURSE:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 3
    sget-object p0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_cursed.mp3"

    .line 4
    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

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

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UNEQUIP"

    goto :goto_0

    :cond_0
    const-string p1, "EQUIP"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    return-void
.end method

.method public cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V

    return-void
.end method

.method public doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_1
    return-void
.end method

.method public abstract doEquip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
.end method

.method public final doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result p1

    return p1
.end method

.method public doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicImmune;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "unequip_cursed"

    invoke-static {p1, v0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->time2equip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->time2equip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    :goto_0
    if-eqz p2, :cond_2

    .line 5
    iget-object p3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p3, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onDetach()V

    .line 7
    sget-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {p3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->clearItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    if-eqz p2, :cond_3

    .line 9
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "EQUIP"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->getSlot(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doEquip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_0

    :cond_0
    const-string v0, "UNEQUIP"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public time2equip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
