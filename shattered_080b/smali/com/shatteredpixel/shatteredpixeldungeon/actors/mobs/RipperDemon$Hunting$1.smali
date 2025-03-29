.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;
.super Ljava/lang/Object;
.source "RipperDemon.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->act(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 2
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v2, v3, :cond_0

    .line 5
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;

    const/high16 v3, 0x3f400000    # 0.75f

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->damageRoll()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-virtual {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;->set(F)V

    .line 6
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    .line 7
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "snd_hit.mp3"

    .line 8
    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 9
    :cond_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v2, :cond_3

    aget v5, v0, v3

    if-eq v4, v1, :cond_1

    .line 10
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 11
    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    add-int/2addr v7, v5

    .line 12
    invoke-virtual {v6, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v6

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v7, v8, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 13
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    add-int/2addr v6, v5

    .line 14
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 15
    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    add-int/2addr v7, v5

    .line 16
    aget-boolean v5, v6, v7

    if-eqz v5, :cond_2

    move v4, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eq v4, v1, :cond_4

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 18
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 19
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    .line 20
    invoke-direct {v0, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 22
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    .line 23
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    goto :goto_1

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 25
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    .line 26
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 28
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 29
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v1

    int-to-float v1, v1

    .line 30
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapCooldown:F

    .line 31
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    .line 32
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 33
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method
