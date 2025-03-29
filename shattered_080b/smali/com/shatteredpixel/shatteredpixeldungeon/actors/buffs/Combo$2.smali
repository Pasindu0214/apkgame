.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;
.super Ljava/lang/Object;
.source "Combo.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

.field public type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 13

    if-eqz p0, :cond_19

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FrostImbue;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/EarthImbue;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v4

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->INFINITE_EVASION:I

    const-string v6, "snd_miss.mp3"

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-lt v4, v5, :cond_0

    .line 3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v1, 0xffff00

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseVerb()Ljava/lang/String;

    move-result-object p1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 5
    invoke-virtual {p1, v6, v7, v7, v7}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->detach()V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    .line 8
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackDelay()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    goto/16 :goto_6

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isInvulnerable(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v0, 0xff00

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "invulnerable"

    invoke-static {v3, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 12
    invoke-virtual {p1, v6, v7, v7, v7}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 13
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->detach()V

    .line 14
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    .line 15
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackDelay()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    goto/16 :goto_6

    .line 16
    :cond_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damageRoll()I

    move-result v4

    .line 17
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const v6, 0x3f19999a    # 0.6f

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_8

    if-eq v5, v11, :cond_7

    if-eq v5, v10, :cond_6

    const/4 v12, 0x3

    if-eq v5, v12, :cond_3

    if-eq v5, v9, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v4, v4

    mul-float v4, v4, v6

    .line 18
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_0
    if-ge v5, v9, :cond_5

    .line 19
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damageRoll()I

    move-result v6

    if-le v6, v4, :cond_4

    move v4, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    int-to-float v4, v4

    const/high16 v5, 0x40200000    # 2.5f

    mul-float v4, v4, v5

    .line 20
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_1

    .line 21
    :cond_6
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    :cond_7
    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v4, v4, v5

    .line 22
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_1

    :cond_8
    int-to-float v4, v4

    mul-float v4, v4, v6

    .line 23
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 24
    :goto_1
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result v4

    .line 25
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v5

    sub-int/2addr v4, v5

    .line 26
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vulnerable;

    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    if-eqz v5, :cond_9

    int-to-float v4, v4

    const v5, 0x3faa3d71    # 1.33f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 27
    :cond_9
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v5, p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result v4

    .line 28
    invoke-virtual {p1, v4, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 29
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_b

    if-eq v5, v10, :cond_a

    goto/16 :goto_4

    .line 30
    :cond_a
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-static {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    if-eqz v5, :cond_10

    .line 31
    div-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->supercharge(I)V

    goto :goto_4

    .line 32
    :cond_b
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 33
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v5

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x0

    .line 34
    :goto_2
    sget-object v6, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v10, v6

    if-ge v5, v10, :cond_f

    .line 35
    aget v6, v6, v5

    .line 36
    iget v10, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v12, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v12, v12, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v12, v12, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sub-int v12, v10, v12

    if-ne v12, v6, :cond_e

    add-int/2addr v10, v6

    .line 37
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v6, v6, v10

    if-nez v6, :cond_c

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v5, v5, v10

    if-eqz v5, :cond_f

    .line 38
    :cond_c
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v5

    if-nez v5, :cond_f

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 39
    invoke-static {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v5, v5, v10

    if-eqz v5, :cond_f

    .line 40
    :cond_d
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {v5, p1, v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 41
    iput v10, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 42
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v5, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_3

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 43
    :cond_f
    :goto_3
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vertigo;

    invoke-static {v11, v9}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 44
    :cond_10
    :goto_4
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 45
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;

    invoke-virtual {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 46
    :cond_11
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 47
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/EarthImbue;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/EarthImbue;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 48
    :cond_12
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 49
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FrostImbue;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FrostImbue;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 50
    :cond_13
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    const-string v2, "snd_hit.mp3"

    invoke-virtual {v0, v2, v7, v7, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 51
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->bloodBurstA(Lcom/watabou/utils/PointF;I)V

    .line 52
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    .line 53
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_14

    new-array v0, v11, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "defeat"

    invoke-static {v3, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 56
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v11, :cond_17

    if-eq v1, v9, :cond_15

    .line 57
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->detach()V

    .line 58
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    .line 59
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackDelay()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    goto :goto_6

    .line 60
    :cond_15
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    .line 61
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    if-lez v2, :cond_16

    .line 62
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 63
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$2;

    invoke-direct {v2, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack(ILcom/watabou/utils/Callback;)V

    goto :goto_6

    .line 64
    :cond_16
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->detach()V

    .line 65
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    .line 66
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackDelay()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    goto :goto_6

    .line 67
    :cond_17
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result p1

    if-nez p1, :cond_18

    .line 68
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->hit()V

    .line 69
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    const/high16 p1, 0x41400000    # 12.0f

    .line 70
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    goto :goto_5

    .line 71
    :cond_18
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->detach()V

    .line 72
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    .line 73
    :goto_5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackDelay()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    :goto_6
    return-void

    :cond_19
    const/4 p0, 0x0

    .line 74
    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public onSelect(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 5
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isCharmedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$1;

    invoke-direct {v2, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    invoke-virtual {v1, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack(ILcom/watabou/utils/Callback;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "bad_target"

    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    .line 2
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "fury_prompt"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "crush_prompt"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "slam_prompt"

    .line 5
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "cleave_prompt"

    .line 6
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "clobber_prompt"

    .line 7
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
