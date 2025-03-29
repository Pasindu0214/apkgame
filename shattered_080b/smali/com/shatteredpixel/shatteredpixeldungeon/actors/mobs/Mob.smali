.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;
.source "Mob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Passive;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;
    }
.end annotation


# static fields
.field public static heldAllies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public EXP:I

.field public FLEEING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

.field public HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

.field public PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

.field public SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

.field public WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

.field public alerted:Z

.field public defenseSkill:I

.field public enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public enemySeen:Z

.field public hitWithRanged:Z

.field public intelligentAlly:Z

.field public loot:Ljava/lang/Object;

.field public lootChance:F

.field public maxLvl:I

.field public spriteClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;",
            ">;"
        }
    .end annotation
.end field

.field public state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

.field public target:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->heldAllies:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;-><init>()V

    const/16 v0, -0x14

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->FLEEING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Passive;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Passive;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v1, 0x1e

    .line 13
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 14
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->alerted:Z

    .line 15
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->intelligentAlly:Z

    .line 16
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->hitWithRanged:Z

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    return-void
.end method

.method public static holdAllies(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->heldAllies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 3
    instance-of v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz v5, :cond_0

    .line 4
    move-object v5, v4

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const/4 v6, -0x1

    .line 5
    iput v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    .line 6
    iput-boolean v1, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    .line 7
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->heldAllies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v5, v6, :cond_1

    iget-boolean v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->intelligentAlly:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 10
    invoke-virtual {v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_1

    .line 11
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 12
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->heldAllies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public act()Z
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->act()Z

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->alerted:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->alerted:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showAlert()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->hideAlert()V

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->hideLost()V

    .line 7
    :goto_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 8
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v3

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_2

    iget v2, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-gtz v2, :cond_2

    const/4 v1, 0x1

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    invoke-interface {v2, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;->act(ZZ)Z

    move-result v0

    return v0
.end method

.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    .line 2
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->FLEEING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto :goto_1

    .line 5
    :cond_1
    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Sleep;

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 7
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->postpone(F)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    :cond_3
    :goto_1
    return-void
.end method

.method public aggro(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    :cond_0
    return-void
.end method

.method public attackDelay()F
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Adrenaline;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x3f2aaaab

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public beckon(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->notice()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 4
    :cond_0
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    return-void
.end method

.method public canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result p1

    return p1
.end method

.method public chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAggression$Aggression;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    if-eqz v3, :cond_0

    .line 2
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;->object:I

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v3, :cond_0

    return-object v3

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-nez v3, :cond_3

    .line 5
    :cond_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eq v4, p0, :cond_2

    .line 6
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_3
    const/4 v0, 0x0

    .line 8
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v3

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v3, v5, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v3, v5, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v3, v5, :cond_6

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;->object:I

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v5

    if-ne v3, v5, :cond_7

    goto :goto_0

    .line 12
    :cond_7
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isInvulnerable(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    :goto_0
    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_1b

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 15
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 16
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v6, v7, :cond_a

    if-eq v5, p0, :cond_a

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_a

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-gtz v6, :cond_a

    .line 17
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_b
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 19
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 20
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v6, v7, :cond_c

    if-eq v5, p0, :cond_c

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_c

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-gtz v6, :cond_c

    .line 21
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_d
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 23
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_15

    iget v2, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-gtz v2, :cond_15

    .line 24
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 25
    :cond_e
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v2, v5, :cond_11

    .line 26
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 27
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v6, v7, :cond_f

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_f

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-gtz v6, :cond_f

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isInvulnerable(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 29
    iget-boolean v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->intelligentAlly:Z

    if-eqz v6, :cond_10

    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v6, v7, :cond_f

    iget-object v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v6, v7, :cond_f

    iget-object v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v6, v7, :cond_f

    .line 30
    :cond_10
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_11
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v2, v5, :cond_15

    .line 32
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 33
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v6, v7, :cond_12

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_12

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-gtz v6, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isInvulnerable(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 34
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 35
    :cond_13
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_15

    iget v2, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-gtz v2, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_14

    .line 36
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 37
    :cond_14
    throw v3

    .line 38
    :cond_15
    :goto_5
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    if-eqz v1, :cond_16

    .line 39
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;->object:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v1, :cond_16

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-le v2, v4, :cond_16

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 42
    :cond_16
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    return-object v3

    .line 43
    :cond_17
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v3, :cond_19

    .line 44
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 45
    invoke-virtual {v2, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v2

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v4

    if-lt v2, v4, :cond_19

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 46
    invoke-virtual {v2, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v2

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v4

    if-ne v2, v4, :cond_18

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v1, v2, :cond_18

    :cond_19
    move-object v3, v1

    goto :goto_6

    :cond_1a
    return-object v3

    .line 47
    :cond_1b
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    return-object v0
.end method

.method public createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :goto_0
    return-object v0
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->alerted:Z

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    return-void
.end method

.method public defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->hitWithRanged:Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-lez v0, :cond_3

    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->canSurpriseAttack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->sneakAttacks:I

    add-int/2addr v0, v1

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->sneakAttacks:I

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateRogueUnlock()V

    .line 7
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;->hit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_3

    .line 10
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Surprise;

    invoke-virtual {v0, v3}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Surprise;

    .line 11
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v3, v3, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v3, v0}, Lcom/watabou/noosa/Group;->bringToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 13
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 14
    invoke-virtual {v3, v0}, Lcom/watabou/noosa/Visual;->center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    const v3, 0x3f4ccccd    # 0.8f

    .line 15
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Surprise;->time:F

    .line 16
    iput v2, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 17
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_4

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 18
    invoke-virtual {v0, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 19
    :cond_4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->aggro(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 20
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 21
    :cond_5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SoulMark;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 22
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 23
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const v4, 0x3ecccccd    # 0.4f

    if-eq p1, v3, :cond_6

    int-to-float p1, v0

    mul-float p1, p1, v4

    .line 24
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 25
    :cond_6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    invoke-static {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->satisfy(F)V

    .line 26
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v3, v3

    iget v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v5, v5

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 27
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    .line 28
    invoke-virtual {p1, v0, v2, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_7
    return p2
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v3, :cond_1

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->canSurpriseAttack()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eq p1, v0, :cond_3

    .line 4
    :cond_2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    return p1

    :cond_3
    return v2
.end method

.method public description()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->destroy()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v0, v1, :cond_2

    .line 5
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateMonstersSlain()V

    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->qualifiedForNoKilling:Z

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v2, :cond_1

    .line 9
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v4, 0xff00

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v5, "exp"

    invoke-static {p0, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->earnExp(ILjava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public die(Ljava/lang/Object;)V
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->hitWithRanged:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->thrownAssists:I

    add-int/2addr v1, v2

    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->thrownAssists:I

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateHuntressUnlock()V

    :cond_0
    if-ne p1, v0, :cond_2

    .line 4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    rem-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v2, :cond_1

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 5
    :cond_1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    div-int/2addr v1, v4

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v1, v2, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->rollToDropLoot()V

    .line 8
    :cond_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_4

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "died"

    .line 9
    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->destroy()V

    if-eq p1, v0, :cond_5

    .line 11
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    :cond_5
    return-void
.end method

.method public doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack(I)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->attackDelay()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->attackDelay()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public getCloser(I)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->rooted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v2, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    .line 4
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v4, v4, p1

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 5
    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    goto/16 :goto_a

    :cond_2
    const/4 p1, -0x1

    goto/16 :goto_a

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    .line 7
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v4, v5, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_4

    goto/16 :goto_4

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_c

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 11
    invoke-virtual {v0, p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 13
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 14
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 15
    invoke-virtual {v4, p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v4

    if-ne v4, v3, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_7
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19
    :cond_8
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_9

    goto :goto_3

    .line 20
    :cond_9
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 21
    invoke-virtual {v4, p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v4

    if-ne v4, v3, :cond_a

    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_b

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 23
    :cond_b
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_16

    .line 25
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 26
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_11

    iget-boolean v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v6, :cond_e

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_11

    :cond_e
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 27
    invoke-static {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_11

    .line 28
    :cond_f
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v5

    if-eqz v5, :cond_10

    goto :goto_6

    .line 29
    :cond_10
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_8

    .line 30
    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 31
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v5, v0

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_15

    aget v7, v0, v6

    .line 32
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v7, v4

    invoke-virtual {v8, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v8

    if-eqz v8, :cond_14

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 33
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v9, v9, v7

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v9, :cond_12

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_14

    :cond_12
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 34
    invoke-static {p0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v8

    if-eqz v8, :cond_13

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_14

    .line 35
    :cond_13
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-nez v8, :cond_14

    .line 36
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_8

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_15
    const/4 v0, 0x1

    :cond_16
    :goto_8
    if-eqz v0, :cond_1d

    .line 37
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    invoke-static {p0, p1, v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->findPath(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I[Z[ZZ)Lcom/watabou/utils/PathFinder$Path;

    move-result-object v0

    .line 38
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v4, v5, :cond_17

    .line 39
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    goto :goto_9

    .line 40
    :cond_17
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    invoke-static {p0, p1, v4, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->findPath(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I[Z[ZZ)Lcom/watabou/utils/PathFinder$Path;

    move-result-object p1

    if-eqz p1, :cond_1c

    if-eqz v0, :cond_18

    .line 41
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_1c

    .line 42
    :cond_18
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    .line 43
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v0, :cond_19

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    .line 44
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-boolean v0, v0, v4

    if-nez v0, :cond_1b

    :cond_19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 45
    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_1b

    .line 46
    :cond_1a
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    if-eqz p1, :cond_1d

    :cond_1b
    return v1

    .line 47
    :cond_1c
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    .line 48
    :cond_1d
    :goto_9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    if-eqz p1, :cond_1f

    .line 49
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1e
    :goto_a
    if-eq p1, v2, :cond_1f

    .line 50
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    return v3

    :cond_1f
    :goto_b
    return v1
.end method

.method public getFurther(I)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->rooted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    const/4 v3, 0x1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->flee(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I[Z[ZZ)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method public notice()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showAlert()V

    return-void
.end method

.method public onAttackComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method

.method public remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    .line 2
    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v0, 0xff0000

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "rage"

    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "state"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SLEEPING"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto :goto_0

    :cond_0
    const-string v1, "WANDERING"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto :goto_0

    :cond_1
    const-string v1, "HUNTING"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto :goto_0

    :cond_2
    const-string v1, "FLEEING"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->FLEEING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto :goto_0

    :cond_3
    const-string v1, "PASSIVE"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    :cond_4
    :goto_0
    const-string v0, "seen"

    .line 13
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    const-string v0, "target"

    .line 14
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    const-string v0, "max_lvl"

    .line 15
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    :cond_5
    return-void
.end method

.method public rollToDropLoot()V
    .locals 8

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    add-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->dropChanceMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v0

    mul-float v0, v0, v1

    .line 4
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 7
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, 0x40400000    # 3.0f

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-lez v0, :cond_6

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 10
    :goto_0
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->tryForBonusDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v6, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v5

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    goto :goto_1

    .line 13
    :cond_4
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->latestDropWasRare:Z

    if-eqz v0, :cond_5

    .line 14
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-direct {v0, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v5, 0xaa00ff

    .line 15
    iput-boolean v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 16
    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 17
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->latestDropWasRare:Z

    goto :goto_2

    .line 19
    :cond_5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    invoke-direct {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v5, 0xffffff

    .line 20
    iput-boolean v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 21
    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 22
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    .line 23
    :cond_6
    :goto_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    if-gt v0, v5, :cond_7

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky$LuckProc;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 24
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    invoke-direct {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v1, 0xff00

    .line 25
    iput-boolean v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 26
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 27
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    .line 28
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky;->genLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :cond_7
    return-void
.end method

.method public spawningWeight()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    return-object v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const-string v2, "state"

    if-ne v0, v1, :cond_0

    const-string v0, "SLEEPING"

    .line 3
    invoke-virtual {p1, v2, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v1, :cond_1

    const-string v0, "WANDERING"

    .line 5
    invoke-virtual {p1, v2, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v1, :cond_2

    const-string v0, "HUNTING"

    .line 7
    invoke-virtual {p1, v2, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->FLEEING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v1, :cond_3

    const-string v0, "FLEEING"

    .line 9
    invoke-virtual {p1, v2, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v1, :cond_4

    const-string v0, "PASSIVE"

    .line 11
    invoke-virtual {p1, v2, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    const-string v1, "seen"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 13
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    const-string v1, "target"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 14
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    const-string v1, "max_lvl"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public surprisedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateSpriteState()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->updateSpriteState()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->PARALYSED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->add(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    :cond_1
    return-void
.end method

.method public yell(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->newLine()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s: \"%s\" "

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
