.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;
.source "WandOfLivingEarth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EarthGuardian"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian$Wandering;
    }
.end annotation


# instance fields
.field public wandLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EarthGuardianSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->intelligentAlly:Z

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian$Wandering;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/16 v0, -0x13

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$100(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    if-le p2, v0, :cond_0

    .line 2
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    mul-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x10

    .line 3
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    .line 4
    :cond_0
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/2addr v0, p3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 5
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    add-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    return-void
.end method


# virtual methods
.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->aggro(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x5

    return p1
.end method

.method public damageRoll()I
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public description()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "desc"

    if-eqz v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p0, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    add-int/lit8 v1, v0, 0x2

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "defense"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const-string v0, "wand_level"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const-string v1, "defense"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    const-string v1, "wand_level"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
