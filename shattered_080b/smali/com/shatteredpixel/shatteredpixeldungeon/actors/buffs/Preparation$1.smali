.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$1;
.super Ljava/lang/Object;
.source "Preparation.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/Integer;)V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 3
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isCharmedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v3

    if-nez v3, :cond_9

    instance-of v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Attack;

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Attack;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    return-void

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    .line 8
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    .line 9
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->getLvl(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object v3

    .line 10
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    invoke-virtual {v4}, [Z->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 12
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->blinkDistance:I

    add-int/2addr v7, v6

    invoke-static {v5, v4, v7}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    .line 13
    sget-object v5, Lcom/watabou/utils/PathFinder;->distance:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    const v6, 0x7fffffff

    const-string v7, "out_of_reach"

    if-ne v5, v6, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, v7, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 16
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eq v6, v8, :cond_4

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aput-boolean v2, v4, v6

    goto :goto_0

    .line 17
    :cond_5
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6, v4}, Lcom/watabou/utils/PathFinder;->find(II[Z)Lcom/watabou/utils/PathFinder$Path;

    move-result-object v4

    const/4 v5, -0x1

    if-nez v4, :cond_6

    const/4 v4, -0x1

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    if-eq v4, v5, :cond_8

    .line 19
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 20
    invoke-virtual {v5, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v5

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->blinkDistance:I

    if-le v5, v3, :cond_7

    goto :goto_2

    .line 21
    :cond_7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 23
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 24
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->checkVisibleMobs()V

    .line 25
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 26
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 27
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 28
    invoke-virtual {p1, v0, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 29
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v2, "snd_puff.mp3"

    .line 30
    invoke-virtual {p1, v2, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 31
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Attack;

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Attack;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 32
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    goto :goto_4

    :cond_8
    :goto_2
    new-array p1, v2, [Ljava/lang/Object;

    .line 33
    invoke-static {v0, v7, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_9
    :goto_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "no_target"

    .line 34
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    .line 2
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    .line 3
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->getLvl(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object v2

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->blinkDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "prompt"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
