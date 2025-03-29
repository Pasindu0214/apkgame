.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;
.super Ljava/lang/Object;
.source "PoisonDartTrap.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->act()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

.field public final synthetic val$toRemove:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->val$toRemove:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$trap:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;

    invoke-virtual {v2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v1, v2, :cond_0

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$trap:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;->poisonAmount()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;->set(F)V

    .line 6
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "snd_hit.mp3"

    invoke-virtual {v1, v4, v3, v3, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->bloodBurstA(Lcom/watabou/utils/PointF;I)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->val$toRemove:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method
