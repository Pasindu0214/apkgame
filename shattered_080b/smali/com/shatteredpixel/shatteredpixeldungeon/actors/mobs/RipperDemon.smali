.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "RipperDemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;
    }
.end annotation


# instance fields
.field public lastEnemyPos:I

.field public leapCooldown:F

.field public leapPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x3c

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x16

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 v0, 0x6

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    const/16 v0, 0x9

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/4 v0, -0x2

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->baseSpeed:F

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->DEMONIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->lastEnemyPos:I

    .line 13
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapCooldown:F

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v1

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapCooldown:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapCooldown:F

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v0, v2, :cond_3

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_2

    .line 6
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->lastEnemyPos:I

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->lastEnemyPos:I

    :cond_3
    :goto_0
    return v1
.end method

.method public attackDelay()F
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->attackDelay()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    return v0
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x1e

    return p1
.end method

.method public damageRoll()I
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0x19

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "last_enemy_pos"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->lastEnemyPos:I

    const-string v0, "leap_pos"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    const-string v0, "leap_cd"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapCooldown:F

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->lastEnemyPos:I

    const-string v1, "last_enemy_pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    const-string v1, "leap_pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapCooldown:F

    const-string v1, "leap_cd"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    return-void
.end method
