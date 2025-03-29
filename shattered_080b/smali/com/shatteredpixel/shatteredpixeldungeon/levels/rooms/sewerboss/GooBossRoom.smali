.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "GooBossRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom$GooNest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method

.method public static randomGooRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/DiamondGooRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/DiamondGooRoom;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/ThickPillarsGooRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/ThickPillarsGooRoom;-><init>()V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/ThinPillarsGooRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/ThinPillarsGooRoom;-><init>()V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/WalledGooRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/WalledGooRoom;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setupGooNest(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom$GooNest;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom$GooNest;-><init>()V

    .line 2
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x2

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->setRect(IIII)V

    .line 3
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sizeCatProbs()[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
