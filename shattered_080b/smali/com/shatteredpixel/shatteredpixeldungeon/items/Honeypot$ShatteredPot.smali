.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Honeypot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShatteredPot"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SHATTPOT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    return-void
.end method


# virtual methods
.method public doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;->dropPot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    return-void
.end method

.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;->pickupPot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dropPot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 3
    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    .line 4
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;->potHolder:I

    .line 5
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-lt v2, v3, :cond_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;->updateBee(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final findBees(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 3
    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    .line 4
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;->potPos:I

    if-ne v3, p1, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-lt v2, v3, :cond_0

    :cond_1
    return-object v0
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onThrow(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;->dropPot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    return-void
.end method

.method public pickupPot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;->findBees(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    const/4 v2, -0x1

    .line 2
    invoke-virtual {p0, v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;->updateBee(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final updateBee(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;->setPotInfo(ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_0
    return-void
.end method
