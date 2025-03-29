.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfPassage;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;
.source "ScrollOfPassage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;-><init>()V

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doRead()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->setKnown()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "no_tele"

    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 6
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 8
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RETURN:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 9
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0x2

    rem-int/lit8 v0, v0, 0x5

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->returnDepth:I

    const/4 v0, -0x1

    .line 10
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->returnPos:I

    .line 11
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method
