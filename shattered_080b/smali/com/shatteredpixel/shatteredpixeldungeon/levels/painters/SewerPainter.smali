.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/SewerPainter;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;
.source "SewerPainter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;-><init>()V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)V
    .locals 7
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

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xc

    const/16 v4, 0x1d

    const/4 v5, 0x4

    if-ge v2, v0, :cond_1

    .line 4
    aget v6, p2, v2

    if-ne v6, v5, :cond_0

    add-int v6, v2, v0

    aget v6, p2, v6

    if-ne v6, v4, :cond_0

    .line 5
    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 6
    aput v3, p2, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    sub-int v6, p1, v0

    if-ge v2, v6, :cond_3

    .line 7
    aget v6, p2, v2

    if-ne v6, v5, :cond_2

    sub-int v6, v2, v0

    aget v6, p2, v6

    if-ne v6, v5, :cond_2

    add-int v6, v2, v0

    aget v6, p2, v6

    if-ne v6, v4, :cond_2

    const/4 v6, 0x2

    .line 8
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v6

    if-nez v6, :cond_2

    .line 9
    aput v3, p2, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p1, v0, 0x1

    :goto_2
    const/4 v2, 0x1

    add-int/lit8 v3, v6, -0x1

    if-ge p1, v3, :cond_9

    .line 10
    aget v3, p2, p1

    if-ne v3, v2, :cond_8

    add-int/lit8 v3, p1, 0x1

    .line 11
    aget v3, p2, v3

    if-ne v3, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    add-int/lit8 v4, p1, -0x1

    aget v4, p2, v4

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    add-int/2addr v3, v4

    add-int v4, p1, v0

    aget v4, p2, v4

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    add-int/2addr v3, v4

    sub-int v4, p1, v0

    aget v4, p2, v4

    if-ne v4, v5, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v3, v2

    const/16 v2, 0x10

    .line 12
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    mul-int v3, v3, v3

    if-ge v2, v3, :cond_8

    const/16 v2, 0x14

    .line 13
    aput v2, p2, p1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method
