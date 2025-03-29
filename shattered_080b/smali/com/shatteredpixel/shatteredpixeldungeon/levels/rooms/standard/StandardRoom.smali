.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;
.source "StandardRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;
    }
.end annotation


# static fields
.field public static chances:[[F

.field public static rooms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/RingRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SegmentedRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StatuesRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/CaveRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/CirclePitRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/HallwayRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PillarsRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/RuinsRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SkullsRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlantsRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/AquariumRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlatformRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/BurnedRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/FissureRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/GrassyGraveRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StripedRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StudyRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SuspiciousChestRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/MinefieldRoom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1b

    new-array v0, v0, [[F

    .line 23
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->chances:[[F

    const/16 v1, 0x15

    new-array v2, v1, [F

    .line 24
    fill-array-data v2, :array_0

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    .line 25
    fill-array-data v2, :array_1

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 26
    aget-object v2, v0, v3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [F

    .line 27
    fill-array-data v2, :array_2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [F

    .line 28
    fill-array-data v2, :array_3

    const/4 v3, 0x6

    aput-object v2, v0, v3

    .line 29
    aget-object v2, v0, v3

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [F

    .line 30
    fill-array-data v2, :array_4

    const/16 v3, 0xb

    aput-object v2, v0, v3

    .line 31
    aget-object v2, v0, v3

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v3, 0xd

    aput-object v2, v0, v3

    const/16 v3, 0xe

    aput-object v2, v0, v3

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [F

    .line 32
    fill-array-data v2, :array_5

    const/16 v3, 0x10

    aput-object v2, v0, v3

    .line 33
    aget-object v2, v0, v3

    const/16 v3, 0x11

    aput-object v2, v0, v3

    const/16 v3, 0x12

    aput-object v2, v0, v3

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [F

    .line 34
    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    .line 35
    aget-object v1, v0, v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

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
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x41a00000    # 20.0f
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x41a00000    # 20.0f
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x41a00000    # 20.0f
        0x0
        0x0
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x41a00000    # 20.0f
        0x0
        0x0
        0x0
        0x0
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x41a00000    # 20.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x41a00000    # 20.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;-><init>()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->setSizeCat(II)Z

    return-void
.end method

.method public static createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->rooms:Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->chances:[[F

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    return-object v0
.end method


# virtual methods
.method public maxHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->maxDim:I

    return v0
.end method

.method public maxWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->maxDim:I

    return v0
.end method

.method public minHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->minDim:I

    return v0
.end method

.method public minWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->minDim:I

    return v0
.end method

.method public setSizeCat(II)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCatProbs()[F

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    move-result-object v1

    .line 3
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, p1, :cond_1

    .line 4
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    add-int/2addr p2, p1

    .line 5
    :goto_1
    array-length v2, v1

    if-ge p2, v2, :cond_2

    aput v3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 7
    aget-object p2, v1, p2

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    return p1

    :cond_3
    return v4
.end method

.method public sizeCatProbs()[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method
