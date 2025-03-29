.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;
.super Ljava/lang/Object;
.source "Mob.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hunting"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iput-boolean p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isCharmedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 4
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez v2, :cond_2

    .line 7
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 8
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    iput p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    return v0

    .line 9
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 10
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v3, v4, :cond_3

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getCloser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result p2

    div-float/2addr v5, p2

    .line 12
    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 13
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 14
    invoke-virtual {p1, v2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->moveSprite(II)Z

    return v0

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v3, 0x0

    .line 16
    iput-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 17
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    iput-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 18
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_4

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->act(ZZ)Z

    move-result p1

    return p1

    .line 20
    :cond_4
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iput-object v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 21
    invoke-virtual {p2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    if-nez p1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showLost()V

    .line 23
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 24
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p2

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    :cond_5
    return v0
.end method
