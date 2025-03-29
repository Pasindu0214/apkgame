.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;
.source "OldTengu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hunting"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iput-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isCharmedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;->doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz p2, :cond_2

    .line 7
    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    const/4 p1, 0x1

    return p1
.end method
