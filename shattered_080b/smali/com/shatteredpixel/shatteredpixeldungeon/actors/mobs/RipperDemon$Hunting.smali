.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;
.source "RipperDemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hunting"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 10

    .line 1
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 2
    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 3
    iget-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p2, v3, p2

    if-nez p2, :cond_1

    aget-boolean p2, v3, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 5
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    .line 6
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->jump(IILcom/watabou/utils/Callback;)V

    return v2

    .line 7
    :cond_2
    iput-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isCharmedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz p1, :cond_4

    .line 10
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    goto :goto_1

    .line 11
    :cond_4
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez v0, :cond_5

    .line 12
    iget-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 13
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    iput p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    return v1

    .line 14
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 15
    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapCooldown:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_c

    if-eqz p1, :cond_c

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v4, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_c

    .line 17
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 18
    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->lastEnemyPos:I

    if-eq p2, v0, :cond_8

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 19
    :goto_2
    sget-object v4, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    array-length v6, v4

    if-ge p2, v6, :cond_7

    .line 20
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 21
    iget v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->lastEnemyPos:I

    .line 22
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v8, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    aget v8, v8, p2

    add-int/2addr v6, v8

    invoke-virtual {v4, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v4

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 23
    iget v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->lastEnemyPos:I

    .line 24
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v9, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    aget v9, v9, v0

    add-int/2addr v7, v9

    invoke-virtual {v6, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    move v0, p2

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 25
    :cond_7
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    aget v0, v4, v0

    add-int/2addr v0, p2

    .line 26
    :cond_8
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v6, 0x5

    invoke-direct {p2, v4, v0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    .line 27
    iget-object v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_9

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v0, v7, :cond_9

    .line 28
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {p2, v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    move v0, v7

    .line 29
    :cond_9
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_c

    .line 30
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 31
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    .line 32
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result p2

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v5, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result p2

    .line 33
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 34
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, p1, v0

    if-nez v0, :cond_a

    .line 35
    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    .line 36
    aget-boolean p1, p1, p2

    if-eqz p1, :cond_b

    .line 37
    :cond_a
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "leap"

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object p2, p2, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TargetedCell;

    .line 39
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    const/high16 v2, 0xff0000

    .line 40
    invoke-direct {v0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TargetedCell;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 41
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;

    .line 42
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;->leapPos:I

    .line 43
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 44
    iget-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->prep:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 45
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    :cond_b
    return v1

    .line 46
    :cond_c
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 47
    iget v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    if-eq v2, v3, :cond_d

    invoke-virtual {p2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getCloser(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 48
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result p2

    div-float/2addr v5, p2

    .line 49
    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 50
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 51
    invoke-virtual {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->moveSprite(II)Z

    return v1

    .line 52
    :cond_d
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    .line 53
    invoke-virtual {p2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    if-nez p1, :cond_e

    .line 54
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showLost()V

    .line 55
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/RipperDemon;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 56
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p2

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    :cond_e
    return v1
.end method
