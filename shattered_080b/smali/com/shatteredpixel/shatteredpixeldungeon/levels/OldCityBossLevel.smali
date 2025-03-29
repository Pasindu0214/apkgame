.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "OldCityBossLevel.java"


# instance fields
.field public arenaDoor:I

.field public enteredArena:Z

.field public keyDropped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    const v0, 0x4b6636

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xf2f2f2

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->enteredArena:Z

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->keyDropped:Z

    return-void
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;->addCityVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public build()Z
    .locals 11

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/4 v3, 0x7

    const/16 v4, 0xf

    const/4 v5, 0x1

    move-object v0, p0

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v1, 0xf

    const/4 v3, 0x1

    const/16 v5, 0xe

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/4 v0, 0x3

    :goto_0
    const/16 v1, 0x11

    const/4 v6, 0x2

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 5
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v0, v2

    add-int/lit8 v3, v3, 0xf

    sub-int/2addr v3, v6

    const/16 v4, 0x1a

    .line 6
    aput v4, v1, v3

    mul-int v2, v2, v0

    add-int/lit8 v2, v2, 0xf

    add-int/2addr v2, v6

    .line 7
    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    .line 8
    invoke-virtual {p0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->pedestal(Z)I

    move-result v0

    const/4 v8, 0x0

    .line 9
    invoke-virtual {p0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->pedestal(Z)I

    move-result v2

    .line 10
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v4, 0xb

    aput v4, v3, v2

    aput v4, v3, v0

    add-int/2addr v0, v7

    :goto_1
    if-ge v0, v2, :cond_1

    .line 11
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v4, 0xe

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0xf

    .line 13
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 14
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v9, 0x15

    aput v9, v3, v2

    mul-int/lit8 v0, v0, 0x11

    add-int/lit8 v0, v0, 0xf

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    const/4 v10, 0x5

    .line 16
    aput v10, v3, v0

    const/16 v1, 0xc

    const/16 v2, 0x12

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/4 v4, 0x1

    const/16 v5, 0x1b

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    .line 20
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v1, v2

    .line 21
    aput v7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x12

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v5, 0x1b

    move-object v0, p0

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v1, 0x12

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 24
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    const/16 v1, 0x14

    add-int/2addr v0, v1

    .line 25
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v2

    const/16 v2, 0xc

    add-int/2addr v0, v2

    .line 26
    invoke-static {v10}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    add-int/2addr v3, v0

    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 27
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v4, 0x7

    aput v4, v0, v3

    .line 28
    :goto_2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 29
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v0, v3

    if-ge v8, v0, :cond_4

    .line 30
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, v0, v8

    if-ne v0, v7, :cond_2

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v1, v0, v8

    goto :goto_3

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v0, v8

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 33
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v3, v8

    .line 34
    aget v0, v0, v3

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->floorTile(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    rsub-int/lit8 v0, v0, 0x15

    .line 35
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v2, v0, v8

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    return v7
.end method

.method public createItems()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v1, 0xd

    const/16 v2, 0x11

    .line 2
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    const/16 v2, 0x13

    const/16 v3, 0x15

    .line 3
    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v2

    .line 4
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v2, v2, v3

    add-int/2addr v2, v1

    .line 5
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v2, v1, :cond_0

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

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

.method public drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->keyDropped:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->keyDropped:Z

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    const/4 v1, 0x5

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 8
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
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->enteredArena:Z

    if-nez v0, :cond_9

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 3
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 4
    div-int/2addr v0, v1

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    div-int/2addr v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_9

    .line 6
    iput-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->enteredArena:Z

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    .line 8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 9
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v2

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    add-int/2addr p1, v2

    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 11
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 12
    :cond_3
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/King;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/King;-><init>()V

    .line 13
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x0

    .line 14
    :cond_4
    :goto_2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 15
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 16
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_4

    .line 17
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 18
    div-int/2addr v2, v4

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    div-int/2addr v5, v4

    if-ge v2, v5, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    .line 19
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_7

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x14

    if-lt v0, v4, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_2

    .line 20
    :cond_7
    :goto_4
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 21
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/King;->notice()V

    .line 23
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 24
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/watabou/noosa/tweeners/AlphaTweener;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, p1, v2, v3}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    :cond_8
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    const/16 v0, 0xa

    .line 26
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 27
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 28
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    :cond_9
    return-void
.end method

.method public pedestal(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 p1, p1, 0x9

    add-int/lit8 p1, p1, 0xf

    add-int/lit8 p1, p1, -0x2

    return p1

    .line 2
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 p1, p1, 0x9

    add-int/lit8 p1, p1, 0xf

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 3
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_0

    return v0
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

    const-string v0, "door"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    const-string v0, "entered"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->enteredArena:Z

    const-string v0, "droppped"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->keyDropped:Z

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->arenaDoor:I

    const-string v1, "door"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->enteredArena:Z

    const-string v1, "entered"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;->keyDropped:Z

    const-string v1, "droppped"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "statue_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "sp_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "deco_desc"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "exit_desc"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "entrance_desc"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "water_name"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_name"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_city.png"

    return-object v0
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water3.png"

    return-object v0
.end method
