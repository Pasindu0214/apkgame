.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CorrosionTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "CorrosionTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x50

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    .line 2
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;->setStrength(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    return-void
.end method
