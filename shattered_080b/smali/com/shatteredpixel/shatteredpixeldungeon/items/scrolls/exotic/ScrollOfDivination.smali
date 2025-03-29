.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;
.source "ScrollOfDivination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination$WndDivination;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doRead()V
    .locals 13

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, -0x3e800000    # -16.0f

    invoke-virtual {v0, v3, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    invoke-direct {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;-><init>(Lcom/watabou/utils/PointF;)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->readAnimation()V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->setKnown()V

    .line 4
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_read.mp3"

    .line 5
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->unknown()Ljava/util/HashSet;

    move-result-object v0

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->unknown()Ljava/util/HashSet;

    move-result-object v2

    .line 9
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->unknown()Ljava/util/HashSet;

    move-result-object v4

    .line 10
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-nez v5, :cond_0

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "nothing_left"

    .line 11
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x4

    const/4 v9, 0x3

    new-array v9, v9, [F

    .line 13
    fill-array-data v9, :array_0

    .line 14
    invoke-virtual {v9}, [F->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    :goto_0
    if-lez v8, :cond_7

    if-lez v5, :cond_7

    .line 15
    invoke-static {v10}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    .line 16
    invoke-virtual {v9}, [F->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 18
    aput v3, v10, v12

    goto :goto_0

    .line 19
    :cond_2
    aget v11, v10, v12

    sub-float/2addr v11, v1

    aput v11, v10, v12

    .line 20
    invoke-static {v4}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 21
    invoke-virtual {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->setKnown()V

    .line 22
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 25
    aput v3, v10, v12

    goto :goto_0

    .line 26
    :cond_4
    aget v11, v10, v12

    sub-float/2addr v11, v1

    aput v11, v10, v12

    .line 27
    invoke-static {v2}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 28
    invoke-virtual {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->setKnown()V

    .line 29
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 32
    aput v3, v10, v6

    goto :goto_0

    .line 33
    :cond_6
    aget v11, v10, v6

    sub-float/2addr v11, v1

    aput v11, v10, v6

    .line 34
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 35
    invoke-virtual {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setKnown()V

    .line 36
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 38
    :cond_7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination$WndDivination;

    invoke-direct {v0, p0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination$WndDivination;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method
