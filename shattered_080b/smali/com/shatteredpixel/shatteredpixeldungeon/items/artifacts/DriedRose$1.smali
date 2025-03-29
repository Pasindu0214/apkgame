.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;
.super Ljava/lang/Object;
.source "DriedRose.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/Integer;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_ghost.mp3"

    .line 2
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eq v0, v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v0, v5, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 7
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 8
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    if-eqz v0, :cond_2

    array-length v0, v0

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 9
    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-eq v0, v5, :cond_3

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 11
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 12
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 13
    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 14
    new-array v5, v5, [Z

    iput-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 15
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 16
    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 17
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    invoke-virtual {v0, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v0, v5, :cond_4

    .line 19
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 20
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const-string v0, "directed_follow_"

    .line 21
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v2, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 23
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 24
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->aggro(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 25
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 26
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 27
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, -0x1

    .line 28
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    .line 29
    iput-boolean v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v0, v1, :cond_5

    .line 31
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 32
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const-string v1, "directed_attack_"

    .line 33
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v2, v1}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 35
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->aggro(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 37
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 38
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->access$500(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;I)V

    .line 40
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 41
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 42
    iput-boolean v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    :cond_5
    :goto_0
    return-void

    .line 43
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 44
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const-string v5, "directed_position_"

    .line 45
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v2, v5}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 47
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 48
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->aggro(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 49
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 50
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 51
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 53
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    .line 54
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 55
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 56
    iput-boolean v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 5

    const-string v0, "\""

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "direct_prompt"

    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
