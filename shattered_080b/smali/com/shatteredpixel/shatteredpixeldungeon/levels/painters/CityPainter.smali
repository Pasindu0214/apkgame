.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CityPainter;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;
.source "CityPainter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;-><init>()V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)V
    .locals 4
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

    const/4 v1, 0x0

    :goto_0
    sub-int v2, p1, v0

    if-ge v1, v2, :cond_2

    .line 4
    aget v2, p2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x14

    .line 5
    aput v2, p2, v1

    goto :goto_1

    .line 6
    :cond_0
    aget v2, p2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    add-int v2, v1, v0

    aget v2, p2, v2

    .line 7
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    rsub-int/lit8 v2, v2, 0x15

    .line 8
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xc

    .line 9
    aput v2, p2, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
