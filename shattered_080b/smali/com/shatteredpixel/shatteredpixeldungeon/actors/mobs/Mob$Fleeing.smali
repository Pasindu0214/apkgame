.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;
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
    name = "Fleeing"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iput-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 2
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    invoke-virtual {v0, v3, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p2

    invoke-static {p2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p2

    add-int/2addr p2, v2

    const/4 v0, 0x6

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 5
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 6
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getFurther(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result v0

    div-float/2addr v3, v0

    .line 8
    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 10
    invoke-virtual {p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->moveSprite(II)Z

    return v2

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 12
    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 13
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;->nowhereToRun()V

    return v2
.end method

.method public nowhereToRun()V
    .locals 0

    return-void
.end method
