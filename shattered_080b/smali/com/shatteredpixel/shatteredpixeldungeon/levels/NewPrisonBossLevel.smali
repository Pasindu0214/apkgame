.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "NewPrisonBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$exitVisualWalls;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$exitVisual;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;
    }
.end annotation


# static fields
.field public static C:I

.field public static D:I

.field public static E:I

.field public static W:I

.field public static final arena:Lcom/watabou/utils/Rect;

.field public static e:I

.field public static final endMap:[I

.field public static final endStart:Lcom/watabou/utils/Point;

.field public static final entranceRoom:Lcom/watabou/utils/Rect;

.field public static final levelExit:Lcom/watabou/utils/Point;

.field public static final mazeCellDoors:[Lcom/watabou/utils/Point;

.field public static final mazeCells:[Lcom/watabou/utils/Rect;

.field public static final mazeHallway:Lcom/watabou/utils/Rect;

.field public static final mazeKeySpawns:[Lcom/watabou/utils/Point;

.field public static final mazeTorches:[Lcom/watabou/utils/Point;

.field public static final startCells:[Lcom/watabou/utils/Rect;

.field public static final startHallway:Lcom/watabou/utils/Rect;

.field public static final startTorches:[Lcom/watabou/utils/Point;

.field public static final tenguCell:Lcom/watabou/utils/Rect;

.field public static final tenguCellCenter:Lcom/watabou/utils/Point;

.field public static final tenguCellDoor:Lcom/watabou/utils/Point;


# instance fields
.field public state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

.field public storedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

.field public triggered:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/watabou/utils/Rect;

    const/16 v1, 0xd

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->entranceRoom:Lcom/watabou/utils/Rect;

    .line 2
    new-instance v0, Lcom/watabou/utils/Rect;

    const/16 v4, 0x18

    const/4 v5, 0x7

    const/16 v6, 0xc

    const/16 v7, 0x9

    invoke-direct {v0, v7, v5, v6, v4}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startHallway:Lcom/watabou/utils/Rect;

    const/4 v0, 0x4

    new-array v8, v0, [Lcom/watabou/utils/Rect;

    .line 3
    new-instance v9, Lcom/watabou/utils/Rect;

    const/4 v10, 0x5

    const/16 v11, 0x10

    const/16 v12, 0xa

    invoke-direct {v9, v10, v7, v12, v11}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    const/4 v13, 0x0

    aput-object v9, v8, v13

    new-instance v9, Lcom/watabou/utils/Rect;

    const/16 v14, 0xb

    invoke-direct {v9, v14, v7, v11, v11}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    const/4 v15, 0x1

    aput-object v9, v8, v15

    new-instance v9, Lcom/watabou/utils/Rect;

    const/16 v4, 0x16

    const/16 v6, 0xf

    invoke-direct {v9, v10, v6, v12, v4}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    aput-object v9, v8, v3

    new-instance v9, Lcom/watabou/utils/Rect;

    invoke-direct {v9, v14, v6, v11, v4}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    const/4 v4, 0x3

    aput-object v9, v8, v4

    sput-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startCells:[Lcom/watabou/utils/Rect;

    .line 4
    new-instance v8, Lcom/watabou/utils/Rect;

    const/16 v9, 0x20

    const/16 v14, 0x17

    const/4 v11, 0x6

    invoke-direct {v8, v11, v14, v6, v9}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    .line 5
    new-instance v8, Lcom/watabou/utils/Point;

    const/16 v9, 0x1b

    invoke-direct {v8, v12, v9}, Lcom/watabou/utils/Point;-><init>(II)V

    sput-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCellCenter:Lcom/watabou/utils/Point;

    .line 6
    new-instance v8, Lcom/watabou/utils/Point;

    invoke-direct {v8, v12, v14}, Lcom/watabou/utils/Point;-><init>(II)V

    sput-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCellDoor:Lcom/watabou/utils/Point;

    new-array v8, v5, [Lcom/watabou/utils/Point;

    .line 7
    new-instance v9, Lcom/watabou/utils/Point;

    invoke-direct {v9, v12, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v9, v8, v13

    new-instance v9, Lcom/watabou/utils/Point;

    invoke-direct {v9, v5, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v9, v8, v15

    new-instance v9, Lcom/watabou/utils/Point;

    invoke-direct {v9, v1, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v9, v8, v3

    new-instance v9, Lcom/watabou/utils/Point;

    invoke-direct {v9, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v9, v8, v4

    new-instance v9, Lcom/watabou/utils/Point;

    invoke-direct {v9, v1, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v9, v8, v0

    new-instance v9, Lcom/watabou/utils/Point;

    invoke-direct {v9, v2, v14}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v9, v8, v10

    new-instance v9, Lcom/watabou/utils/Point;

    const/16 v1, 0xc

    invoke-direct {v9, v1, v14}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v9, v8, v11

    sput-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startTorches:[Lcom/watabou/utils/Point;

    .line 8
    new-instance v8, Lcom/watabou/utils/Rect;

    const/16 v9, 0x18

    invoke-direct {v8, v7, v11, v1, v9}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeHallway:Lcom/watabou/utils/Rect;

    new-array v1, v0, [Lcom/watabou/utils/Rect;

    .line 9
    new-instance v8, Lcom/watabou/utils/Rect;

    const/16 v9, 0x10

    invoke-direct {v8, v15, v7, v12, v9}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    aput-object v8, v1, v13

    new-instance v8, Lcom/watabou/utils/Rect;

    const/16 v5, 0x14

    const/16 v2, 0xb

    invoke-direct {v8, v2, v7, v5, v9}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    aput-object v8, v1, v15

    new-instance v5, Lcom/watabou/utils/Rect;

    const/16 v8, 0x16

    invoke-direct {v5, v4, v6, v12, v8}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    aput-object v5, v1, v3

    new-instance v5, Lcom/watabou/utils/Rect;

    const/16 v9, 0x12

    invoke-direct {v5, v2, v6, v9, v8}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    aput-object v5, v1, v4

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    new-array v2, v0, [Lcom/watabou/utils/Point;

    .line 10
    new-instance v5, Lcom/watabou/utils/Point;

    aget-object v8, v1, v13

    iget v8, v8, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v8, v15

    aget-object v1, v1, v13

    iget v1, v1, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v1, v4

    invoke-direct {v5, v8, v1}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v5, v2, v13

    new-instance v1, Lcom/watabou/utils/Point;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v8, v5, v15

    iget v8, v8, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v8, v3

    aget-object v5, v5, v15

    iget v5, v5, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v4

    invoke-direct {v1, v8, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v1, v2, v15

    new-instance v1, Lcom/watabou/utils/Point;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v8, v5, v3

    iget v8, v8, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v8, v15

    aget-object v5, v5, v3

    iget v5, v5, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v4

    invoke-direct {v1, v8, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v1, v2, v3

    new-instance v1, Lcom/watabou/utils/Point;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v8, v5, v4

    iget v8, v8, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v8, v3

    aget-object v5, v5, v4

    iget v5, v5, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v4

    invoke-direct {v1, v8, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v1, v2, v4

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeKeySpawns:[Lcom/watabou/utils/Point;

    new-array v1, v0, [Lcom/watabou/utils/Point;

    .line 11
    new-instance v2, Lcom/watabou/utils/Point;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v8, v5, v13

    iget v8, v8, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v8, v15

    aget-object v5, v5, v13

    iget v5, v5, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v4

    invoke-direct {v2, v8, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/watabou/utils/Point;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v8, v5, v15

    iget v8, v8, Lcom/watabou/utils/Rect;->left:I

    aget-object v5, v5, v15

    iget v5, v5, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v4

    invoke-direct {v2, v8, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/watabou/utils/Point;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v8, v5, v3

    iget v8, v8, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v8, v15

    aget-object v5, v5, v3

    iget v5, v5, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v4

    invoke-direct {v2, v8, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/watabou/utils/Point;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v8, v5, v4

    iget v8, v8, Lcom/watabou/utils/Rect;->left:I

    aget-object v5, v5, v4

    iget v5, v5, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v4

    invoke-direct {v2, v8, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v4

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCellDoors:[Lcom/watabou/utils/Point;

    new-array v1, v11, [Lcom/watabou/utils/Point;

    .line 12
    new-instance v2, Lcom/watabou/utils/Point;

    invoke-direct {v2, v10, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/watabou/utils/Point;

    invoke-direct {v2, v6, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/watabou/utils/Point;

    invoke-direct {v2, v11, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/watabou/utils/Point;

    const/16 v5, 0xe

    invoke-direct {v2, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/watabou/utils/Point;

    const/16 v5, 0x8

    invoke-direct {v2, v5, v14}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v0

    new-instance v2, Lcom/watabou/utils/Point;

    const/16 v5, 0xc

    invoke-direct {v2, v5, v14}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v2, v1, v10

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeTorches:[Lcom/watabou/utils/Point;

    .line 13
    new-instance v1, Lcom/watabou/utils/Rect;

    const/16 v2, 0x10

    invoke-direct {v1, v4, v15, v9, v2}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->arena:Lcom/watabou/utils/Rect;

    .line 14
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->W:I

    .line 15
    sput v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->D:I

    .line 16
    sput v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->e:I

    const/16 v1, 0x8

    .line 17
    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->E:I

    .line 18
    sput v13, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->C:I

    .line 19
    new-instance v1, Lcom/watabou/utils/Point;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startHallway:Lcom/watabou/utils/Rect;

    iget v5, v2, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v5, v3

    iget v2, v2, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v3

    invoke-direct {v1, v5, v2}, Lcom/watabou/utils/Point;-><init>(II)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->endStart:Lcom/watabou/utils/Point;

    .line 20
    new-instance v2, Lcom/watabou/utils/Point;

    iget v5, v1, Lcom/watabou/utils/Point;->x:I

    const/16 v8, 0xc

    add-int/2addr v5, v8

    iget v1, v1, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v1, v11

    invoke-direct {v2, v5, v1}, Lcom/watabou/utils/Point;-><init>(II)V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->levelExit:Lcom/watabou/utils/Point;

    const/16 v1, 0x142

    new-array v1, v1, [I

    .line 21
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->W:I

    aput v2, v1, v13

    aput v2, v1, v15

    aput v2, v1, v3

    aput v2, v1, v4

    aput v2, v1, v0

    aput v2, v1, v10

    aput v2, v1, v11

    const/4 v0, 0x7

    aput v2, v1, v0

    const/16 v0, 0x8

    aput v2, v1, v0

    aput v2, v1, v7

    aput v2, v1, v12

    const/16 v0, 0xb

    aput v2, v1, v0

    const/16 v0, 0xc

    aput v2, v1, v0

    const/16 v0, 0xd

    aput v2, v1, v0

    const/16 v0, 0xe

    aput v2, v1, v0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->e:I

    aput v0, v1, v6

    const/16 v3, 0x10

    aput v0, v1, v3

    const/16 v3, 0x11

    aput v0, v1, v3

    aput v2, v1, v9

    const/16 v3, 0x13

    aput v2, v1, v3

    const/16 v3, 0x14

    aput v2, v1, v3

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v3, 0x16

    aput v2, v1, v3

    aput v2, v1, v14

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v3, 0x19

    aput v2, v1, v3

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/16 v3, 0x1c

    aput v2, v1, v3

    const/16 v3, 0x1d

    aput v0, v1, v3

    const/16 v3, 0x1e

    aput v0, v1, v3

    const/16 v3, 0x1f

    aput v0, v1, v3

    const/16 v3, 0x20

    aput v0, v1, v3

    const/16 v3, 0x21

    aput v0, v1, v3

    const/16 v3, 0x22

    aput v0, v1, v3

    const/16 v3, 0x23

    aput v0, v1, v3

    const/16 v3, 0x24

    aput v0, v1, v3

    const/16 v3, 0x25

    aput v2, v1, v3

    const/16 v3, 0x26

    aput v2, v1, v3

    const/16 v3, 0x27

    aput v2, v1, v3

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v3, 0x29

    aput v2, v1, v3

    const/16 v3, 0x2a

    aput v0, v1, v3

    const/16 v3, 0x2b

    aput v0, v1, v3

    const/16 v3, 0x2c

    aput v0, v1, v3

    const/16 v3, 0x2d

    aput v0, v1, v3

    const/16 v3, 0x2e

    aput v0, v1, v3

    const/16 v3, 0x2f

    aput v0, v1, v3

    const/16 v3, 0x30

    aput v0, v1, v3

    const/16 v3, 0x31

    aput v0, v1, v3

    const/16 v3, 0x32

    aput v0, v1, v3

    const/16 v3, 0x33

    aput v0, v1, v3

    const/16 v3, 0x34

    aput v0, v1, v3

    const/16 v3, 0x35

    aput v0, v1, v3

    const/16 v3, 0x36

    aput v2, v1, v3

    const/16 v3, 0x37

    aput v2, v1, v3

    const/16 v3, 0x38

    aput v0, v1, v3

    const/16 v3, 0x39

    aput v0, v1, v3

    const/16 v3, 0x3a

    aput v0, v1, v3

    const/16 v3, 0x3b

    aput v0, v1, v3

    const/16 v3, 0x3c

    aput v0, v1, v3

    const/16 v3, 0x3d

    aput v0, v1, v3

    const/16 v3, 0x3e

    aput v0, v1, v3

    const/16 v3, 0x3f

    aput v0, v1, v3

    const/16 v3, 0x40

    aput v0, v1, v3

    const/16 v3, 0x41

    aput v0, v1, v3

    const/16 v3, 0x42

    aput v0, v1, v3

    const/16 v3, 0x43

    aput v0, v1, v3

    const/16 v3, 0x44

    aput v0, v1, v3

    const/16 v3, 0x45

    aput v2, v1, v3

    const/16 v3, 0x46

    aput v0, v1, v3

    const/16 v3, 0x47

    aput v0, v1, v3

    const/16 v3, 0x48

    aput v0, v1, v3

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->C:I

    const/16 v4, 0x49

    aput v3, v1, v4

    const/16 v4, 0x4a

    aput v3, v1, v4

    const/16 v4, 0x4b

    aput v3, v1, v4

    const/16 v4, 0x4c

    aput v3, v1, v4

    const/16 v4, 0x4d

    aput v3, v1, v4

    const/16 v4, 0x4e

    aput v3, v1, v4

    const/16 v4, 0x4f

    aput v3, v1, v4

    const/16 v4, 0x50

    aput v3, v1, v4

    const/16 v4, 0x51

    aput v0, v1, v4

    const/16 v4, 0x52

    aput v0, v1, v4

    const/16 v4, 0x53

    aput v2, v1, v4

    const/16 v4, 0x54

    aput v0, v1, v4

    const/16 v4, 0x55

    aput v2, v1, v4

    const/16 v4, 0x56

    aput v3, v1, v4

    const/16 v4, 0x57

    aput v3, v1, v4

    const/16 v4, 0x58

    aput v3, v1, v4

    const/16 v4, 0x59

    aput v3, v1, v4

    const/16 v4, 0x5a

    aput v3, v1, v4

    const/16 v4, 0x5b

    aput v3, v1, v4

    const/16 v4, 0x5c

    aput v3, v1, v4

    const/16 v4, 0x5d

    aput v3, v1, v4

    const/16 v4, 0x5e

    aput v3, v1, v4

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->E:I

    const/16 v5, 0x5f

    aput v4, v1, v5

    const/16 v5, 0x60

    aput v4, v1, v5

    const/16 v5, 0x61

    aput v2, v1, v5

    const/16 v5, 0x62

    aput v0, v1, v5

    const/16 v5, 0x63

    aput v0, v1, v5

    const/16 v5, 0x64

    aput v0, v1, v5

    const/16 v5, 0x65

    aput v3, v1, v5

    const/16 v5, 0x66

    aput v3, v1, v5

    const/16 v5, 0x67

    aput v3, v1, v5

    const/16 v5, 0x68

    aput v3, v1, v5

    const/16 v5, 0x69

    aput v3, v1, v5

    const/16 v5, 0x6a

    aput v3, v1, v5

    const/16 v5, 0x6b

    aput v3, v1, v5

    const/16 v5, 0x6c

    aput v3, v1, v5

    const/16 v5, 0x6d

    aput v4, v1, v5

    const/16 v5, 0x6e

    aput v4, v1, v5

    const/16 v5, 0x6f

    aput v2, v1, v5

    const/16 v5, 0x70

    aput v0, v1, v5

    const/16 v5, 0x71

    aput v0, v1, v5

    const/16 v5, 0x72

    aput v0, v1, v5

    const/16 v5, 0x73

    aput v0, v1, v5

    const/16 v5, 0x74

    aput v0, v1, v5

    const/16 v5, 0x75

    aput v3, v1, v5

    const/16 v5, 0x76

    aput v3, v1, v5

    const/16 v5, 0x77

    aput v3, v1, v5

    const/16 v5, 0x78

    aput v3, v1, v5

    const/16 v5, 0x79

    aput v3, v1, v5

    const/16 v5, 0x7a

    aput v3, v1, v5

    const/16 v5, 0x7b

    aput v4, v1, v5

    const/16 v5, 0x7c

    aput v4, v1, v5

    const/16 v4, 0x7d

    aput v2, v1, v4

    const/16 v4, 0x7e

    aput v0, v1, v4

    const/16 v4, 0x7f

    aput v0, v1, v4

    const/16 v4, 0x80

    aput v0, v1, v4

    const/16 v4, 0x81

    aput v0, v1, v4

    const/16 v4, 0x82

    aput v0, v1, v4

    const/16 v4, 0x83

    aput v0, v1, v4

    const/16 v4, 0x84

    aput v0, v1, v4

    const/16 v4, 0x85

    aput v2, v1, v4

    const/16 v4, 0x86

    aput v2, v1, v4

    const/16 v4, 0x87

    aput v2, v1, v4

    const/16 v4, 0x88

    aput v3, v1, v4

    const/16 v4, 0x89

    aput v3, v1, v4

    const/16 v4, 0x8a

    aput v3, v1, v4

    const/16 v4, 0x8b

    aput v2, v1, v4

    const/16 v4, 0x8c

    aput v2, v1, v4

    const/16 v4, 0x8d

    aput v0, v1, v4

    const/16 v4, 0x8e

    aput v0, v1, v4

    const/16 v4, 0x8f

    aput v0, v1, v4

    const/16 v4, 0x90

    aput v0, v1, v4

    const/16 v4, 0x91

    aput v0, v1, v4

    const/16 v4, 0x92

    aput v2, v1, v4

    const/16 v4, 0x93

    aput v2, v1, v4

    const/16 v4, 0x94

    aput v2, v1, v4

    const/16 v4, 0x95

    aput v2, v1, v4

    const/16 v4, 0x96

    aput v3, v1, v4

    const/16 v4, 0x97

    aput v3, v1, v4

    const/16 v4, 0x98

    aput v3, v1, v4

    const/16 v4, 0x99

    aput v2, v1, v4

    const/16 v4, 0x9a

    aput v2, v1, v4

    const/16 v4, 0x9b

    aput v0, v1, v4

    const/16 v4, 0x9c

    aput v0, v1, v4

    const/16 v4, 0x9d

    aput v0, v1, v4

    const/16 v4, 0x9e

    aput v0, v1, v4

    const/16 v4, 0x9f

    aput v2, v1, v4

    const/16 v4, 0xa0

    aput v2, v1, v4

    const/16 v4, 0xa1

    aput v2, v1, v4

    const/16 v4, 0xa2

    aput v2, v1, v4

    const/16 v4, 0xa3

    aput v2, v1, v4

    const/16 v4, 0xa4

    aput v2, v1, v4

    const/16 v4, 0xa5

    aput v3, v1, v4

    const/16 v4, 0xa6

    aput v3, v1, v4

    const/16 v4, 0xa7

    aput v2, v1, v4

    const/16 v4, 0xa8

    aput v2, v1, v4

    const/16 v4, 0xa9

    aput v2, v1, v4

    const/16 v4, 0xaa

    aput v2, v1, v4

    const/16 v4, 0xab

    aput v2, v1, v4

    const/16 v4, 0xac

    aput v2, v1, v4

    const/16 v4, 0xad

    aput v2, v1, v4

    const/16 v4, 0xae

    aput v2, v1, v4

    const/16 v4, 0xaf

    aput v2, v1, v4

    const/16 v4, 0xb0

    aput v2, v1, v4

    const/16 v4, 0xb1

    aput v2, v1, v4

    const/16 v4, 0xb2

    aput v2, v1, v4

    const/16 v4, 0xb3

    aput v3, v1, v4

    const/16 v4, 0xb4

    aput v3, v1, v4

    const/16 v4, 0xb5

    aput v2, v1, v4

    const/16 v4, 0xb6

    aput v2, v1, v4

    const/16 v4, 0xb7

    aput v2, v1, v4

    const/16 v4, 0xb8

    aput v2, v1, v4

    const/16 v4, 0xb9

    aput v2, v1, v4

    const/16 v4, 0xba

    aput v2, v1, v4

    const/16 v4, 0xbb

    aput v2, v1, v4

    const/16 v4, 0xbc

    aput v2, v1, v4

    const/16 v4, 0xbd

    aput v2, v1, v4

    const/16 v4, 0xbe

    aput v2, v1, v4

    const/16 v4, 0xbf

    aput v2, v1, v4

    const/16 v4, 0xc0

    aput v2, v1, v4

    const/16 v4, 0xc1

    aput v3, v1, v4

    const/16 v4, 0xc2

    aput v3, v1, v4

    const/16 v4, 0xc3

    aput v2, v1, v4

    const/16 v4, 0xc4

    aput v2, v1, v4

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->D:I

    const/16 v5, 0xc5

    aput v4, v1, v5

    const/16 v4, 0xc6

    aput v2, v1, v4

    const/16 v4, 0xc7

    aput v2, v1, v4

    const/16 v4, 0xc8

    aput v2, v1, v4

    const/16 v4, 0xc9

    aput v2, v1, v4

    const/16 v4, 0xca

    aput v2, v1, v4

    const/16 v4, 0xcb

    aput v2, v1, v4

    const/16 v4, 0xcc

    aput v2, v1, v4

    const/16 v4, 0xcd

    aput v2, v1, v4

    const/16 v4, 0xce

    aput v2, v1, v4

    const/16 v4, 0xcf

    aput v3, v1, v4

    const/16 v4, 0xd0

    aput v3, v1, v4

    const/16 v4, 0xd1

    aput v2, v1, v4

    const/16 v4, 0xd2

    aput v0, v1, v4

    const/16 v4, 0xd3

    aput v0, v1, v4

    const/16 v4, 0xd4

    aput v0, v1, v4

    const/16 v4, 0xd5

    aput v2, v1, v4

    const/16 v4, 0xd6

    aput v2, v1, v4

    const/16 v4, 0xd7

    aput v2, v1, v4

    const/16 v4, 0xd8

    aput v2, v1, v4

    const/16 v4, 0xd9

    aput v2, v1, v4

    const/16 v4, 0xda

    aput v2, v1, v4

    const/16 v4, 0xdb

    aput v2, v1, v4

    const/16 v4, 0xdc

    aput v2, v1, v4

    const/16 v4, 0xdd

    aput v3, v1, v4

    const/16 v4, 0xde

    aput v3, v1, v4

    const/16 v4, 0xdf

    aput v2, v1, v4

    const/16 v4, 0xe0

    aput v0, v1, v4

    const/16 v4, 0xe1

    aput v0, v1, v4

    const/16 v4, 0xe2

    aput v0, v1, v4

    const/16 v4, 0xe3

    aput v2, v1, v4

    const/16 v4, 0xe4

    aput v2, v1, v4

    const/16 v4, 0xe5

    aput v2, v1, v4

    const/16 v4, 0xe6

    aput v2, v1, v4

    const/16 v4, 0xe7

    aput v2, v1, v4

    const/16 v4, 0xe8

    aput v2, v1, v4

    const/16 v4, 0xe9

    aput v2, v1, v4

    const/16 v4, 0xea

    aput v2, v1, v4

    const/16 v4, 0xeb

    aput v3, v1, v4

    const/16 v4, 0xec

    aput v3, v1, v4

    const/16 v4, 0xed

    aput v2, v1, v4

    const/16 v4, 0xee

    aput v0, v1, v4

    const/16 v4, 0xef

    aput v0, v1, v4

    const/16 v4, 0xf0

    aput v0, v1, v4

    const/16 v4, 0xf1

    aput v2, v1, v4

    const/16 v4, 0xf2

    aput v2, v1, v4

    const/16 v4, 0xf3

    aput v2, v1, v4

    const/16 v4, 0xf4

    aput v2, v1, v4

    const/16 v4, 0xf5

    aput v2, v1, v4

    const/16 v4, 0xf6

    aput v2, v1, v4

    const/16 v4, 0xf7

    aput v2, v1, v4

    const/16 v4, 0xf8

    aput v2, v1, v4

    const/16 v4, 0xf9

    aput v3, v1, v4

    const/16 v4, 0xfa

    aput v3, v1, v4

    const/16 v4, 0xfb

    aput v2, v1, v4

    const/16 v4, 0xfc

    aput v0, v1, v4

    const/16 v4, 0xfd

    aput v0, v1, v4

    const/16 v4, 0xfe

    aput v0, v1, v4

    const/16 v4, 0xff

    aput v2, v1, v4

    const/16 v4, 0x100

    aput v2, v1, v4

    const/16 v4, 0x101

    aput v2, v1, v4

    const/16 v4, 0x102

    aput v2, v1, v4

    const/16 v4, 0x103

    aput v2, v1, v4

    const/16 v4, 0x104

    aput v2, v1, v4

    const/16 v4, 0x105

    aput v2, v1, v4

    const/16 v4, 0x106

    aput v2, v1, v4

    const/16 v4, 0x107

    aput v3, v1, v4

    const/16 v4, 0x108

    aput v3, v1, v4

    const/16 v4, 0x109

    aput v2, v1, v4

    const/16 v4, 0x10a

    aput v0, v1, v4

    const/16 v4, 0x10b

    aput v0, v1, v4

    const/16 v4, 0x10c

    aput v0, v1, v4

    const/16 v4, 0x10d

    aput v2, v1, v4

    const/16 v4, 0x10e

    aput v2, v1, v4

    const/16 v4, 0x10f

    aput v2, v1, v4

    const/16 v4, 0x110

    aput v2, v1, v4

    const/16 v4, 0x111

    aput v2, v1, v4

    const/16 v4, 0x112

    aput v2, v1, v4

    const/16 v4, 0x113

    aput v2, v1, v4

    const/16 v4, 0x114

    aput v2, v1, v4

    const/16 v4, 0x115

    aput v3, v1, v4

    const/16 v4, 0x116

    aput v3, v1, v4

    const/16 v4, 0x117

    aput v2, v1, v4

    const/16 v4, 0x118

    aput v0, v1, v4

    const/16 v4, 0x119

    aput v0, v1, v4

    const/16 v4, 0x11a

    aput v0, v1, v4

    const/16 v4, 0x11b

    aput v2, v1, v4

    const/16 v4, 0x11c

    aput v2, v1, v4

    const/16 v4, 0x11d

    aput v2, v1, v4

    const/16 v4, 0x11e

    aput v2, v1, v4

    const/16 v4, 0x11f

    aput v2, v1, v4

    const/16 v4, 0x120

    aput v2, v1, v4

    const/16 v4, 0x121

    aput v2, v1, v4

    const/16 v4, 0x122

    aput v2, v1, v4

    const/16 v4, 0x123

    aput v3, v1, v4

    const/16 v4, 0x124

    aput v3, v1, v4

    const/16 v4, 0x125

    aput v2, v1, v4

    const/16 v4, 0x126

    aput v0, v1, v4

    const/16 v4, 0x127

    aput v0, v1, v4

    const/16 v4, 0x128

    aput v0, v1, v4

    const/16 v0, 0x129

    aput v2, v1, v0

    const/16 v0, 0x12a

    aput v2, v1, v0

    const/16 v0, 0x12b

    aput v2, v1, v0

    const/16 v0, 0x12c

    aput v2, v1, v0

    const/16 v0, 0x12d

    aput v2, v1, v0

    const/16 v0, 0x12e

    aput v2, v1, v0

    const/16 v0, 0x12f

    aput v2, v1, v0

    const/16 v0, 0x130

    aput v2, v1, v0

    const/16 v0, 0x131

    aput v3, v1, v0

    const/16 v0, 0x132

    aput v3, v1, v0

    const/16 v0, 0x133

    aput v2, v1, v0

    const/16 v0, 0x134

    aput v2, v1, v0

    const/16 v0, 0x135

    aput v2, v1, v0

    const/16 v0, 0x136

    aput v2, v1, v0

    const/16 v0, 0x137

    aput v2, v1, v0

    const/16 v0, 0x138

    aput v2, v1, v0

    const/16 v0, 0x139

    aput v2, v1, v0

    const/16 v0, 0x13a

    aput v2, v1, v0

    const/16 v0, 0x13b

    aput v2, v1, v0

    const/16 v0, 0x13c

    aput v2, v1, v0

    const/16 v0, 0x13d

    aput v2, v1, v0

    const/16 v0, 0x13e

    aput v2, v1, v0

    const/16 v0, 0x13f

    aput v3, v1, v0

    const/16 v0, 0x140

    aput v3, v1, v0

    const/16 v0, 0x141

    aput v2, v1, v0

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->endMap:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    const v0, 0x6a723d

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0x88924c

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    const/16 v0, 0xc

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 6
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->triggered:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;->addPrisonVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public build()Z
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->setMapStart()V

    const/4 v0, 0x1

    return v0
.end method

.method public final cleanMapState()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->buildFlagMaps()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cleanWalls()V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setFalse([Z)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setFalse([Z)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    .line 6
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->fullyClear()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;->addPrisonVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, La/b/a/r/g;->clear()V

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->resetMap()V

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    return-void
.end method

.method public final clearEntities(Lcom/watabou/utils/Rect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz p1, :cond_1

    .line 2
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/watabou/utils/Rect;->inside(Lcom/watabou/utils/Point;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    if-eqz p1, :cond_4

    .line 6
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->returnPos:I

    .line 7
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/watabou/utils/Rect;->inside(Lcom/watabou/utils/Point;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    :cond_4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 10
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    .line 13
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    if-eq v3, v4, :cond_7

    if-eqz p1, :cond_6

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/watabou/utils/Rect;->inside(Lcom/watabou/utils/Point;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 14
    :cond_6
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 15
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v3, :cond_7

    .line 16
    invoke-virtual {v3}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    if-eqz p1, :cond_a

    .line 18
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/watabou/utils/Rect;->inside(Lcom/watabou/utils/Point;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 19
    :cond_a
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    invoke-virtual {v2, v1}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    return-void
.end method

.method public createItems()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    :cond_0
    return-void
.end method

.method public createMobs()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    return-void
.end method

.method public occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_d

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCellDoors:[Lcom/watabou/utils/Point;

    array-length v4, v3

    if-ge v2, v4, :cond_b

    .line 5
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v3

    if-ne v4, v3, :cond_a

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->triggered:[Z

    aget-boolean v4, v3, v2

    if-nez v4, :cond_a

    const/4 v4, 0x1

    .line 6
    aput-boolean v4, v3, v2

    .line 7
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->allowDiagonals:Z

    .line 8
    :cond_1
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v3, v3, v2

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 9
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const/4 v7, 0x4

    .line 10
    invoke-virtual {v3}, Lcom/watabou/utils/Rect;->width()I

    move-result v8

    invoke-virtual {v3}, Lcom/watabou/utils/Rect;->height()I

    move-result v9

    new-array v10, v1, [I

    aput v9, v10, v4

    aput v8, v10, v0

    const-class v8, Z

    invoke-static {v8, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Z

    const/4 v9, 0x0

    .line 11
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_4

    const/4 v10, 0x0

    .line 12
    :goto_2
    aget-object v11, v8, v0

    array-length v11, v11

    if-ge v10, v11, :cond_3

    .line 13
    iget v11, v3, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v11, v9

    iget v12, v3, Lcom/watabou/utils/Rect;->top:I

    invoke-static {v12, v10, v6, v11}, La/a/a/a/a;->a(IIII)I

    move-result v11

    aget v11, v5, v11

    if-ne v11, v7, :cond_2

    .line 14
    aget-object v11, v8, v9

    aput-boolean v4, v11, v10

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Maze;->generate([[Z)[[Z

    const/4 v3, 0x1

    .line 16
    :goto_3
    array-length v5, v8

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_6

    .line 17
    aget-object v5, v8, v3

    const/4 v6, 0x3

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_5

    .line 18
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v7, v5, v2

    iget v7, v7, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v7, v3

    .line 19
    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 20
    aget-object v5, v5, v2

    iget v5, v5, Lcom/watabou/utils/Rect;->top:I

    invoke-static {v5, v6, v9, v7}, La/a/a/a/a;->a(IIII)I

    move-result v5

    .line 21
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v6, v5}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 22
    :goto_5
    array-length v5, v8

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_9

    const/4 v5, 0x1

    .line 23
    :goto_6
    aget-object v6, v8, v0

    array-length v6, v6

    sub-int/2addr v6, v4

    if-ge v5, v6, :cond_8

    .line 24
    aget-object v6, v8, v3

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_7

    .line 25
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v7, v6, v2

    iget v7, v7, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v7, v3

    .line 26
    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 27
    aget-object v6, v6, v2

    iget v6, v6, Lcom/watabou/utils/Rect;->top:I

    invoke-static {v6, v5, v9, v7}, La/a/a/a/a;->a(IIII)I

    move-result v6

    .line 28
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v7, v6}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/StormCloud;

    .line 29
    invoke-static {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result v7

    if-nez v7, :cond_7

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Regrowth;

    .line 30
    invoke-static {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result v7

    const/16 v9, 0x9

    if-gt v7, v9, :cond_7

    const/16 v7, 0x11

    .line 31
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v6, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 32
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/TenguDartTrap;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/TenguDartTrap;-><init>()V

    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->hide()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {p0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 33
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v6

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v7

    const/4 v9, 0x0

    .line 34
    invoke-virtual {v6, v7, v9, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 35
    :cond_9
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;-><init>()V

    .line 36
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->setCoveringArea(Lcom/watabou/utils/Rect;)V

    const/high16 v4, 0x40000000    # 2.0f

    .line 37
    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->fadeDelay:F

    .line 38
    invoke-static {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;Z)V

    .line 39
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v3, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "snd_teleport.mp3"

    .line 41
    invoke-virtual {v3, v5, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 42
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    aget-object v4, v3, v2

    iget v4, v4, Lcom/watabou/utils/Rect;->left:I

    aget-object v5, v3, v2

    iget v5, v5, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v4, v5

    div-int/2addr v4, v1

    aget-object v5, v3, v2

    iget v5, v5, Lcom/watabou/utils/Rect;->top:I

    aget-object v3, v3, v2

    iget v3, v3, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v5, v3

    div-int/2addr v5, v1

    .line 43
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    .line 44
    sget-object v3, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    .line 45
    iput-object v4, v3, Lcom/watabou/noosa/Camera;->panTarget:Lcom/watabou/utils/PointF;

    .line 46
    iput v5, v3, Lcom/watabou/noosa/Camera;->panIntensity:F

    const/4 v4, 0x0

    .line 47
    iput-object v4, v3, Lcom/watabou/noosa/Camera;->followTarget:Lcom/watabou/noosa/Visual;

    .line 48
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 49
    :cond_b
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object p1

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeHallway:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    .line 50
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->progress()V

    goto :goto_7

    .line 51
    :cond_c
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object p1

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    if-le p1, v0, :cond_d

    .line 52
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->progress()V

    :cond_d
    :goto_7
    return-void
.end method

.method public progress()V
    .locals 16

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eqz v0, :cond_12

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/high16 v11, 0x3f800000    # 1.0f

    const-string v12, "snd_blast.mp3"

    const v13, 0xffffff

    const/4 v14, 0x4

    const/4 v15, 0x1

    if-eq v0, v15, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    iget v3, v2, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v14

    iget v2, v2, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v1

    .line 5
    iget v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v2, v2, v1

    add-int/2addr v2, v3

    .line 6
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 7
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->interruptMotion()V

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 9
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    if-eqz v0, :cond_b

    .line 10
    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/Camera;->snapTo(FF)V

    .line 11
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCellCenter:Lcom/watabou/utils/Point;

    invoke-virtual {v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 12
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    new-array v1, v8, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 15
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 16
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v4, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/4 v5, 0x4

    move-object/from16 v0, p0

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->setMapStart()V

    .line 20
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 21
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v2

    instance-of v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    goto :goto_1

    .line 23
    :cond_4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$exitVisual;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$exitVisual;-><init>()V

    const/16 v1, 0xb

    .line 24
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 25
    iput v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 26
    iget-object v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;Z)V

    .line 28
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$exitVisualWalls;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$exitVisualWalls;-><init>()V

    .line 29
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 30
    iput v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 31
    iget-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v0, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;Z)V

    .line 33
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v14

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    .line 34
    iget v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    .line 35
    iget-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v10, v1, v0

    .line 36
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->endStart:Lcom/watabou/utils/Point;

    invoke-virtual {v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 37
    :goto_2
    iget v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v1, :cond_5

    .line 38
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->endMap:[I

    iget-object v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v3, 0xe

    invoke-static {v1, v8, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v3

    .line 39
    iget v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v0, v1

    goto :goto_2

    .line 40
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->levelExit:Lcom/watabou/utils/Point;

    invoke-virtual {v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    iput v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 41
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 42
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->randomTenguCellPos()I

    move-result v2

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 43
    invoke-virtual {v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v2

    if-nez v2, :cond_6

    .line 44
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v2, :cond_7

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 45
    :cond_7
    iget-object v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 46
    :cond_8
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->die(Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    invoke-virtual {v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->clearEntities(Lcom/watabou/utils/Rect;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->cleanMapState()V

    .line 49
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 50
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;

    if-nez v2, :cond_9

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility$ShockerItem;

    if-nez v2, :cond_9

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->randomTenguCellPos()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    goto :goto_4

    .line 52
    :cond_a
    invoke-static {v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    .line 53
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 54
    invoke-virtual {v0, v12, v11, v11, v11}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 55
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->WON:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    iput-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    goto/16 :goto_b

    .line 56
    :cond_b
    throw v9

    .line 57
    :cond_c
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 58
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->arena:Lcom/watabou/utils/Rect;

    invoke-virtual {v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->clearEntities(Lcom/watabou/utils/Rect;)V

    .line 59
    iput v8, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    iput v8, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/4 v5, 0x4

    const/4 v7, 0x2

    move-object/from16 v0, p0

    .line 60
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 61
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->arena:Lcom/watabou/utils/Rect;

    invoke-static {v6, v0, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 62
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->arena:Lcom/watabou/utils/Rect;

    invoke-static {v6, v0, v15, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fillEllipse(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->cleanMapState()V

    .line 64
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 65
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->arena:Lcom/watabou/utils/Rect;

    iget v2, v1, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->width()I

    move-result v1

    div-int/2addr v1, v7

    add-int/2addr v1, v2

    .line 66
    iget v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 67
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->arena:Lcom/watabou/utils/Rect;

    iget v3, v3, Lcom/watabou/utils/Rect;->top:I

    invoke-static {v3, v7, v2, v1}, La/a/a/a/a;->a(IIII)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 68
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 69
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->notice()V

    .line 70
    invoke-static {v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    .line 71
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 72
    invoke-virtual {v0, v12, v11, v11, v11}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 73
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_ARENA:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    iput-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    goto/16 :goto_b

    .line 74
    :cond_d
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    invoke-virtual {v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->clearEntities(Lcom/watabou/utils/Rect;)V

    .line 75
    iput v8, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    iput v8, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/4 v5, 0x4

    move-object/from16 v0, p0

    .line 76
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 77
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeHallway:Lcom/watabou/utils/Rect;

    invoke-static {v6, v0, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 78
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeHallway:Lcom/watabou/utils/Rect;

    invoke-static {v6, v0, v15, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 79
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCells:[Lcom/watabou/utils/Rect;

    array-length v1, v0

    :goto_5
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 80
    invoke-static {v6, v3, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 81
    invoke-static {v6, v3, v15, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 82
    :cond_e
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeCellDoors:[Lcom/watabou/utils/Point;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_f

    aget-object v3, v0, v2

    .line 83
    invoke-static {v6, v3, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 84
    :cond_f
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    invoke-static {v6, v0, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 85
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    invoke-static {v6, v0, v15, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 86
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v14

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    .line 87
    iget v2, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    .line 88
    iget-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v10, v1, v0

    .line 89
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeHallway:Lcom/watabou/utils/Rect;

    iget v3, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v15

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    const/4 v4, 0x2

    invoke-static {v0, v4, v2, v3}, La/a/a/a/a;->a(IIII)I

    move-result v4

    .line 90
    aput v7, v1, v4

    const/4 v4, 0x4

    invoke-static {v0, v4, v2, v3}, La/a/a/a/a;->a(IIII)I

    move-result v4

    .line 91
    aput v7, v1, v4

    const/16 v4, 0x8

    invoke-static {v0, v4, v2, v3}, La/a/a/a/a;->a(IIII)I

    move-result v4

    .line 92
    aput v7, v1, v4

    invoke-static {v0, v7, v2, v3}, La/a/a/a/a;->a(IIII)I

    move-result v0

    .line 93
    aput v7, v1, v0

    .line 94
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeKeySpawns:[Lcom/watabou/utils/Point;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 95
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    invoke-direct {v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-virtual {v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v3

    invoke-virtual {v6, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 96
    :cond_10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->mazeTorches:[Lcom/watabou/utils/Point;

    array-length v1, v0

    :goto_8
    if-ge v8, v1, :cond_11

    aget-object v2, v0, v8

    const/16 v3, 0xc

    .line 97
    invoke-static {v6, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 98
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->cleanMapState()V

    .line 99
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 100
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    iget-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;

    invoke-virtual {v0, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 102
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->kill()V

    .line 103
    invoke-static {v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    .line 104
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 105
    invoke-virtual {v0, v12, v11, v11, v11}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 106
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->TRAP_MAZES:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    iput-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    goto/16 :goto_b

    .line 107
    :cond_12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCellCenter:Lcom/watabou/utils/Point;

    invoke-virtual {v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 108
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v3, v2

    :goto_9
    if-ge v8, v3, :cond_14

    aget v4, v2, v8

    add-int/2addr v4, v0

    .line 111
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v5

    if-nez v5, :cond_13

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 113
    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 114
    invoke-static {v1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a

    :cond_15
    return-void

    .line 115
    :cond_16
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    .line 116
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCellDoor:Lcom/watabou/utils/Point;

    invoke-virtual {v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    .line 117
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v1, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 118
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCellDoor:Lcom/watabou/utils/Point;

    invoke-virtual {v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 119
    iget-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 120
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v3, v4, :cond_17

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 121
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCellDoor:Lcom/watabou/utils/Point;

    invoke-virtual {v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    iput v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 122
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 123
    :cond_18
    iget-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 124
    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 125
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 126
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->notice()V

    .line 127
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    iput-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    :goto_b
    return-void
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 2

    .line 1
    :cond_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8a

    add-int/2addr v1, v0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 3
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 4
    :cond_1
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_0

    return v1
.end method

.method public randomTenguCellPos()I
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iget v0, v0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v0, v0, -0x2

    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    iget v3, v2, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    iget v2, v2, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v2

    mul-int v2, v2, v1

    add-int/2addr v2, v0

    return v2
.end method

.method public respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->TRAP_MAZES:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 5
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "tengu"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    :cond_3
    :goto_1
    const-string v0, "storeditems"

    .line 9
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    .line 10
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v0, "triggered"

    .line 11
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->triggered:[Z

    return-void
.end method

.method public final setMapStart()V
    .locals 11

    const/16 v0, 0x8a

    .line 1
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x4

    move-object v1, p0

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->entranceRoom:Lcom/watabou/utils/Rect;

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->entranceRoom:Lcom/watabou/utils/Rect;

    const/4 v3, 0x1

    invoke-static {p0, v1, v3, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 6
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 7
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v5, 0x7

    aput v5, v4, v1

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startHallway:Lcom/watabou/utils/Rect;

    invoke-static {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startHallway:Lcom/watabou/utils/Rect;

    invoke-static {p0, v1, v3, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 10
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startHallway:Lcom/watabou/utils/Rect;

    iget v4, v1, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v3

    iget v1, v1, Lcom/watabou/utils/Rect;->top:I

    .line 11
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v5

    add-int/2addr v1, v4

    .line 12
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v5, 0x5

    aput v5, v4, v1

    .line 13
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startCells:[Lcom/watabou/utils/Rect;

    array-length v4, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v1, v6

    .line 14
    invoke-static {p0, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 15
    invoke-static {p0, v7, v3, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startHallway:Lcom/watabou/utils/Rect;

    iget v4, v1, Lcom/watabou/utils/Rect;->left:I

    iget v6, v1, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v7, v6, 0x5

    .line 17
    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v7, v7, v8

    add-int/2addr v7, v4

    .line 18
    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v5, v9, v7

    .line 19
    iget v1, v1, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v7, v1, -0x1

    add-int/lit8 v10, v6, 0x5

    mul-int v10, v10, v8

    add-int/2addr v10, v7

    .line 20
    aput v5, v9, v10

    add-int/lit8 v7, v6, 0xb

    mul-int v7, v7, v8

    add-int/2addr v7, v4

    .line 21
    aput v5, v9, v7

    sub-int/2addr v1, v3

    add-int/lit8 v6, v6, 0xb

    mul-int v6, v6, v8

    add-int/2addr v6, v1

    .line 22
    aput v5, v9, v6

    .line 23
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    invoke-static {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 24
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    invoke-static {p0, v1, v3, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 25
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    iget v4, v1, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v2

    iget v1, v1, Lcom/watabou/utils/Rect;->top:I

    .line 26
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v2

    add-int/2addr v1, v4

    .line 27
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v4, 0xa

    aput v4, v2, v1

    .line 28
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    invoke-direct {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    .line 29
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startCells:[Lcom/watabou/utils/Rect;

    array-length v4, v2

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    aget-object v2, v2, v4

    .line 30
    iget v4, v2, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v3

    iget v5, v2, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v4, v5}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v4

    .line 31
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 32
    iget v6, v2, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v6, v3

    iget v2, v2, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v6, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v2

    mul-int v2, v2, v5

    add-int/2addr v2, v4

    .line 33
    invoke-virtual {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 34
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->startTorches:[Lcom/watabou/utils/Point;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const/16 v4, 0xc

    .line 35
    invoke-static {p0, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Enum;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    const-string v1, "tengu"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    const-string v1, "storeditems"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->triggered:[Z

    const-string v1, "triggered"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Z)V

    return-void
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "empty_deco_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "water_name"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_prison.png"

    return-object v0
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water1.png"

    return-object v0
.end method
