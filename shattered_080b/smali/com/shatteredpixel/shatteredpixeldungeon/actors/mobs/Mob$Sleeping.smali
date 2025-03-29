.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;
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
    name = "Sleeping"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 5

    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->distance(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->stealth()F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iput-boolean p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 3
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->notice()V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 5
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    const/16 p1, 0x10

    .line 6
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_0

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v2, v3, :cond_0

    .line 9
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->beckon(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 11
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 13
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    :goto_1
    return p2
.end method
