.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/FrostTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "FrostTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const v0, -0x4d2901

    const/4 v2, 0x5

    .line 2
    invoke-static {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(III)V

    .line 3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_shatter.mp3"

    .line 4
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 v0, 0x0

    .line 6
    :goto_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 7
    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    const/16 v1, 0x14

    .line 8
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
