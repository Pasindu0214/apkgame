.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$SoiledFist;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;
.source "YogFist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoiledFist"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite$Soiled;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->resistances:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;->act()Z

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v1, :cond_1

    .line 3
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v6, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    const/16 v7, 0x9

    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v7

    aget v6, v6, v7

    add-int/2addr v5, v6

    .line 4
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v7, v7, v5

    if-ne v7, v4, :cond_0

    const/16 v4, 0x1e

    .line 5
    invoke-static {v5, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 6
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 7
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->GENERAL:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v6, 0xa

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v4, v5, v7, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 10
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget v5, v1, v2

    .line 11
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v6, v5

    .line 12
    invoke-virtual {p0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$SoiledFist;->canSpreadGrass(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 13
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v6, v5

    .line 14
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v6, v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 15
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v6, v5

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final canSpreadGrass(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 2
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    .line 3
    invoke-virtual {v0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v0, p1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_0

    aget p1, v0, p1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v4, v0, v2

    .line 2
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int v7, v6, v4

    aget v7, v5, v7

    const/16 v8, 0x1e

    if-eq v7, v8, :cond_0

    add-int/2addr v6, v4

    aget v4, v5, v6

    const/16 v5, 0xf

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    rsub-int/lit8 v0, v3, 0x6

    mul-int v0, v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p1, v0

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 4
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;->damage(ILjava/lang/Object;)V

    return-void
.end method

.method public zap()V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Roots;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v3, 0xffff00

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseVerb()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    .line 6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v4, v3

    .line 7
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$SoiledFist;->canSpreadGrass(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    .line 8
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x1e

    .line 9
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v4, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 10
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    goto :goto_2

    :cond_1
    const/4 v3, 0x2

    .line 11
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v4, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 12
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 13
    :goto_2
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->GENERAL:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 14
    invoke-virtual {v3, v4, v6, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    return-void
.end method
