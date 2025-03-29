.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "BeaconOfReturning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->onCast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;

.field public final synthetic val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 10

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->setBeacon(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz p1, :cond_a

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "preventing"

    .line 5
    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 7
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v3, v3, v1

    add-int/2addr v4, v3

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v3, v4, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "creatures"

    .line 9
    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ne v1, v3, :cond_7

    .line 11
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnPos:I

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 12
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 13
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v4, v5, :cond_4

    .line 14
    sget-object v4, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget v7, v4, v6

    .line 15
    iget v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v8, v7

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v9, v7

    aget-boolean v7, v8, v9

    if-eqz v7, :cond_5

    .line 16
    iput v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 17
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 18
    :cond_6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 19
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 20
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    goto :goto_3

    .line 21
    :cond_7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 22
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 23
    :cond_8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 25
    :cond_9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RETURN:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 26
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->returnDepth:I

    .line 27
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnPos:I

    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->returnPos:I

    .line 28
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v1}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    .line 29
    :goto_3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    .line 30
    throw p1

    :cond_b
    :goto_4
    return-void
.end method
