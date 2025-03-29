.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$BurningFist;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;
.source "YogFist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BurningFist"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite$Burning;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->FIERY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 12

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;->act()Z

    move-result v1

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v3, v3, v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0xd

    const/16 v8, 0x1d

    const/4 v9, 0x1

    if-ne v3, v8, :cond_0

    .line 3
    invoke-static {v4, v9, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 4
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 5
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3, v5, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 7
    :cond_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 8
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v4, v2

    if-ne v4, v8, :cond_1

    .line 9
    invoke-static {v2, v9, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 10
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 11
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    .line 12
    invoke-virtual {v2, v3, v5, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 13
    :cond_1
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    .line 14
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v6, v5

    invoke-static {v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    .line 15
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int v11, v10, v5

    aget-boolean v9, v9, v11

    if-nez v9, :cond_2

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    add-int v9, v10, v5

    aget-boolean v8, v8, v9

    if-nez v8, :cond_2

    add-int/2addr v10, v5

    sub-int/2addr v7, v6

    .line 16
    invoke-static {v10, v7, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v5

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public zap()V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v2, v2, v4

    const/16 v5, 0x1d

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-static {v4, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v2, v4, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 7
    :cond_0
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-static {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    const/high16 v2, 0x41000000    # 8.0f

    .line 8
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    .line 9
    :goto_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 10
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int v8, v7, v4

    aget-boolean v6, v6, v8

    if-nez v6, :cond_1

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    add-int v6, v7, v4

    aget-boolean v5, v5, v6

    if-nez v5, :cond_1

    add-int/2addr v7, v4

    .line 11
    invoke-static {v7, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 12
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v7, v4

    sub-int/2addr v6, v5

    invoke-static {v7, v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v4

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
