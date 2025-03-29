.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Regeneration;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Regeneration.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 3
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ge v2, v3, :cond_2

    .line 4
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 5
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    .line 6
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    .line 8
    :goto_0
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->isStarving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    .line 10
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-lez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->regenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 12
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ne v2, v3, :cond_2

    .line 13
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    .line 14
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$chaliceRegen;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$chaliceRegen;

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v3, :cond_3

    const/high16 v0, 0x41700000    # 15.0f

    .line 16
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    goto :goto_1

    .line 17
    :cond_3
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    int-to-float v0, v0

    const v3, 0x3f666666    # 0.9f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    .line 18
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    goto :goto_1

    :cond_5
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 20
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    :goto_1
    return v1
.end method
