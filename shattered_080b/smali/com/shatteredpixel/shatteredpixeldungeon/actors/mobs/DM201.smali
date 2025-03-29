.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM201;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;
.source "DM201.java"


# instance fields
.field public threatened:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM201Sprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x78

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM201;->threatened:Z

    return-void
.end method

.method private zap()V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM201;->threatened:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "vent"

    .line 3
    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/16 v3, 0xf

    invoke-static {v2, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;->setStrength(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 5
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v5, v2, v1

    .line 6
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int v8, v7, v5

    aget-boolean v6, v6, v8

    if-nez v6, :cond_0

    add-int/2addr v7, v5

    const/4 v5, 0x5

    .line 7
    invoke-static {v7, v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    invoke-virtual {v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;->setStrength(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public act()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    if-eqz v0, :cond_0

    array-length v0, v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 5
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    .line 7
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM201;->threatened:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 9
    invoke-virtual {v1, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_4

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    return v2

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM201;->zap()V

    return v1

    .line 14
    :cond_5
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->act()Z

    move-result v0

    return v0
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    move-object v2, p2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 2
    invoke-virtual {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM201;->threatened:Z

    .line 4
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    return-void
.end method

.method public damageRoll()I
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x19

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public getCloser(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getFurther(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onZapComplete()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM201;->zap()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method

.method public rollToDropLoot()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    add-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->rollToDropLoot()V

    .line 3
    :cond_1
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    aget v0, v0, v1

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v3, v0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/MetalShard;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/MetalShard;-><init>()V

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    return-void
.end method
