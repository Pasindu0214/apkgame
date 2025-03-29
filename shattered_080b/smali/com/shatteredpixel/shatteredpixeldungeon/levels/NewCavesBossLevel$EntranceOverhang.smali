.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$EntranceOverhang;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "NewCavesBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntranceOverhang"
.end annotation


# static fields
.field public static entryWay:[S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x37

    new-array v0, v0, [S

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$EntranceOverhang;->entryWay:[S

    return-void

    :array_0
    .array-data 2
        0x0s
        0x7s
        0x7s
        0x7s
        0x4s
        0x0s
        0xfs
        0xfs
        0xfs
        0x4s
        -0x1s
        0x17s
        0x17s
        0x17s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x6s
        -0x1s
        0xes
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x6s
        -0x1s
        0xes
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x6s
        -0x1s
        0xes
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/caves_boss.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v1, v1, v2

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    rem-int v6, v3, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    if-ne v6, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 4
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$EntranceOverhang;->entryWay:[S

    add-int/lit8 v7, v4, 0x1

    aget-short v4, v6, v4

    aput v4, v2, v3

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v4, v7, 0x1

    .line 5
    aget-short v7, v6, v7

    aput v7, v2, v5

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    .line 6
    aget-short v4, v6, v4

    aput v4, v2, v3

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v4, v7, 0x1

    .line 7
    aget-short v7, v6, v7

    aput v7, v2, v5

    add-int/lit8 v5, v4, 0x1

    .line 8
    aget-short v4, v6, v4

    aput v4, v2, v3

    move v4, v5

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    .line 9
    aput v5, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v0
.end method
