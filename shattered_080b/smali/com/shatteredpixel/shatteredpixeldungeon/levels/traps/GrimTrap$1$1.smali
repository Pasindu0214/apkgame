.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;
.super Ljava/lang/Object;
.source "GrimTrap.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->act()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;

.field public final synthetic val$toRemove:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;->val$toRemove:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$finalDmg:I

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$trap:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

    invoke-virtual {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_cursed.mp3"

    .line 4
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ondeath"

    .line 7
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_burning.mp3"

    .line 9
    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;->val$toRemove:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method
