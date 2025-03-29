.class public Lcom/watabou/utils/PathFinder;
.super Ljava/lang/Object;
.source "PathFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/watabou/utils/PathFinder$Path;
    }
.end annotation


# static fields
.field public static CIRCLE4:[I

.field public static CIRCLE8:[I

.field public static NEIGHBOURS4:[I

.field public static NEIGHBOURS8:[I

.field public static NEIGHBOURS9:[I

.field public static dir:[I

.field public static dirLR:[I

.field public static distance:[I

.field public static goals:[Z

.field public static maxVal:[I

.field public static queue:[I

.field public static size:I

.field public static width:I


# direct methods
.method public static buildDistanceMap(I[Z)V
    .locals 11

    .line 25
    sget-object v0, Lcom/watabou/utils/PathFinder;->maxVal:[I

    sget-object v1, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    sget-object v0, Lcom/watabou/utils/PathFinder;->queue:[I

    aput p0, v0, v3

    .line 27
    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    aput v3, v0, p0

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 28
    sget-object v2, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v4, v0, 0x1

    aget v0, v2, v0

    .line 29
    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v2, v2, v0

    add-int/2addr v2, p0

    .line 30
    sget v5, Lcom/watabou/utils/PathFinder;->width:I

    rem-int v5, v0, v5

    const/4 v6, 0x3

    if-nez v5, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v7, v0, 0x1

    .line 31
    sget v8, Lcom/watabou/utils/PathFinder;->width:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 32
    :goto_2
    sget-object v7, Lcom/watabou/utils/PathFinder;->dirLR:[I

    array-length v8, v7

    sub-int/2addr v8, v6

    if-ge v5, v8, :cond_3

    .line 33
    aget v7, v7, v5

    add-int/2addr v7, v0

    if-ltz v7, :cond_2

    .line 34
    sget v8, Lcom/watabou/utils/PathFinder;->size:I

    if-ge v7, v8, :cond_2

    aget-boolean v8, p1, v7

    if-eqz v8, :cond_2

    sget-object v8, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v9, v8, v7

    if-le v9, v2, :cond_2

    .line 35
    sget-object v9, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v10, v1, 0x1

    aput v7, v9, v1

    .line 36
    aput v2, v8, v7

    move v1, v10

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static buildDistanceMap(I[ZI)V
    .locals 11

    .line 13
    sget-object v0, Lcom/watabou/utils/PathFinder;->maxVal:[I

    sget-object v1, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    sget-object v0, Lcom/watabou/utils/PathFinder;->queue:[I

    aput p0, v0, v3

    .line 15
    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    aput v3, v0, p0

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ge v0, v1, :cond_5

    .line 16
    sget-object v2, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v4, v0, 0x1

    aget v0, v2, v0

    .line 17
    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v2, v2, v0

    add-int/2addr v2, p0

    if-le v2, p2, :cond_0

    return-void

    .line 18
    :cond_0
    sget v5, Lcom/watabou/utils/PathFinder;->width:I

    rem-int v5, v0, v5

    const/4 v6, 0x3

    if-nez v5, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v7, v0, 0x1

    .line 19
    sget v8, Lcom/watabou/utils/PathFinder;->width:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 20
    :goto_2
    sget-object v7, Lcom/watabou/utils/PathFinder;->dirLR:[I

    array-length v8, v7

    sub-int/2addr v8, v6

    if-ge v5, v8, :cond_4

    .line 21
    aget v7, v7, v5

    add-int/2addr v7, v0

    if-ltz v7, :cond_3

    .line 22
    sget v8, Lcom/watabou/utils/PathFinder;->size:I

    if-ge v7, v8, :cond_3

    aget-boolean v8, p1, v7

    if-eqz v8, :cond_3

    sget-object v8, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v9, v8, v7

    if-le v9, v2, :cond_3

    .line 23
    sget-object v9, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v10, v1, 0x1

    aput v7, v9, v1

    .line 24
    aput v2, v8, v7

    move v1, v10

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static buildDistanceMap(II[Z)Z
    .locals 10

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->maxVal:[I

    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    sget-object v1, Lcom/watabou/utils/PathFinder;->queue:[I

    aput p1, v1, v0

    .line 3
    sget-object v1, Lcom/watabou/utils/PathFinder;->distance:[I

    aput v0, v1, p1

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v2, :cond_7

    .line 4
    sget-object v3, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    if-ne v1, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    .line 5
    :cond_1
    sget-object v3, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v3, v3, v1

    add-int/2addr v3, p1

    .line 6
    sget v5, Lcom/watabou/utils/PathFinder;->width:I

    rem-int v5, v1, v5

    const/4 v6, 0x3

    if-nez v5, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v7, v1, 0x1

    .line 7
    sget v8, Lcom/watabou/utils/PathFinder;->width:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 8
    :goto_2
    sget-object v7, Lcom/watabou/utils/PathFinder;->dirLR:[I

    array-length v8, v7

    sub-int/2addr v8, v6

    if-ge v5, v8, :cond_6

    .line 9
    aget v7, v7, v5

    add-int/2addr v7, v1

    if-eq v7, p0, :cond_4

    if-ltz v7, :cond_5

    .line 10
    sget v8, Lcom/watabou/utils/PathFinder;->size:I

    if-ge v7, v8, :cond_5

    aget-boolean v8, p2, v7

    if-eqz v8, :cond_5

    sget-object v8, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v8, v8, v7

    if-le v8, v3, :cond_5

    .line 11
    :cond_4
    sget-object v8, Lcom/watabou/utils/PathFinder;->queue:[I

    add-int/lit8 v9, v2, 0x1

    aput v7, v8, v2

    .line 12
    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    aput v3, v2, v7

    move v2, v9

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_0

    :cond_7
    :goto_3
    return v0
.end method

.method public static find(II[Z)Lcom/watabou/utils/PathFinder$Path;
    .locals 5

    .line 1
    invoke-static {p0, p1, p2}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(II[Z)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p2, Lcom/watabou/utils/PathFinder$Path;

    invoke-direct {p2}, Lcom/watabou/utils/PathFinder$Path;-><init>()V

    .line 3
    :goto_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v0, v0, p0

    const/4 v1, 0x0

    move v1, v0

    const/4 v2, 0x0

    move v0, p0

    .line 4
    :goto_1
    sget-object v3, Lcom/watabou/utils/PathFinder;->dir:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 5
    aget v3, v3, v2

    add-int/2addr v3, p0

    .line 6
    sget-object v4, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v4, v4, v3

    if-ge v4, v1, :cond_1

    move v0, v3

    move v1, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-ne v0, p1, :cond_3

    return-object p2

    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method public static getStep(II[Z)I
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(II[Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    sget-object p1, Lcom/watabou/utils/PathFinder;->distance:[I

    aget p1, p1, p0

    const/4 p2, 0x0

    move v0, p0

    .line 3
    :goto_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->dir:[I

    array-length v2, v1

    if-ge p2, v2, :cond_2

    .line 4
    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v1, v1, p2

    add-int/2addr v1, p0

    aget v2, v2, v1

    if-ge v2, p1, :cond_1

    move v0, v1

    move p1, v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static setMapSize(II)V
    .locals 18

    move/from16 v0, p0

    .line 1
    sput v0, Lcom/watabou/utils/PathFinder;->width:I

    mul-int v1, v0, p1

    .line 2
    sput v1, Lcom/watabou/utils/PathFinder;->size:I

    .line 3
    new-array v2, v1, [I

    sput-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    .line 4
    new-array v2, v1, [Z

    sput-object v2, Lcom/watabou/utils/PathFinder;->goals:[Z

    .line 5
    new-array v2, v1, [I

    sput-object v2, Lcom/watabou/utils/PathFinder;->queue:[I

    .line 6
    new-array v1, v1, [I

    sput-object v1, Lcom/watabou/utils/PathFinder;->maxVal:[I

    const v2, 0x7fffffff

    .line 7
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/16 v1, 0x8

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v5, v2, v5

    neg-int v6, v0

    const/4 v7, 0x2

    aput v6, v2, v7

    const/4 v8, 0x3

    aput v0, v2, v8

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x4

    aput v9, v2, v10

    add-int/lit8 v11, v6, 0x1

    const/4 v12, 0x5

    aput v11, v2, v12

    add-int/lit8 v13, v0, -0x1

    const/4 v14, 0x6

    aput v13, v2, v14

    add-int/lit8 v15, v0, 0x1

    const/16 v16, 0x7

    aput v15, v2, v16

    .line 8
    sput-object v2, Lcom/watabou/utils/PathFinder;->dir:[I

    new-array v2, v1, [I

    rsub-int/lit8 v17, v0, -0x1

    aput v17, v2, v3

    aput v4, v2, v5

    add-int/lit8 v17, v0, -0x1

    aput v17, v2, v7

    aput v6, v2, v8

    aput v0, v2, v10

    rsub-int/lit8 v17, v0, 0x1

    aput v17, v2, v12

    aput v5, v2, v14

    aput v15, v2, v16

    .line 9
    sput-object v2, Lcom/watabou/utils/PathFinder;->dirLR:[I

    new-array v2, v10, [I

    aput v6, v2, v3

    aput v4, v2, v5

    aput v5, v2, v7

    aput v0, v2, v8

    .line 10
    sput-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS4:[I

    new-array v2, v1, [I

    aput v9, v2, v3

    aput v6, v2, v5

    aput v11, v2, v7

    aput v4, v2, v8

    aput v5, v2, v10

    aput v13, v2, v12

    aput v0, v2, v14

    aput v15, v2, v16

    .line 11
    sput-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v2, 0x9

    new-array v2, v2, [I

    aput v9, v2, v3

    aput v6, v2, v5

    aput v11, v2, v7

    aput v4, v2, v8

    aput v3, v2, v10

    aput v5, v2, v12

    aput v13, v2, v14

    aput v0, v2, v16

    aput v15, v2, v1

    .line 12
    sput-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    new-array v2, v10, [I

    aput v6, v2, v3

    aput v5, v2, v5

    aput v0, v2, v7

    aput v4, v2, v8

    .line 13
    sput-object v2, Lcom/watabou/utils/PathFinder;->CIRCLE4:[I

    new-array v1, v1, [I

    aput v9, v1, v3

    aput v6, v1, v5

    aput v11, v1, v7

    aput v5, v1, v8

    aput v15, v1, v10

    aput v0, v1, v12

    aput v13, v1, v14

    aput v4, v1, v16

    .line 14
    sput-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    return-void
.end method
