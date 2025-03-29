.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "NewCavesBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$EntranceOverhang;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$CityEntrance;
    }
.end annotation


# static fields
.field public static WIDTH:I = 0x21

.field public static corner1:[S

.field public static corner2:[S

.field public static corner3:[S

.field public static corner4:[S

.field public static cornerVariants:[[S

.field public static entrance1:[S

.field public static entrance2:[S

.field public static entrance3:[S

.field public static entrance4:[S

.field public static entranceVariants:[[S

.field public static gate:Lcom/watabou/utils/Rect;

.field public static mainArena:Lcom/watabou/utils/Rect;

.field public static pylonPositions:[I


# instance fields
.field public customArenaVisuals:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/watabou/utils/Rect;

    const/16 v1, 0x25

    const/16 v2, 0x1c

    const/16 v3, 0xe

    const/4 v4, 0x5

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->mainArena:Lcom/watabou/utils/Rect;

    .line 2
    new-instance v0, Lcom/watabou/utils/Rect;

    const/16 v4, 0xd

    const/16 v5, 0x13

    invoke-direct {v0, v3, v4, v5, v3}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->gate:Lcom/watabou/utils/Rect;

    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 3
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->WIDTH:I

    mul-int/lit8 v5, v4, 0xd

    add-int/2addr v5, v0

    const/4 v6, 0x0

    aput v5, v3, v6

    mul-int/lit8 v5, v4, 0xd

    add-int/2addr v5, v2

    const/4 v7, 0x1

    aput v5, v3, v7

    mul-int/lit8 v5, v4, 0x25

    add-int/2addr v5, v0

    const/4 v8, 0x2

    aput v5, v3, v8

    mul-int/lit8 v4, v4, 0x25

    add-int/2addr v4, v2

    const/4 v1, 0x3

    aput v4, v3, v1

    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->pylonPositions:[I

    const/16 v2, 0x40

    new-array v3, v2, [S

    .line 4
    fill-array-data v3, :array_0

    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->entrance1:[S

    new-array v4, v2, [S

    .line 5
    fill-array-data v4, :array_1

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->entrance2:[S

    new-array v5, v2, [S

    .line 6
    fill-array-data v5, :array_2

    sput-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->entrance3:[S

    new-array v2, v2, [S

    .line 7
    fill-array-data v2, :array_3

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->entrance4:[S

    new-array v9, v0, [[S

    aput-object v3, v9, v6

    aput-object v4, v9, v7

    aput-object v5, v9, v8

    aput-object v2, v9, v1

    .line 8
    sput-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->entranceVariants:[[S

    const/16 v2, 0x64

    new-array v3, v2, [S

    .line 9
    fill-array-data v3, :array_4

    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->corner1:[S

    new-array v4, v2, [S

    .line 10
    fill-array-data v4, :array_5

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->corner2:[S

    new-array v5, v2, [S

    .line 11
    fill-array-data v5, :array_6

    sput-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->corner3:[S

    new-array v2, v2, [S

    .line 12
    fill-array-data v2, :array_7

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->corner4:[S

    new-array v0, v0, [[S

    aput-object v3, v0, v6

    aput-object v4, v0, v7

    aput-object v5, v0, v8

    aput-object v2, v0, v1

    .line 13
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->cornerVariants:[[S

    return-void

    nop

    :array_0
    .array-data 2
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
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x1s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x1s
        0x1s
        0x1s
        -0x1s
        -0x1s
        0x1s
        0x1s
        0x1s
        0x4s
        0x4s
        0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x1s
        0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x1s
        0x1s
        0x1s
    .end array-data

    :array_1
    .array-data 2
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
        0x1s
        0x1s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x1s
        0x4s
        0x4s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        -0x1s
        -0x1s
        0x1s
        0x4s
        0x1s
        0x4s
        0x4s
        0x1s
        -0x1s
        -0x1s
        0x1s
        0x4s
        0x1s
        0x4s
        0x1s
        0x1s
        -0x1s
        -0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
    .end array-data

    :array_2
    .array-data 2
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
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x1s
        0x1s
    .end array-data

    :array_3
    .array-data 2
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
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        0x1s
        -0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
    .end array-data

    :array_4
    .array-data 2
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x1s
        0x1s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x4s
        0x4s
        0x1s
        0x1s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x4s
        0x4s
        0x4s
        0x1s
        0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        -0x1s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x1s
        0x1s
        0x4s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x1s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x1s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
    .end array-data

    :array_5
    .array-data 2
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x1s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x1s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
    .end array-data

    :array_6
    .array-data 2
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x1s
        0x1s
        0x1s
        0x1s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x4s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        0x4s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x1s
        0x1s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
    .end array-data

    :array_7
    .array-data 2
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x1s
        0x1s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0xes
        0xes
        0xes
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x4s
        0x4s
        0x4s
        0x1s
        0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x4s
        0x4s
        0x4s
        0x4s
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
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    const v0, 0x534f3e

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xb9d661

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    return-void
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;->addCavesVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public build()Z
    .locals 14

    const/16 v0, 0x21

    const/16 v1, 0x2a

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    .line 2
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v2, p0

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/16 v11, 0x15

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, p0

    .line 4
    invoke-static/range {v8 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/16 v3, 0xd

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v7, 0xc

    const/16 v8, 0x9

    const/16 v9, 0x9

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p0

    .line 6
    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/4 v3, 0x7

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v7, 0xe

    const/4 v8, 0x3

    const/4 v9, 0x5

    const/16 v10, 0xa

    const/4 v11, 0x1

    .line 8
    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/4 v2, 0x2

    const/4 v4, 0x3

    const/16 v5, 0xe

    const/16 v1, 0xf

    const/4 v3, 0x3

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/4 v8, 0x5

    const/16 v7, 0xf

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/16 v11, 0x19

    .line 10
    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/4 v2, 0x7

    const/4 v4, 0x1

    const/16 v5, 0x19

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v8, 0x9

    .line 12
    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v1, 0x10

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/16 v5, 0xe

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/16 v11, 0x8

    .line 14
    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 15
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    .line 16
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->gate:Lcom/watabou/utils/Rect;

    const/16 v2, 0x17

    invoke-static {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->mainArena:Lcom/watabou/utils/Rect;

    .line 19
    iget v3, v0, Lcom/watabou/utils/Rect;->left:I

    iget v4, v0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->height()I

    move-result v6

    const/4 v7, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fillEllipse(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 20
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v2, v2, -0xe

    const/4 v3, 0x1

    const v4, 0x3e19999a    # 0.15f

    invoke-static {v0, v2, v4, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object v0

    .line 21
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v2, v2, 0xe

    .line 22
    :goto_0
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    const/16 v5, 0x8

    if-ge v2, v4, :cond_2

    .line 23
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v6, v4, v2

    if-ne v6, v3, :cond_1

    .line 24
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v6, v6, 0xe

    sub-int v6, v2, v6

    .line 25
    aget-boolean v6, v0, v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1d

    .line 26
    aput v5, v4, v2

    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 28
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v5, 0x13

    aput v5, v4, v2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v2, v0, 0x19

    add-int/lit8 v2, v2, 0x10

    .line 30
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    add-int/lit8 v4, v2, -0x7

    const/4 v6, 0x7

    mul-int/lit8 v0, v0, 0x7

    sub-int/2addr v4, v0

    add-int/lit8 v7, v2, 0x7

    sub-int v8, v7, v0

    add-int/2addr v7, v0

    sub-int/2addr v2, v6

    add-int/2addr v2, v0

    .line 31
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->entranceVariants:[[S

    invoke-static {v0}, Lcom/watabou/utils/Random;->oneOf([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 32
    :goto_2
    array-length v11, v0

    const/4 v12, -0x1

    if-ge v10, v11, :cond_5

    .line 33
    rem-int/lit8 v11, v10, 0x8

    if-nez v11, :cond_3

    if-eqz v10, :cond_3

    .line 34
    iget v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/lit8 v13, v11, -0x8

    add-int/2addr v4, v13

    add-int/2addr v11, v5

    add-int/2addr v8, v11

    sub-int/2addr v7, v13

    sub-int/2addr v2, v11

    .line 35
    :cond_3
    aget-short v11, v0, v10

    if-eq v11, v12, :cond_4

    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget-short v12, v0, v10

    aput v12, v11, v2

    aput v12, v11, v7

    aput v12, v11, v8

    aput v12, v11, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 36
    :cond_5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 37
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v6, v2, v0

    .line 38
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v2, v0, 0xb

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v2, v2, 0x1e

    mul-int/lit8 v0, v0, 0x27

    add-int/lit8 v5, v0, 0x1e

    add-int/2addr v0, v1

    .line 39
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->cornerVariants:[[S

    invoke-static {v1}, Lcom/watabou/utils/Random;->oneOf([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    const/4 v6, 0x0

    .line 40
    :goto_3
    array-length v7, v1

    if-ge v6, v7, :cond_8

    .line 41
    rem-int/lit8 v7, v6, 0xa

    if-nez v7, :cond_6

    if-eqz v6, :cond_6

    .line 42
    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/lit8 v8, v7, -0xa

    add-int/2addr v4, v8

    add-int/lit8 v7, v7, 0xa

    add-int/2addr v2, v7

    sub-int/2addr v5, v8

    sub-int/2addr v0, v7

    .line 43
    :cond_6
    aget-short v7, v1, v6

    if-eq v7, v12, :cond_7

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget-short v8, v1, v6

    aput v8, v7, v0

    aput v8, v7, v5

    aput v8, v7, v2

    aput v8, v7, v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 44
    :cond_8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$CityEntrance;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$CityEntrance;-><init>()V

    .line 45
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const/16 v2, 0xb

    .line 46
    invoke-virtual {v0, v9, v9, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->setRect(IIII)V

    .line 47
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$EntranceOverhang;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$EntranceOverhang;-><init>()V

    .line 49
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 50
    invoke-virtual {v0, v9, v9, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->setRect(IIII)V

    .line 51
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->customArenaVisuals:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;

    const/16 v1, 0xc

    .line 53
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const/16 v4, 0x1b

    .line 54
    invoke-virtual {v0, v9, v1, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->setRect(IIII)V

    .line 55
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CavesPainter;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CavesPainter;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)Z

    return v3
.end method

.method public createItems()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    :cond_1
    return-void
.end method

.method public createMobs()V
    .locals 0

    return-void
.end method

.method public occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->gate:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-virtual {v1, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->seal()V

    :cond_0
    return-void
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    aget v0, v0, v1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 4
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_0

    return v0
.end method

.method public respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;

    .line 3
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->customArenaVisuals:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public seal()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const v2, 0x3d8f5c29    # 0.07f

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 7
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const/high16 v1, 0x40400000    # 3.0f

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Camera;->shake(FF)V

    .line 8
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_rocks.mp3"

    .line 9
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;-><init>()V

    .line 11
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 12
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->mainArena:Lcom/watabou/utils/Rect;

    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Point;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 13
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v2, v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    .line 14
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->pylonPositions:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 16
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;-><init>()V

    .line 17
    iput v3, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 18
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCellToWater(ZI)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->pylonPositions:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 2
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v5, p2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setCellToWater(ZI)Z

    move-result p1

    return p1
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6

    const/16 v2, 0x8

    if-eq p1, v2, :cond_5

    const/16 v2, 0xc

    if-eq p1, v2, :cond_4

    const/16 v2, 0xf

    if-eq p1, v2, :cond_3

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "water_desc"

    invoke-static {p1, v2, v1, v0}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "bookshelf_desc"

    .line 4
    invoke-static {v1, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "statue_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "high_grass_desc"

    .line 6
    invoke-static {v1, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "wall_deco_desc"

    .line 7
    invoke-static {v1, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "exit_desc"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "entrance_desc"

    .line 9
    invoke-static {v1, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0xf

    if-eq p1, v1, :cond_2

    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "water_name"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "statue_name"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_name"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "grass_name"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_caves.png"

    return-object v0
.end method

.method public unseal()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->fullyClear()V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0xe

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    add-int v2, v0, v1

    .line 6
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 7
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 8
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BlastParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v2, v3, v5, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap()V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->customArenaVisuals:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;->updateState()V

    .line 12
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    return-void
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water2.png"

    return-object v0
.end method
