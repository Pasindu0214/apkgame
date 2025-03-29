.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;
.source "Necromancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hunting"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 12

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 2
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->storedSkeletonID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 5
    iput v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->storedSkeletonID:I

    .line 6
    instance-of v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    if-eqz v4, :cond_0

    .line 7
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 8
    iput-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoning:Z

    const/16 v4, 0x69

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_6

    .line 10
    iget p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    .line 11
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 13
    sget-object p2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p2, v2

    .line 14
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 15
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    add-int/2addr v8, v3

    .line 16
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 17
    iget v11, v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    add-int/2addr v11, v3

    .line 18
    aget-boolean v9, v9, v11

    if-eqz v9, :cond_1

    iget v9, v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 19
    invoke-virtual {v8, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v8

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v9, v10, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 20
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 21
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    add-int/2addr p1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_2
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq p1, v1, :cond_3

    .line 23
    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    .line 24
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p2

    .line 25
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {v1, p2, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 26
    iput p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 27
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {p2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v6

    .line 29
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 30
    iput-boolean v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->firstSummon:Z

    .line 31
    iput-boolean v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoning:Z

    .line 32
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    invoke-direct {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;-><init>()V

    .line 33
    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 34
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 35
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 36
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    .line 37
    iput p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 38
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 39
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 40
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 41
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 42
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string p2, "snd_bones.mp3"

    .line 43
    invoke-virtual {p1, p2, v5, v5, v5}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 44
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 45
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningEmitter:Lcom/watabou/noosa/particles/Emitter;

    .line 46
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p2

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1, p2, v2, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 48
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    .line 49
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 50
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 51
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 52
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 53
    :cond_5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 54
    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v6

    .line 55
    :cond_6
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    if-eqz v0, :cond_8

    .line 56
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 57
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 59
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 60
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v1, v0, :cond_8

    .line 61
    :cond_7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    const/4 v1, 0x0

    .line 62
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 63
    :cond_8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 64
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    if-nez v1, :cond_d

    .line 65
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    .line 66
    sget-object p1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length p2, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_a

    aget v1, p1, v0

    .line 67
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v3, v1

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v10, v1

    aget-boolean v8, v8, v10

    if-eqz v8, :cond_9

    iget-object v8, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    aget-boolean v8, v8, v10

    if-eqz v8, :cond_9

    iget v8, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 68
    invoke-virtual {v3, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v3

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 69
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    .line 70
    invoke-virtual {v8, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v8

    cmpg-float v3, v3, v8

    if-gez v3, :cond_9

    .line 71
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v8, v1

    .line 72
    iput v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 73
    :cond_a
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 74
    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    if-eq p2, v2, :cond_c

    .line 75
    iput-boolean v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoning:Z

    .line 76
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p2

    .line 77
    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningEmitter:Lcom/watabou/noosa/particles/Emitter;

    .line 78
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 79
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningEmitter:Lcom/watabou/noosa/particles/Emitter;

    .line 80
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p2

    const v0, 0x3e4ccccd    # 0.2f

    .line 81
    invoke-virtual {p1, p2, v0, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 82
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 83
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    .line 84
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 85
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 86
    iget-boolean p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->firstSummon:Z

    if-eqz p2, :cond_b

    goto :goto_3

    :cond_b
    const/high16 v5, 0x40000000    # 2.0f

    .line 87
    :goto_3
    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    goto :goto_4

    .line 88
    :cond_c
    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    :goto_4
    return v6

    .line 89
    :cond_d
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz v1, :cond_16

    .line 90
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    if-eqz v1, :cond_16

    .line 91
    iget-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 92
    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 93
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 94
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 95
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p2, p2, v1

    if-nez p2, :cond_12

    .line 96
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result p1

    if-nez p1, :cond_11

    .line 97
    sget-object p1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_5
    if-ge v0, p2, :cond_f

    aget v3, p1, v0

    .line 98
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v4, v3

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-nez v4, :cond_e

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v9, v3

    aget-boolean v5, v5, v9

    if-eqz v5, :cond_e

    iget-object v5, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    aget-boolean v5, v5, v9

    if-eqz v5, :cond_e

    iget v5, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 99
    invoke-virtual {v4, v5, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v5, v8, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    .line 100
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v1, v3

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    if-eq v1, v2, :cond_11

    .line 101
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 102
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 103
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 104
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    .line 105
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 106
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;->access$1100(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;)V

    .line 107
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz p1, :cond_10

    iget-boolean p2, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz p2, :cond_10

    .line 108
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    return v7

    .line 109
    :cond_10
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->onZapComplete()V

    :cond_11
    return v6

    .line 110
    :cond_12
    iget p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-lt p1, p2, :cond_13

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Adrenaline;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    if-nez p1, :cond_15

    .line 111
    :cond_13
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz p2, :cond_14

    iget-boolean v0, p2, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_14

    .line 112
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 113
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    return v7

    .line 114
    :cond_14
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->onZapComplete()V

    :cond_15
    return v6

    .line 115
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->act(ZZ)Z

    move-result p1

    return p1
.end method
