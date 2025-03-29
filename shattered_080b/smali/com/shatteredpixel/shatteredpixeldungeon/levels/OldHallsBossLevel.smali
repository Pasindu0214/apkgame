.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "OldHallsBossLevel.java"


# instance fields
.field public enteredArena:Z

.field public keyDropped:Z

.field public stairs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    const v0, 0x801500

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xa68521

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->stairs:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->enteredArena:Z

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->keyDropped:Z

    return-void
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;->addHallsVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public build()Z
    .locals 13

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x5

    const/4 v8, 0x1

    if-ge v7, v0, :cond_3

    const/16 v0, 0xe

    const/4 v9, 0x2

    .line 2
    invoke-static {v9, v0}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v10

    const/16 v0, 0x12

    const/16 v1, 0x16

    .line 3
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v11

    mul-int/lit8 v12, v7, 0x4

    add-int/lit8 v1, v12, 0x2

    const/4 v3, 0x4

    sub-int v0, v11, v10

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v2, v10

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    if-ne v7, v9, :cond_0

    add-int/lit8 v0, v12, 0x3

    add-int/lit8 v1, v10, -0x1

    .line 5
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 7
    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v1, v10, 0x1

    add-int/lit8 v2, v11, -0x1

    .line 8
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    add-int v3, v12, v0

    .line 10
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v4

    add-int/2addr v1, v3

    const/16 v3, 0xc

    .line 11
    aput v3, v2, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x4

    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v1, 0xf

    const/16 v2, 0xf

    const/4 v3, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v0, 0x10

    .line 15
    invoke-static {v0, v0}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v1

    .line 16
    invoke-static {v0, v0}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v0

    .line 17
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 19
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v3, 0x7

    aput v3, v1, v0

    .line 20
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x6

    invoke-static {v2, v0, v1, v3, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    :goto_2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v2, :cond_5

    .line 22
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v2, v1

    if-ne v3, v8, :cond_4

    aget-boolean v3, v0, v1

    if-eqz v3, :cond_4

    const/16 v3, 0x1d

    .line 23
    aput v3, v2, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_5
    :goto_3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v6, v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, v0, v6

    if-ne v0, v8, :cond_6

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v1, 0x14

    aput v1, v0, v6

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    return v8
.end method

.method public createItems()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v1, 0xf

    const/16 v2, 0x11

    .line 2
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v2

    .line 3
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v2, v2, v3

    add-int/2addr v2, v1

    .line 4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v2, v1, :cond_0

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    :cond_1
    return-void
.end method

.method public createMobs()V
    .locals 0

    return-void
.end method

.method public final doMagic(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/16 v1, 0xe

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method

.method public drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->keyDropped:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->keyDropped:Z

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->stairs:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/4 v1, 0x7

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    return-object p1
.end method

.method public occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->enteredArena:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_4

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq p1, v0, :cond_4

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->enteredArena:Z

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    const/16 v0, 0xe

    const/16 v1, 0xe

    :goto_0
    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    .line 5
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v3, v3, 0xe

    add-int/2addr v3, v1

    .line 6
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->doMagic(I)V

    .line 7
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v3, v3, 0x12

    add-int/2addr v3, v1

    .line 8
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->doMagic(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    const/16 v1, 0xf

    :goto_1
    if-ge v1, v2, :cond_1

    .line 9
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v1

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    .line 10
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->doMagic(I)V

    .line 11
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v1

    add-int/lit8 v3, v3, 0x11

    add-int/2addr v3, p1

    .line 12
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->doMagic(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->doMagic(I)V

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap()V

    .line 15
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 16
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog;-><init>()V

    .line 17
    :cond_2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 18
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 19
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v0, v1, v0

    if-nez v0, :cond_2

    .line 20
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 21
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$RottingFist;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$RottingFist;-><init>()V

    .line 22
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$BurningFist;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$BurningFist;-><init>()V

    .line 23
    :cond_3
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    aget v3, v3, v5

    add-int/2addr v2, v3

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 24
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 25
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v5, v3, v4

    if-eqz v5, :cond_3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_3

    if-eq v4, v2, :cond_3

    .line 26
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 27
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 28
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog;->notice()V

    .line 29
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->stairs:I

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    :cond_4
    return-void
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->stairs:I

    .line 2
    :cond_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v1, v0

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 4
    invoke-static {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    if-nez v2, :cond_0

    return v1
.end method

.method public respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "stairs"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->stairs:I

    const-string v0, "entered"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->enteredArena:Z

    const-string v0, "droppped"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->keyDropped:Z

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->stairs:I

    const-string v1, "stairs"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->enteredArena:Z

    const-string v1, "entered"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;->keyDropped:Z

    const-string v1, "droppped"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    :pswitch_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "water_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "statue_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0xf

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "statue_name"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "water_name"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_name"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "grass_name"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_halls.png"

    return-object v0
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water4.png"

    return-object v0
.end method
