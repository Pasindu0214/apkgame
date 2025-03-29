.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;
.super Ljava/lang/Object;
.source "DungeonTileSheet.java"


# static fields
.field public static final ALCHEMY_POT_OVERHANG:I

.field public static final BARRICADE_OVERHANG:I

.field public static final CHASM:I

.field public static final CHASM_FLOOR:I

.field public static final CHASM_FLOOR_SP:I

.field public static final CHASM_WALL:I

.field public static final CHASM_WATER:I

.field public static final DOOR_OVERHANG:I

.field public static final DOOR_OVERHANG_OPEN:I

.field public static final DOOR_SIDEWAYS:I

.field public static final DOOR_SIDEWAYS_LOCKED:I

.field public static final DOOR_SIDEWAYS_OVERHANG:I

.field public static final DOOR_SIDEWAYS_OVERHANG_LOCKED:I

.field public static final DOOR_SIDEWAYS_OVERHANG_OPEN:I

.field public static final EMBERS:I

.field public static final EMBERS_ALT:I

.field public static final EMPTY_WELL:I

.field public static final ENTRANCE:I

.field public static final EXIT:I

.field public static final FLAT_ALCHEMY_POT:I

.field public static final FLAT_BARRICADE:I

.field public static final FLAT_BOOKSHELF:I

.field public static final FLAT_BOOKSHELF_ALT:I

.field public static final FLAT_DOOR:I

.field public static final FLAT_DOORS:I

.field public static final FLAT_DOOR_LOCKED:I

.field public static final FLAT_DOOR_OPEN:I

.field public static final FLAT_FURROWED_ALT:I

.field public static final FLAT_FURROWED_GRASS:I

.field public static final FLAT_HIGH_GRASS:I

.field public static final FLAT_HIGH_GRASS_ALT:I

.field public static final FLAT_OTHER:I

.field public static final FLAT_SIGN:I

.field public static final FLAT_STATUE:I

.field public static final FLAT_STATUE_SP:I

.field public static final FLAT_WALL:I

.field public static final FLAT_WALLS:I

.field public static final FLAT_WALL_ALT:I

.field public static final FLAT_WALL_DECO:I

.field public static final FLAT_WALL_DECO_ALT:I

.field public static final FLOOR:I

.field public static final FLOOR_ALT_1:I

.field public static final FLOOR_ALT_2:I

.field public static final FLOOR_DECO:I

.field public static final FLOOR_DECO_ALT:I

.field public static final FLOOR_SP:I

.field public static final FLOOR_SP_ALT:I

.field public static final FURROWED_OVERHANG:I

.field public static final FURROWED_OVERHANG_ALT:I

.field public static final GRASS:I

.field public static final GRASS_ALT:I

.field public static final GROUND:I

.field public static final HIGH_GRASS_OVERHANG:I

.field public static final HIGH_GRASS_OVERHANG_ALT:I

.field public static final LOCKED_EXIT:I

.field public static final PEDESTAL:I

.field public static final RAISED_ALCHEMY_POT:I

.field public static final RAISED_BARRICADE:I

.field public static final RAISED_DOOR:I

.field public static final RAISED_DOORS:I

.field public static final RAISED_DOOR_LOCKED:I

.field public static final RAISED_DOOR_OPEN:I

.field public static final RAISED_DOOR_SIDEWAYS:I

.field public static final RAISED_FURROWED_ALT:I

.field public static final RAISED_FURROWED_GRASS:I

.field public static final RAISED_HIGH_GRASS:I

.field public static final RAISED_HIGH_GRASS_ALT:I

.field public static final RAISED_OTHER:I

.field public static final RAISED_SIGN:I

.field public static final RAISED_STATUE:I

.field public static final RAISED_STATUE_SP:I

.field public static final RAISED_WALL:I

.field public static final RAISED_WALLS:I

.field public static final RAISED_WALL_ALT:I

.field public static final RAISED_WALL_BOOKSHELF:I

.field public static final RAISED_WALL_BOOKSHELF_ALT:I

.field public static final RAISED_WALL_DECO:I

.field public static final RAISED_WALL_DECO_ALT:I

.field public static final RAISED_WALL_DOOR:I

.field public static final STATUE_OVERHANG:I

.field public static final UNLOCKED_EXIT:I

.field public static final WALLS_INTERNAL:I

.field public static final WALLS_OVERHANG:I

.field public static final WALL_INTERNAL:I

.field public static final WALL_INTERNAL_WOODEN:I

.field public static final WALL_OVERHANG:I

