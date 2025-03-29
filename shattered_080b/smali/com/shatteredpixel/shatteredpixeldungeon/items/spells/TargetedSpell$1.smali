.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1;
.super Ljava/lang/Object;
.source "TargetedSpell.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/Integer;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;

    .line 4
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 6
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;->collisionProperties:I

    invoke-direct {v1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    .line 7
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 8
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 9
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 13
    :goto_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 15
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 16
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1;Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;->fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    nop

    :cond_1
    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "prompt"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
