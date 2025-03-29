.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BlazingTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "BlazingTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 3
    aget v2, v2, v1

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_2

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v3, v3, v1

    const/4 v4, 0x5

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v1, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 7
    :goto_2
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v2, v3, v5, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_burning.mp3"

    .line 10
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method
