.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "NewCityBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel$CustomWallVisuals;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel$CustomGroundVisuals;
    }
.end annotation


# static fields
.field public static WIDTH:I = 0xf

.field public static final arena:Lcom/watabou/utils/Rect;

.field public static final bottomDoor:I

.field public static final end:Lcom/watabou/utils/Rect;

.field public static final entry:Lcom/watabou/utils/Rect;

.field public static final pedestals:[I

.field public static final throne:I

.field public static final topDoor:I


# instance fields
.field public impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/watabou/utils/Rect;

    const/16 v1, 0xe

    const/4 v2, 0x1

    const/16 v3, 0x25

    const/16 v4, 0x30

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->entry:Lcom/watabou/utils/Rect;

    .line 2
    new-instance v0, Lcom/watabou/utils/Rect;

    const/16 v3, 0x19

    const/16 v4, 0x26

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->arena:Lcom/watabou/utils/Rect;

    .line 3
    new-instance v0, Lcom/watabou/utils/Rect;

    const/16 v1, 0xf

    const/4 v3, 0x0

    const/16 v4, 0x16

    invoke-direct {v0, v3, v3, v1, v4}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->arena:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x7

    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->bottomDoor:I

    .line 5
    iget v1, v0, Lcom/watabou/utils/Rect;->top:I

    mul-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x7

    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->topDoor:I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 6
    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->pedestals:[I

    .line 7
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->center()Lcom/watabou/utils/Point;

    move-result-object v0

    .line 8
    iget v1, v0, Lcom/watabou/utils/Point;->x:I

    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->WIDTH:I

    mul-int v5, v0, v4

    add-int/2addr v5, v1

    sput v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->throne:I

    .line 9
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->pedestals:[I

    add-int/lit8 v6, v1, -0x3

    const/4 v7, -0x3

    invoke-static {v0, v7, v4, v6}, La/a/a/a/a;->a(IIII)I

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v3, v1, 0x3

    const/4 v6, -0x3

    invoke-static {v0, v6, v4, v3}, La/a/a/a/a;->a(IIII)I

    move-result v3

    .line 10
    aput v3, v5, v2

    add-int/lit8 v2, v1, 0x3

    const/4 v3, 0x3

    invoke-static {v0, v3, v4, v2}, La/a/a/a/a;->a(IIII)I

    move-result v2

    const/4 v3, 0x2

    .line 11
    aput v2, v5, v3

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v4, v1}, La/a/a/a/a;->a(IIII)I

    move-result v0

    .line 12
    aput v0, v5, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    const v0, 0x4b6636

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xf2f2f2

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

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;->addCityVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public build()Z
    .locals 17

    move-object/from16 v6, p0

    const/16 v0, 0xf

    const/16 v1, 0x30

    .line 1
    invoke-virtual {v6, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->entry:Lcom/watabou/utils/Rect;

    const/4 v7, 0x4

    invoke-static {v6, v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->entry:Lcom/watabou/utils/Rect;

    const/4 v8, 0x1

    const/16 v1, 0x1b

    invoke-static {v6, v0, v8, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->entry:Lcom/watabou/utils/Rect;

    const/4 v9, 0x2

    invoke-static {v6, v0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->entry:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    const/4 v10, 0x3

    add-int/2addr v1, v10

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->entry:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v7

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x3

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->entry:Lcom/watabou/utils/Rect;

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->center()Lcom/watabou/utils/Point;

    move-result-object v11

    .line 8
    iget v0, v11, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v1, v0, -0x1

    iget v0, v11, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v2, v0, -0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x19

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 9
    iget v0, v11, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v1, v0, -0x1

    iget v2, v11, Lcom/watabou/utils/Point;->y:I

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 10
    iget v0, v11, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v1, v0, -0x1

    iget v0, v11, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v2, v0, 0x2

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 11
    iget v1, v11, Lcom/watabou/utils/Point;->x:I

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->entry:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/16 v5, 0xe

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 12
    iget v0, v11, Lcom/watabou/utils/Point;->x:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->entry:Lcom/watabou/utils/Rect;

    iget v1, v1, Lcom/watabou/utils/Rect;->top:I

    .line 13
    iget v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    .line 14
    iget-object v3, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v12, 0x5

    aput v12, v3, v1

    .line 15
    iget v1, v11, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v1, v9

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    iput v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/4 v11, 0x7

    .line 16
    aput v11, v3, v1

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->arena:Lcom/watabou/utils/Rect;

    invoke-static {v6, v0, v8, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fillDiamond(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->arena:Lcom/watabou/utils/Rect;

    const/16 v1, 0xe

    invoke-static {v6, v0, v12, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->arena:Lcom/watabou/utils/Rect;

    const/16 v1, 0x17

    const/4 v13, 0x6

    invoke-static {v6, v0, v13, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->arena:Lcom/watabou/utils/Rect;

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->center()Lcom/watabou/utils/Point;

    move-result-object v0

    .line 21
    iget v1, v0, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v2, v1, -0x3

    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    .line 22
    iget v3, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v3

    add-int/2addr v2, v0

    .line 23
    iget-object v4, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v14, 0x19

    aput v14, v4, v2

    add-int/lit8 v2, v1, -0x4

    add-int/2addr v2, v0

    .line 24
    aput v14, v4, v2

    add-int/lit8 v2, v1, 0x3

    add-int/2addr v2, v0

    .line 25
    aput v14, v4, v2

    add-int/lit8 v2, v1, 0x4

    add-int/2addr v0, v2

    .line 26
    aput v14, v4, v0

    .line 27
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->pedestals:[I

    const/4 v15, 0x0

    aget v2, v0, v15

    const/16 v5, 0xb

    .line 28
    aput v5, v4, v2

    .line 29
    aget v2, v0, v8

    .line 30
    aput v5, v4, v2

    .line 31
    aget v2, v0, v9

    .line 32
    aput v5, v4, v2

    .line 33
    aget v0, v0, v10

    .line 34
    aput v5, v4, v0

    .line 35
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->arena:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    mul-int v0, v0, v3

    add-int/2addr v0, v1

    const/16 v1, 0xa

    .line 36
    aput v1, v4, v0

    .line 37
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    invoke-static {v6, v0, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 38
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v7

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x5

    const/16 v4, 0x12

    const/16 v16, 0x1

    const/4 v3, 0x7

    move-object/from16 v0, p0

    const/16 v15, 0xb

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 39
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v7

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x5

    const/4 v4, 0x4

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 40
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v11

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v0, v0, 0x8

    .line 41
    iget v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    .line 42
    iput v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 43
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;-><init>()V

    iput-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    .line 44
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v2, v1, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v3, v2, 0x3

    iget v1, v1, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v4, v1, 0xc

    add-int/2addr v2, v15

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    .line 45
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v0

    invoke-static {v6, v0, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 46
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v2, v1, 0x2

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    .line 47
    iget v3, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v3

    add-int/2addr v2, v0

    .line 48
    iget-object v3, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v14, v3, v2

    add-int/2addr v1, v13

    add-int/2addr v0, v1

    .line 49
    aput v14, v3, v0

    .line 50
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v12

    iget v0, v0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 51
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v13

    iget v0, v0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 52
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CityPainter;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CityPainter;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;->paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)Z

    .line 53
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v8

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 54
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v8

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x7

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 55
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v8

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0xc

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 56
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v8

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 57
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v10

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x2

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 58
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v10

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x7

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 59
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v10

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0xc

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 60
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->end:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v10

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v0, 0x11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 61
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel$CustomGroundVisuals;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel$CustomGroundVisuals;-><init>()V

    .line 62
    iget v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 63
    iget v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->setRect(IIII)V

    .line 65
    iget-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel$CustomWallVisuals;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel$CustomWallVisuals;-><init>()V

    .line 67
    iget v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 68
    iget v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    .line 69
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->setRect(IIII)V

    .line 70
    iget-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v8
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
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

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
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->bottomDoor:I

    aget v2, v0, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->topDoor:I

    aget v0, v0, v2

    if-ne v0, v3, :cond_0

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->seal()V

    :cond_0
    return-void
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 3
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 4
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

    const-string v0, "imp_shop"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->topDoor:I

    aget v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 5
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed:Z

    if-eqz v0, :cond_0

    .line 6
    iget-boolean p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->impSpawned:Z

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->spawnShop()V

    :cond_0
    return-void
.end method

.method public seal()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 3
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 5
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 6
    :cond_2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;-><init>()V

    .line 7
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->arena:Lcom/watabou/utils/Rect;

    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 9
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 10
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->notice()V

    .line 12
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 13
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/watabou/noosa/tweeners/AlphaTweener;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v0, v3, v4}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    :cond_3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->bottomDoor:I

    const/16 v1, 0xa

    .line 15
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 16
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->bottomDoor:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    return-void
.end method

.method public final spawnShop()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->itemCount()I

    move-result v0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    mul-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    iget v1, v0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/watabou/utils/Rect;->bottom:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    .line 4
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->impSpawned:Z

    .line 5
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;->placeShopkeeper(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->placeItems(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->impShop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ImpShopRoom;

    const-string v1, "imp_shop"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    return-void
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "statue_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "sp_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "deco_desc"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "exit_desc"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "entrance_desc"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;

    const/16 v1, 0xf

    const/4 v2, 0x0

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

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_name"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_city.png"

    return-object v0
.end method

.method public unseal()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->bottomDoor:I

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 4
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->bottomDoor:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 5
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->topDoor:I

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 7
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->topDoor:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 8
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->spawnShop()V

    .line 10
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    return-void
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water3.png"

    return-object v0
.end method