.field public static final WALL_OVERHANG_WOODEN:I

.field public static final WATER:I

.field public static final WELL:I

.field public static chasmStitcheable:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static commonAltVisuals:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static directFlatVisuals:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static directVisuals:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static doorTiles:[I

.field public static rareAltVisuals:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static tileVariance:[B

.field public static wallStitcheable:[I

.field public static waterStitcheable:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v1

    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->GROUND:I

    add-int/lit8 v2, v1, 0x0

    .line 2
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR:I

    add-int/lit8 v2, v1, 0x1

    .line 3
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_DECO:I

    add-int/lit8 v2, v1, 0x2

    .line 4
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->GRASS:I

    add-int/lit8 v2, v1, 0x3

    .line 5
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->EMBERS:I

    add-int/lit8 v2, v1, 0x4

    .line 6
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_SP:I

    add-int/lit8 v2, v1, 0x6

    .line 7
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_ALT_1:I

    add-int/lit8 v2, v1, 0x7

    .line 8
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_DECO_ALT:I

    add-int/lit8 v2, v1, 0x8

    .line 9
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->GRASS_ALT:I

    add-int/lit8 v2, v1, 0x9

    .line 10
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->EMBERS_ALT:I

    add-int/lit8 v2, v1, 0xa

    .line 11
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_SP_ALT:I

    add-int/lit8 v2, v1, 0xc

    .line 12
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_ALT_2:I

    add-int/lit8 v2, v1, 0x10

    .line 13
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->ENTRANCE:I

    add-int/lit8 v2, v1, 0x11

    .line 14
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->EXIT:I

    add-int/lit8 v2, v1, 0x12

    .line 15
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WELL:I

    add-int/lit8 v2, v1, 0x13

    .line 16
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->EMPTY_WELL:I

    const/16 v2, 0x14

    add-int/2addr v1, v2

    .line 17
    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->PEDESTAL:I

    const/4 v1, 0x3

    .line 18
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v3

    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WATER:I

    .line 19
    new-instance v3, Ljava/util/HashSet;

    new-array v4, v2, [Ljava/lang/Integer;

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x7

    .line 21
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v1

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v4, v9

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v4, v11

    const/16 v10, 0xd

    .line 22
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v4, v13

    const/16 v12, 0xf

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v6

    const/16 v14, 0x1e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v7

    const/16 v14, 0x11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v4, v8

    const/16 v15, 0x12

    .line 23
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v7, 0xa

    aput-object v16, v4, v7

    const/16 v6, 0x13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v1, 0xb

    aput-object v17, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v1, 0xc

    aput-object v17, v4, v1

    const/16 v1, 0x17

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v10

    const/16 v18, 0x18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v10, 0xe

    aput-object v18, v4, v10

    const/16 v18, 0x19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v12

    const/16 v18, 0x1c

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v10, 0x10

    aput-object v18, v4, v10

    .line 25
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v6

    .line 26
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->waterStitcheable:Ljava/util/HashSet;

    .line 27
    invoke-static {v0, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v3

    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM:I

    add-int/lit8 v4, v3, 0x1

    .line 28
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    add-int/lit8 v4, v3, 0x2

    .line 29
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR_SP:I

    add-int/lit8 v4, v3, 0x3

    .line 30
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_WALL:I

    add-int/2addr v3, v9

    .line 31
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_WATER:I

    .line 32
    new-instance v3, Lcom/watabou/utils/SparseArray;

    invoke-direct {v3}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    .line 33
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1b

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR_SP:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_FLOOR_SP:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_WALL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_WALL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_WALL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_WALL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_WALL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_WALL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM_WATER:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1d

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v3

    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALLS:I

    add-int/lit8 v4, v3, 0x0

    .line 60
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL:I

    add-int/lit8 v4, v3, 0x1

    .line 61
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL_DECO:I

    add-int/lit8 v4, v3, 0x2

    .line 62
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_BOOKSHELF:I

    add-int/lit8 v4, v3, 0x4

    .line 63
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL_ALT:I

    add-int/lit8 v4, v3, 0x5

    .line 64
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL_DECO_ALT:I

    add-int/2addr v3, v13

    .line 65
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_BOOKSHELF_ALT:I

    .line 66
    invoke-static {v0, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v3

    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_DOORS:I

    add-int/lit8 v4, v3, 0x0

    .line 67
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_DOOR:I

    add-int/lit8 v4, v3, 0x1

    .line 68
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_DOOR_OPEN:I

    add-int/lit8 v4, v3, 0x2

    .line 69
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_DOOR_LOCKED:I

    add-int/lit8 v4, v3, 0x3

    .line 70
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->UNLOCKED_EXIT:I

    add-int/2addr v3, v9

    .line 71
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->LOCKED_EXIT:I

    const/4 v3, 0x7

    .line 72
    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v4

    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_OTHER:I

    add-int/lit8 v3, v4, 0x0

    .line 73
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_SIGN:I

    add-int/lit8 v3, v4, 0x1

    .line 74
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_STATUE:I

    add-int/lit8 v3, v4, 0x2

    .line 75
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_STATUE_SP:I

    add-int/lit8 v3, v4, 0x3

    .line 76
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_ALCHEMY_POT:I

    add-int/lit8 v3, v4, 0x4

    .line 77
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_BARRICADE:I

    add-int/lit8 v3, v4, 0x5

    .line 78
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_HIGH_GRASS:I

    add-int/lit8 v3, v4, 0x6

    .line 79
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_FURROWED_GRASS:I

    add-int/lit8 v3, v4, 0x8

    .line 80
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_HIGH_GRASS_ALT:I

    add-int/2addr v4, v8

    .line 81
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_FURROWED_ALT:I

    const/16 v3, 0x8

    .line 82
    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v4

    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALLS:I

    add-int/lit8 v3, v4, 0x0

    .line 83
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL:I

    add-int/lit8 v3, v4, 0x4

    .line 84
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_DECO:I

    add-int/lit8 v3, v4, 0x8

    .line 85
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_DOOR:I

    add-int/lit8 v3, v4, 0xc

    .line 86
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_BOOKSHELF:I

    add-int/lit8 v3, v4, 0x10

    .line 87
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_ALT:I

    add-int/lit8 v3, v4, 0x14

    .line 88
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_DECO_ALT:I

    add-int/lit8 v4, v4, 0x1c

    .line 89
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_BOOKSHELF_ALT:I

    const/4 v3, 0x7

    new-array v4, v3, [I

    .line 90
    fill-array-data v4, :array_0

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable:[I

    .line 91
    invoke-static {v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v3

    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_DOORS:I

    add-int/lit8 v4, v3, 0x0

    .line 92
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_DOOR:I

    add-int/lit8 v4, v3, 0x1

    .line 93
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_DOOR_OPEN:I

    add-int/lit8 v4, v3, 0x2

    .line 94
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_DOOR_LOCKED:I

    const/4 v4, 0x3

    add-int/2addr v3, v4

    .line 95
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_DOOR_SIDEWAYS:I

    new-array v3, v4, [I

    .line 96
    fill-array-data v3, :array_1

    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->doorTiles:[I

    const/16 v3, 0xb

    .line 97
    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v4

    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_OTHER:I

    add-int/lit8 v3, v4, 0x0

    .line 98
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_SIGN:I

    add-int/lit8 v3, v4, 0x1

    .line 99
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_STATUE:I

    add-int/lit8 v3, v4, 0x2

    .line 100
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_STATUE_SP:I

    add-int/lit8 v3, v4, 0x3

    .line 101
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_ALCHEMY_POT:I

    add-int/lit8 v3, v4, 0x4

    .line 102
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_BARRICADE:I

    add-int/lit8 v3, v4, 0x5

    .line 103
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_HIGH_GRASS:I

    add-int/lit8 v3, v4, 0x6

    .line 104
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_FURROWED_GRASS:I

    add-int/lit8 v3, v4, 0x9

    .line 105
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_HIGH_GRASS_ALT:I

    add-int/2addr v4, v7

    .line 106
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_FURROWED_ALT:I

    const/16 v3, 0xc

    .line 107
    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v4

    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALLS_INTERNAL:I

    add-int/lit8 v3, v4, 0x0

    .line 108
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALL_INTERNAL:I

    add-int/2addr v4, v10

    .line 109
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALL_INTERNAL_WOODEN:I

    const/16 v3, 0xe

    .line 110
    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->xy(II)I

    move-result v4

    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALLS_OVERHANG:I

    add-int/lit8 v3, v4, 0x0

    .line 111
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALL_OVERHANG:I

    add-int/lit8 v5, v4, 0x4

    .line 112
    sput v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS_OVERHANG:I

    add-int/lit8 v5, v4, 0x8

    .line 113
    sput v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS_OVERHANG_OPEN:I

    add-int/lit8 v5, v4, 0xc

    .line 114
    sput v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS_OVERHANG_LOCKED:I

    add-int/2addr v4, v10

    .line 115
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALL_OVERHANG_WOODEN:I

    add-int/lit8 v4, v3, 0x15

    .line 116
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_OVERHANG:I

    add-int/lit8 v4, v3, 0x16

    .line 117
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_OVERHANG_OPEN:I

    add-int/lit8 v4, v3, 0x17

    .line 118
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS:I

    add-int/lit8 v4, v3, 0x18

    .line 119
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS_LOCKED:I

    add-int/lit8 v4, v3, 0x20

    .line 120
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->STATUE_OVERHANG:I

    add-int/lit8 v4, v3, 0x21

    .line 121
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->ALCHEMY_POT_OVERHANG:I

    add-int/lit8 v4, v3, 0x22

    .line 122
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->BARRICADE_OVERHANG:I

    add-int/lit8 v4, v3, 0x23

    .line 123
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->HIGH_GRASS_OVERHANG:I

    add-int/lit8 v4, v3, 0x24

    .line 124
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FURROWED_OVERHANG:I

    add-int/lit8 v4, v3, 0x26

    .line 125
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->HIGH_GRASS_OVERHANG_ALT:I

    add-int/lit8 v3, v3, 0x27

    .line 126
    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FURROWED_OVERHANG_ALT:I

    .line 127
    new-instance v3, Lcom/watabou/utils/SparseArray;

    invoke-direct {v3}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    .line 128
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->GRASS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->EMPTY_WELL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->ENTRANCE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->EXIT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->EMBERS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->PEDESTAL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_SP:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v3, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v3, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v3, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_DECO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->LOCKED_EXIT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v0, v3, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->UNLOCKED_EXIT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v0, v3, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WELL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    .line 144
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_DOOR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_DOOR_OPEN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_DOOR_LOCKED:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL_DECO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_BOOKSHELF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1b

    invoke-virtual {v0, v3, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_SIGN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_STATUE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_STATUE_SP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_ALCHEMY_POT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_BARRICADE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_HIGH_GRASS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_FURROWED_GRASS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, v9}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    .line 159
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_ALT_1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->GRASS:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->GRASS_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->EMBERS:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->EMBERS_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL_DECO:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_WALL_DECO_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_SP:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_SP_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_DECO:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_DECO_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_BOOKSHELF:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_BOOKSHELF_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_HIGH_GRASS:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_HIGH_GRASS_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_FURROWED_GRASS:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLAT_FURROWED_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_DECO:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_DECO_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_BOOKSHELF:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_BOOKSHELF_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_HIGH_GRASS:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_HIGH_GRASS_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_FURROWED_GRASS:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_FURROWED_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->HIGH_GRASS_OVERHANG:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->HIGH_GRASS_OVERHANG_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FURROWED_OVERHANG:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FURROWED_OVERHANG_ALT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->rareAltVisuals:Lcom/watabou/utils/SparseArray;

    .line 177
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FLOOR_ALT_2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0xc
        0x10
        0x15
        0x16
        0x1b
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x5
        0xa
        0x6
    .end array-data
.end method

.method public static doorTile(I)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->doorTiles:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static floorTile(I)Z
    .locals 2

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/watabou/utils/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM:I

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getVisualWithAlts(II)I
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->tileVariance:[B

    aget-byte v0, v0, p1

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->rareAltVisuals:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p0}, La/b/a/r/g;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->rareAltVisuals:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->tileVariance:[B

    aget-byte p1, v0, p1

    const/16 v0, 0x32

    if-lt p1, v0, :cond_1

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p0}, La/b/a/r/g;->containsKey(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->commonAltVisuals:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_1
    return p0
.end method

.method public static setupVariance(IJ)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/watabou/utils/Random;->pushGenerator(J)V

    .line 2
    new-array p0, p0, [B

    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->tileVariance:[B

    const/4 p0, 0x0

    .line 3
    :goto_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->tileVariance:[B

    array-length p2, p1

    if-ge p0, p2, :cond_0

    const/16 p2, 0x64

    .line 4
    invoke-static {p2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p2

    int-to-byte p2, p2

    aput-byte p2, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/watabou/utils/Random;->popGenerator()V

    return-void
.end method

.method public static wallStitcheable(I)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static xy(II)I
    .locals 2

    add-int/lit8 p0, p0, -0x1

    const/4 v0, -0x1

    const/16 v1, 0x10

    invoke-static {p1, v0, v1, p0}, La/a/a/a/a;->a(IIII)I

    move-result p0

    return p0
.end method
