.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner$Fleeing;
    }
.end annotation


# instance fields
.field public lastEnemyPos:I

.field public shotWebVisually:Z

.field public webCoolDown:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpinnerSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x11

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/16 v1, 0x9

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const/high16 v0, 0x3e000000    # 0.125f

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner$Fleeing;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner$Fleeing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->FLEEING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webCoolDown:I

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->lastEnemyPos:I

    .line 12
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->shotWebVisually:Z

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->resistances:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Web;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v0, v2, :cond_3

    .line 4
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webCoolDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webCoolDown:I

    .line 5
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->shotWebVisually:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->shotWebVisually:Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz v2, :cond_2

    .line 8
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->lastEnemyPos:I

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->lastEnemyPos:I

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->FLEEING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v2, :cond_4

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz v2, :cond_4

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    .line 11
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    :cond_4
    return v1
.end method

.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    const/4 v0, 0x7

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;->set(F)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webCoolDown:I

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->FLEEING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    :cond_0
    return p2
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x16

    return p1
.end method

.method public damageRoll()I
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x19

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public move(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webCoolDown:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->lastEnemyPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webPos()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->shotWebVisually:Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->shootWeb()V

    .line 7
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "web_cooldown"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webCoolDown:I

    const-string v0, "last_enemy_pos"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->lastEnemyPos:I

    return-void
.end method

.method public shootWeb()V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Web;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webPos()I

    move-result v1

    .line 2
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v2, :cond_7

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v1, v2, :cond_7

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    sget-object v4, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 4
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v4, v4, v3

    add-int/2addr v5, v4

    if-ne v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v5, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    const/4 v6, 0x7

    if-nez v3, :cond_2

    const/4 v7, 0x7

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v3, -0x1

    :goto_2
    aget v5, v5, v7

    add-int/2addr v4, v5

    .line 6
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v7, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    if-ne v3, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v3, 0x1

    :goto_3
    aget v2, v7, v2

    add-int/2addr v5, v2

    .line 7
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v2, v2, v4

    const/16 v3, 0x14

    if-eqz v2, :cond_4

    invoke-static {v4, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 8
    :cond_4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_5

    invoke-static {v1, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 9
    :cond_5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_6

    invoke-static {v5, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_6
    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webCoolDown:I

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 13
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->webCoolDown:I

    const-string v1, "web_cooldown"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->lastEnemyPos:I

    const-string v1, "last_enemy_pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public webPos()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->lastEnemyPos:I

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v3, 0x0

    if-ne v2, v0, :cond_1

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {v2, v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    invoke-direct {v4, v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    move-object v2, v4

    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 6
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v4, v5, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_3
    :goto_2
    iget-object v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    if-gt v0, v3, :cond_4

    return v1

    .line 8
    :cond_4
    iget-object v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5

    return v0

    :cond_5
    return v1
.end method
