.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;
.source "DriedRose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wandering"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 5

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 2
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    if-nez v0, :cond_0

    .line 3
    iput-boolean p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 4
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showAlert()V

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 6
    iput-boolean p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->alerted:Z

    .line 7
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 8
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 9
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 10
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    goto :goto_1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 13
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 14
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 16
    :goto_0
    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 17
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 18
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 19
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getCloser(I)Z

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 21
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    if-ne v4, v3, :cond_2

    .line 22
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 23
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 24
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 26
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 27
    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getCloser(I)Z

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->speed()F

    move-result v3

    div-float/2addr v2, v3

    .line 29
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 30
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 31
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    if-ne v2, v3, :cond_3

    .line 32
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->moveSprite(II)Z

    return p2

    .line 35
    :cond_4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 36
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    :goto_1
    return p2
.end method
