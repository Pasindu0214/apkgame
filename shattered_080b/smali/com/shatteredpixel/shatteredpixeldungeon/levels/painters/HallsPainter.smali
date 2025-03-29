.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/HallsPainter;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;
.source "HallsPainter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;-><init>()V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    add-int/lit8 v1, v0, 0x1

    :goto_0
    sub-int v2, p1, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 4
    aget v2, p2, v1

    const/16 v4, 0x14

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_1
    sget-object v6, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 6
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    sget-object v7, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    aget v7, v7, v2

    add-int/2addr v7, v1

    aget v7, p2, v7

    aget v6, v6, v7

    and-int/2addr v6, v3

    if-lez v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x50

    .line 7
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-ge v2, v5, :cond_3

    .line 8
    aput v4, p2, v1

    goto :goto_2

    .line 9
    :cond_2
    aget v2, p2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, -0x1

    aget v2, p2, v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    sub-int v2, v1, v0

    aget v2, p2, v2

    if-eq v2, v3, :cond_3

    .line 10
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 11
    aput v3, p2, v1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
