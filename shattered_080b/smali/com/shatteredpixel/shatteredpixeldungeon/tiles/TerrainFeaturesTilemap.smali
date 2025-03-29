.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;
.source "TerrainFeaturesTilemap.java"


# static fields
.field public static instance:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;


# instance fields
.field public plants:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;",
            ">;"
        }
    .end annotation
.end field

.field public traps:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/watabou/utils/SparseArray;Lcom/watabou/utils/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/watabou/utils/SparseArray<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;",
            ">;",
            "Lcom/watabou/utils/SparseArray<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "terrain_features.png"

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->plants:Lcom/watabou/utils/SparseArray;

    .line 3
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->traps:Lcom/watabou/utils/SparseArray;

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 5
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map([II)V

    .line 7
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    return-void
.end method

.method public static tile(II)Lcom/watabou/noosa/Image;
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    iget-object v1, v0, Lcom/watabou/noosa/Tilemap;->tileset:Lcom/watabou/noosa/TextureFilm;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->getTileVisual(IIZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Lcom/watabou/noosa/Image;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    iget-object v0, v0, Lcom/watabou/noosa/Tilemap;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 3
    invoke-direct {p1}, Lcom/watabou/noosa/Image;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    return-object p1
.end method


# virtual methods
.method public getTileVisual(IIZ)I
    .locals 6

    .line 1
    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p3, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p3

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    .line 2
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p2, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 3
    iget-boolean p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    if-nez p2, :cond_0

    return v0

    .line 4
    :cond_0
    iget-boolean p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    if-eqz p2, :cond_1

    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p2

    return p1

    .line 5
    :cond_2
    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p3, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 6
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p2, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->image:I

    add-int/lit8 p1, p1, 0x70

    return p1

    .line 7
    :cond_3
    sget p3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v1, p3, -0x1

    div-int/lit8 v1, v1, 0x5

    const/16 v2, 0x15

    if-ne p3, v2, :cond_4

    .line 8
    sget-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    instance-of p3, p3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastShopLevel;

    if-eqz p3, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    const/16 p3, 0xf

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/16 v4, 0x32

    const/4 v5, 0x1

    if-ne p2, p3, :cond_6

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v2

    .line 9
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->tileVariance:[B

    aget-byte p1, p2, p1

    if-lt p1, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    add-int/2addr v1, v3

    return v1

    :cond_6
    const/16 p3, 0x1e

    if-ne p2, p3, :cond_8

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0xb

    .line 10
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->tileVariance:[B

    aget-byte p1, p2, p1

    if-lt p1, v4, :cond_7

    const/4 v3, 0x1

    :cond_7
    add-int/2addr v1, v3

    return v1

    :cond_8
    const/4 p3, 0x2

    if-ne p2, p3, :cond_a

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0xd

    .line 11
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->tileVariance:[B

    aget-byte p1, p2, p1

    if-lt p1, v4, :cond_9

    const/4 v3, 0x1

    :cond_9
    add-int/2addr v1, v3

    return v1

    :cond_a
    if-ne p2, v2, :cond_c

    .line 12
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->tileVariance:[B

    aget-byte p1, p2, p1

    if-lt p1, v4, :cond_b

    const/4 v3, 0x1

    :cond_b
    add-int/lit16 v3, v3, 0x2d0

    return v3

    :cond_c
    return v0
.end method
