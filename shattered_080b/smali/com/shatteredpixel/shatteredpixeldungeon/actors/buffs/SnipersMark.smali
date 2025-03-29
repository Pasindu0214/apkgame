.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SnipersMark;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;
.source "SnipersMark.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;


# instance fields
.field public object:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SnipersMark;->object:I

    return-void
.end method


# virtual methods
.method public attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 0

    .line 1
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->updateIcon()V

    .line 3
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    return p1
.end method

.method public desc()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public detach()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    return-void
.end method

.method public doAction()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

    invoke-direct {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;)V

    .line 4
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SnipersMark;->object:I

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez v3, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->autoAim(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x1

    .line 6
    iput-boolean v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    .line 7
    invoke-virtual {v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V

    .line 8
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 9
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    return-void
.end method

.method public getIcon()Lcom/watabou/noosa/Image;
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SPIRIT_BOW:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    return-object v0
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "object"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SnipersMark;->object:I

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SnipersMark;->object:I

    const-string v1, "object"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

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
