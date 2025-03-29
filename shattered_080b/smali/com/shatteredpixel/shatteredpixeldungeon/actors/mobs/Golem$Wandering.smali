.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;
.source "Golem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wandering"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public continueWandering()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 3
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v2, v4, :cond_0

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result v2

    div-float/2addr v3, v2

    .line 5
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->moveSprite(II)Z

    return v5

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    if-eq v1, v4, :cond_2

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v1, v2, :cond_2

    .line 9
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->selfTeleCooldown:I

    if-gtz v1, :cond_2

    .line 10
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GolemSprite;

    .line 11
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GolemSprite;->teleParticles:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_1

    iput-boolean v5, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    .line 13
    iput-boolean v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->teleporting:Z

    const/high16 v1, 0x40000000    # 2.0f

    .line 14
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    .line 17
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    :goto_0
    return v5
.end method
