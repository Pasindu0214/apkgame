.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;
.super Ljava/lang/Object;
.source "Terrain.java"


# static fields
.field public static final flags:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    const/4 v1, 0x0

    const/16 v2, 0xa0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    const/16 v3, 0x1d

    const/16 v4, 0x41

    aput v4, v0, v3

    const/16 v3, 0x12

    const/4 v4, 0x4

    aput v3, v0, v4

    const/16 v5, 0x17

    aput v5, v0, v2

    const/4 v6, 0x6

    aput v2, v0, v6

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v6, 0x8

    aput v1, v0, v6

    const/16 v7, 0x9

    aput v1, v0, v7

    const/16 v7, 0xa

    aput v3, v0, v7

    const/16 v7, 0xb

    aput v1, v0, v7

    .line 2
    aget v7, v0, v4

    const/16 v8, 0xc

    aput v7, v0, v8

    const/16 v7, 0x16

    const/16 v8, 0xd

    aput v7, v0, v8

    .line 3
    aget v9, v0, v1

    const/16 v10, 0xe

    aput v9, v0, v10

    const/16 v9, 0xf

    aput v2, v0, v9

    .line 4
    aget v2, v0, v9

    const/16 v9, 0x1e

    aput v2, v0, v9

    .line 5
    aget v2, v0, v4

    or-int/2addr v2, v6

    const/16 v4, 0x10

    aput v2, v0, v4

    .line 6
    aget v2, v0, v1

    or-int/2addr v2, v6

    const/16 v6, 0x11

    aput v2, v0, v6

    const/16 v2, 0x20

    aput v2, v0, v3

    .line 7
    aget v3, v0, v1

    const/16 v6, 0x13

    aput v3, v0, v6

    .line 8
    aget v3, v0, v1

    const/16 v6, 0x14

    aput v3, v0, v6

    const/16 v3, 0x15

    aput v4, v0, v3

    aput v1, v0, v7

    aput v4, v0, v5

    const/16 v1, 0x18

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v4, v0, v1

    .line 9
    aget v1, v0, v1

    const/16 v2, 0x1a

    aput v1, v0, v2

    .line 10
    aget v1, v0, v8

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0x1c

    aput v4, v0, v1

    return-void
.end method

.method public static discover(I)I
    .locals 1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x12

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0
.end method
