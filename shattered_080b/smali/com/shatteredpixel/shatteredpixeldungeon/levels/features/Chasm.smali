.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;
.super Ljava/lang/Object;
.source "Chasm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$FallBleed;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$Falling;
    }
.end annotation


# static fields
.field public static jumpConfirmed:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static heroFall(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;->jumpConfirmed:Z

    .line 2
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "snd_falling.mp3"

    .line 3
    invoke-virtual {v1, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 6
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 8
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 10
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->FALL:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 11
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    if-eqz v2, :cond_3

    .line 12
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->room(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 13
    instance-of p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/WeakFloorRoom;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fallIntoPit:Z

    goto :goto_0

    .line 14
    :cond_3
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fallIntoPit:Z

    .line 15
    :goto_0
    const-class p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {p0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    goto :goto_1

    .line 16
    :cond_4
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :goto_1
    return-void
.end method

.method public static mobFall(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v3, 0x41000000    # 8.0f

    sub-float/2addr v2, v3

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    const/4 v0, 0x2

    .line 6
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, -0x3bcc0000    # -720.0f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x44340000    # 720.0f

    :goto_0
    iput v0, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite$2;

    new-instance v3, Lcom/watabou/utils/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lcom/watabou/utils/PointF;-><init>(FF)V

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;Lcom/watabou/noosa/Visual;Lcom/watabou/utils/PointF;F)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
