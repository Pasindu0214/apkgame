.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;
.source "ConnectionRoom.java"


# static fields
.field public static chances:[[F

.field public static rooms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->rooms:Ljava/util/ArrayList;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/BridgeRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/WalkwayRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingTunnelRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingBridgeRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1b

    new-array v0, v0, [[F

    .line 8
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->chances:[[F

    const/4 v1, 0x6

    new-array v2, v1, [F

    .line 9
    fill-array-data v2, :array_0

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 10
    aget-object v2, v0, v3

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [F

    .line 11
    fill-array-data v2, :array_1

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [F

    .line 12
    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    .line 13
    aget-object v2, v0, v1

    const/4 v4, 0x7

    aput-object v2, v0, v4

    const/16 v4, 0x8

    aput-object v2, v0, v4

    const/16 v4, 0x9

    aput-object v2, v0, v4

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [F

    .line 14
    fill-array-data v2, :array_3

    const/16 v4, 0xb

    aput-object v2, v0, v4

    .line 15
    aget-object v2, v0, v4

    const/16 v4, 0xc

    aput-object v2, v0, v4

    const/16 v4, 0xd

    aput-object v2, v0, v4

    const/16 v4, 0xe

    aput-object v2, v0, v4

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v1, [F

    .line 16
    fill-array-data v2, :array_4

    const/16 v4, 0x10

    aput-object v2, v0, v4

    .line 17
    aget-object v2, v0, v4

    const/16 v4, 0x11

    aput-object v2, v0, v4

    const/16 v4, 0x12

    aput-object v2, v0, v4

    const/16 v4, 0x13

    aput-object v2, v0, v4

    const/16 v4, 0x14

    aput-object v2, v0, v4

    .line 18
    aget-object v2, v0, v3

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v1, v1, [F

    .line 19
    fill-array-data v1, :array_5

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 20
    aget-object v1, v0, v2

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    return-void

    nop

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x3f800000    # 1.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x41a00000    # 20.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x41b00000    # 22.0f
        0x40400000    # 3.0f
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x41400000    # 12.0f
        0x0
        0x0
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x41900000    # 18.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x41700000    # 15.0f
        0x40800000    # 4.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;-><init>()V

    return-void
.end method

.method public static createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->rooms:Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->chances:[[F

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    return-object v0
.end method


# virtual methods
.method public canPlaceTrap(Lcom/watabou/utils/Point;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maxHeight()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public maxWidth()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public minHeight()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
