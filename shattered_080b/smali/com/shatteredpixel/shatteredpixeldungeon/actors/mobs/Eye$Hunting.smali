.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye$Hunting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;
.source "Eye.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hunting"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;

    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;->beamCharged:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;

    iput-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 3
    iget-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;->doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->act(ZZ)Z

    move-result p1

    return p1
.end method
