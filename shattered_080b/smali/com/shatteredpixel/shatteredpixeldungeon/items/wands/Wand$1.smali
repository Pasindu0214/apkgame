.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1;
.super Ljava/lang/Object;
.source "Wand.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;
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
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz p1, :cond_5

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v2, :cond_5

    .line 4
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 5
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    .line 6
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 7
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->collisionProperties:I

    invoke-direct {v2, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    .line 8
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 10
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 11
    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v7, 0x0

    if-eq v4, v6, :cond_4

    if-ne v3, v6, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    iget-object v4, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 16
    :goto_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->tryToZap(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 19
    iput-boolean v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 20
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 21
    iget-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 22
    iget-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-nez v2, :cond_2

    new-array v2, v4, [Ljava/lang/Object;

    .line 23
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    const-string v3, "curse_discover"

    .line 24
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 26
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    .line 27
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v5, 0x6

    invoke-direct {v2, v3, p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$1;

    invoke-direct {p1, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1;Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V

    .line 28
    invoke-static {v1, v0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedZap(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto :goto_1

    .line 29
    :cond_3
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$2;

    invoke-direct {p1, p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1;Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V

    invoke-virtual {v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    .line 30
    :goto_1
    iput-boolean v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    goto :goto_3

    :cond_4
    :goto_2
    new-array p1, v7, [Ljava/lang/Object;

    const-string v1, "self_target"

    .line 31
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "prompt"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
