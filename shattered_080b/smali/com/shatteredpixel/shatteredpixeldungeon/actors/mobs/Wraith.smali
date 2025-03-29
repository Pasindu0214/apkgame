.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Wraith.java"


# instance fields
.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WraithSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/4 v1, -0x2

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static spawnAround(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS4:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    add-int/2addr v3, p0

    .line 2
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->spawnAt(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static spawnAt(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;
    .locals 7

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;-><init>()V

    .line 3
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->level:I

    add-int/lit8 v1, v1, 0xa

    const/4 v2, 0x5

    mul-int/lit8 v1, v1, 0x5

    .line 5
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 7
    iput p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 8
    iget-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/high16 p0, 0x40000000    # 2.0f

    .line 9
    invoke-static {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V

    .line 10
    iget-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 11
    iget-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v3, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v4, Lcom/watabou/noosa/tweeners/AlphaTweener;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v4, p0, v5, v6}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    iget-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p0

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->CURSE:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 13
    invoke-virtual {p0, v3, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->level:I

    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public damageRoll()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->level:I

    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public reset()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x1

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "level"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->level:I

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->level:I

    add-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x5

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    return-void
.end method

.method public spawningWeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->level:I

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
