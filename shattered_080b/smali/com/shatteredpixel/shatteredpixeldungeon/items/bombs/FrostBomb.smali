.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/FrostBomb;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;
.source "FrostBomb.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->FROST_BOMB:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public explode(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 4
    aget v0, v0, p1

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/16 v0, 0xa

    .line 5
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 6
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x32

    return v0
.end method
