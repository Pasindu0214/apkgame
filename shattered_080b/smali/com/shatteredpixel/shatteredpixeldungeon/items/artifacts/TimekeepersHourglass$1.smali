.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "TimekeepersHourglass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_teleport.mp3"

    const v3, 0xffffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    const-string v6, "onstasis"

    .line 2
    invoke-static {v0, v6, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    .line 4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 5
    invoke-virtual {p1, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;)V

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    goto :goto_0

    :cond_0
    if-ne p1, v4, :cond_1

    new-array p1, v5, [Ljava/lang/Object;

    const-string v6, "onfreeze"

    .line 8
    invoke-static {v0, v6, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    .line 10
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 11
    invoke-virtual {p1, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;)V

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 13
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    .line 14
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;->processTime(F)V

    :cond_1
    :goto_0
    return-void
.end method
