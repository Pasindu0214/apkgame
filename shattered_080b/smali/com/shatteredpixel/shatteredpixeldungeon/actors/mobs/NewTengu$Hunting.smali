.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;
.source "NewTengu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hunting"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iput-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isCharmedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->canUseAbility()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->useAbility()Z

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez p2, :cond_3

    .line 9
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->canUseAbility()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->useAbility()Z

    move-result p1

    return p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    const/4 p1, 0x1

    return p1
.end method
