.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;
.super Ljava/lang/Thread;
.source "InterlevelScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 3
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    .line 4
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->fixTime()V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 6
    :pswitch_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->holdAllies(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 8
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v0, v1

    .line 9
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    if-ne v3, v0, :cond_1

    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    .line 10
    :cond_1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v0, v2

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->newLevel()Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object v0

    .line 12
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V

    goto :goto_0

    .line 13
    :cond_2
    throw v3

    .line 14
    :pswitch_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->access$800(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V

    goto :goto_0

    .line 15
    :pswitch_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    if-eqz v0, :cond_3

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->holdAllies(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V

    .line 18
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->returnDepth:I

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 19
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->loadLevel(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object v0

    .line 20
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->returnPos:I

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V

    goto :goto_0

    .line 21
    :cond_3
    throw v3

    .line 22
    :pswitch_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->access$600(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V

    goto :goto_0

    .line 23
    :pswitch_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->access$500(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V

    goto :goto_0

    .line 24
    :pswitch_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    if-eqz v0, :cond_4

    .line 25
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->holdAllies(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 26
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V

    .line 27
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v0, v2

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 28
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->loadLevel(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object v0

    .line 29
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V

    goto :goto_0

    .line 30
    :cond_4
    throw v3

    .line 31
    :pswitch_6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->access$300(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V

    .line 32
    :goto_0
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_5

    .line 33
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "snd_boss.mp3"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/audio/Sample;->load([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->error:Ljava/lang/Exception;

    .line 35
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    .line 36
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    .line 37
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;->STATIC:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    if-ne v1, v2, :cond_6

    .line 38
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->error:Ljava/lang/Exception;

    if-nez v1, :cond_6

    .line 39
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;->FADE_OUT:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    .line 40
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    .line 41
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    .line 42
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
