.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;
.source "ScrollOfTeleportation.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;-><init>()V

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    return-void
.end method

.method public static appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->interruptMotion()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_teleport.mp3"

    .line 4
    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v3, Lcom/watabou/noosa/tweeners/AlphaTweener;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v0, v2, v4}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean p1, v0, p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p0, p1, :cond_5

    .line 11
    :cond_4
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p1

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_5
    return-void
.end method

.method public static teleportChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v1

    const-string v2, "no_tele"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    .line 2
    invoke-static {v0, v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v1, 0xa

    .line 3
    :goto_0
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v4, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    const/4 v6, -0x1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eq v4, v6, :cond_4

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->secret:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_4

    :goto_1
    if-ne v4, v6, :cond_2

    new-array p0, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p0, v1, :cond_3

    new-array p0, v3, [Ljava/lang/Object;

    const-string v1, "tele"

    .line 9
    invoke-static {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v5

    goto :goto_0
.end method

.method public static teleportToLocation(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[Z[Z)[Z

    move-result-object v0

    invoke-static {p1, v0}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[Z)V

    .line 2
    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v0, v0, v1

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    return-void

    .line 8
    :cond_2
    :goto_0
    const-class p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "cant_reach"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doRead()V
    .locals 12

    .line 1
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_read.mp3"

    .line 2
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 6
    :cond_0
    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    if-eqz v2, :cond_11

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 10
    instance-of v8, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;

    if-eqz v8, :cond_5

    .line 11
    invoke-virtual {v6}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/watabou/utils/Point;

    .line 12
    iget-object v10, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    invoke-virtual {v2, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v9

    aget v9, v10, v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_3

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    :cond_3
    const/4 v7, 0x1

    :cond_4
    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_a

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget v8, v6, Lcom/watabou/utils/Rect;->left:I

    :goto_1
    iget v9, v6, Lcom/watabou/utils/Rect;->right:I

    if-gt v8, v9, :cond_8

    .line 15
    iget v9, v6, Lcom/watabou/utils/Rect;->top:I

    :goto_2
    iget v10, v6, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v9, v10, :cond_7

    .line 16
    new-instance v10, Lcom/watabou/utils/Point;

    invoke-direct {v10, v8, v9}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 17
    invoke-virtual {v6, v10, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canPlaceCharacter(Lcom/watabou/utils/Point;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 18
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/watabou/utils/Point;

    .line 19
    invoke-virtual {v2, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v7

    .line 20
    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_9

    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_9

    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->secret:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_9

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-nez v8, :cond_9

    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_a
    throw v4

    .line 23
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 24
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->teleportChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto/16 :goto_7

    .line 25
    :cond_c
    invoke-static {v3}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->room(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    move-result-object v4

    instance-of v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;

    if-eqz v4, :cond_e

    .line 27
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->room(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;

    .line 28
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 29
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    .line 30
    sget-object v6, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v8, v6

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_f

    aget v10, v6, v9

    add-int/2addr v10, v5

    .line 31
    invoke-virtual {v2, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v11, v11, v10

    if-eqz v11, :cond_d

    .line 32
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v11

    if-nez v11, :cond_d

    .line 33
    instance-of v3, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;

    move v4, v3

    move v3, v10

    goto :goto_5

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_e
    const/4 v5, -0x1

    :cond_f
    const/4 v4, 0x0

    .line 34
    :goto_5
    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "tele"

    invoke-static {v6, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 36
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    if-eqz v4, :cond_10

    .line 37
    iget-object v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, v0, v5

    const/16 v2, 0x10

    if-ne v0, v2, :cond_10

    .line 38
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_secret.mp3"

    .line 39
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 40
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, v0, v5

    .line 41
    invoke-static {v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->discoverTile(II)V

    .line 42
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discover(I)V

    .line 43
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;->discover(I)V

    .line 44
    :cond_10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 45
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    goto :goto_7

    .line 46
    :cond_11
    throw v4

    .line 47
    :cond_12
    :goto_6
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->teleportChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 48
    :goto_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->setKnown()V

    .line 49
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->readAnimation()V

    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    :goto_0
    mul-int/lit8 v0, v0, 0x1e

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    goto :goto_0

    :goto_1
    return v0
.end method
