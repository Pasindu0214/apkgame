.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Honeypot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->HONEYPOT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const-string v0, "THROW"

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->usesTargeting:Z

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

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

    move-result-object p1

    const-string v0, "SHATTER"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "SHATTER"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 4
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;->shatter(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 8
    instance-of v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;

    if-eqz v0, :cond_0

    .line 9
    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;->dropPot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    :cond_1
    return-void
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
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;->shatter(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    :goto_0
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public shatter(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 9

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v0, v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_shatter.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const v0, 0xffd500

    const/4 v2, 0x5

    .line 4
    invoke-static {p2, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(III)V

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    .line 8
    sget-object v4, Lcom/watabou/utils/PathFinder;->NEIGHBOURS4:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v4, v6

    add-int/2addr v7, p2

    .line 9
    aget-boolean v8, v3, v7

    if-eqz v8, :cond_1

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-nez v8, :cond_1

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    move v0, p2

    :goto_1
    if-eq v0, v2, :cond_5

    .line 12
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;-><init>()V

    .line 13
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;->spawn(I)V

    .line 14
    invoke-virtual {v2, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;->setPotInfo(ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 15
    iget p1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput p1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 16
    iput v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 17
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 18
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    invoke-direct {p1, v2, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 19
    iget-object p1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 20
    iget-object p1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object p2, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v0, Lcom/watabou/noosa/tweeners/AlphaTweener;

    const v2, 0x3e19999a    # 0.15f

    invoke-direct {v0, p1, v1, v2}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    invoke-virtual {p2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 21
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string p2, "snd_bee.mp3"

    .line 22
    invoke-virtual {p1, p2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 23
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot$ShatteredPot;-><init>()V

    return-object p1

    :cond_5
    return-object p0
.end method
