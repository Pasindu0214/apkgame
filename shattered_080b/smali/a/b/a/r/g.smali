.class public La/b/a/r/g;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/r/g$c;,
        La/b/a/r/g$e;,
        La/b/a/r/g$a;,
        La/b/a/r/g$d;,
        La/b/a/r/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "La/b/a/r/g$b<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public capacity:I

.field public entries1:La/b/a/r/g$a;

.field public entries2:La/b/a/r/g$a;

.field public hasZeroValue:Z

.field public hashShift:I

.field public keyTable:[I

.field public keys1:La/b/a/r/g$c;

.field public keys2:La/b/a/r/g$c;

.field public loadFactor:F

.field public mask:I

.field public pushIterations:I

.field public size:I

.field public stashCapacity:I

.field public stashSize:I

.field public threshold:I

.field public valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public values1:La/b/a/r/g$e;

.field public values2:La/b/a/r/g$e;

.field public zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x33

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v2, v0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v0}, La/b/a/p/a;->b(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gt v0, v2, :cond_0

    .line 3
    iput v0, p0, La/b/a/r/g;->capacity:I

    .line 4
    iput v1, p0, La/b/a/r/g;->loadFactor:F

    int-to-float v2, v0

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 5
    iput v1, p0, La/b/a/r/g;->threshold:I

    add-int/lit8 v1, v0, -0x1

    .line 6
    iput v1, p0, La/b/a/r/g;->mask:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, La/b/a/r/g;->hashShift:I

    const/4 v0, 0x3

    .line 8
    iget v1, p0, La/b/a/r/g;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/a/r/g;->stashCapacity:I

    .line 9
    iget v0, p0, La/b/a/r/g;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, La/b/a/r/g;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/a/r/g;->pushIterations:I

    .line 10
    iget v0, p0, La/b/a/r/g;->capacity:I

    iget v1, p0, La/b/a/r/g;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v1, v0, [I

    iput-object v1, p0, La/b/a/r/g;->keyTable:[I

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "initialCapacity is too large: "

    invoke-static {v2, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 6

    .line 1
    iget v0, p0, La/b/a/r/g;->size:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/g;->keyTable:[I

    .line 3
    iget-object v1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    .line 4
    iget v2, p0, La/b/a/r/g;->capacity:I

    iget v3, p0, La/b/a/r/g;->stashSize:I

    add-int/2addr v2, v3

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lez v2, :cond_1

    .line 5
    aput v5, v0, v3

    .line 6
    aput-object v4, v1, v3

    move v2, v3

    goto :goto_0

    .line 7
    :cond_1
    iput v5, p0, La/b/a/r/g;->size:I

    .line 8
    iput v5, p0, La/b/a/r/g;->stashSize:I

    .line 9
    iput-object v4, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    .line 10
    iput-boolean v5, p0, La/b/a/r/g;->hasZeroValue:Z

    return-void
.end method

.method public containsKey(I)Z
    .locals 5

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, La/b/a/r/g;->hasZeroValue:Z

    return p1

    .line 2
    :cond_0
    iget v0, p0, La/b/a/r/g;->mask:I

    and-int/2addr v0, p1

    .line 3
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    .line 4
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash2(I)I

    move-result v0

    .line 5
    iget-object v2, p0, La/b/a/r/g;->keyTable:[I

    aget v0, v2, v0

    if-eq v0, p1, :cond_3

    .line 6
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash3(I)I

    move-result v0

    .line 7
    iget-object v2, p0, La/b/a/r/g;->keyTable:[I

    aget v0, v2, v0

    if-eq v0, p1, :cond_3

    .line 8
    iget v0, p0, La/b/a/r/g;->capacity:I

    iget v3, p0, La/b/a/r/g;->stashSize:I

    add-int/2addr v3, v0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 9
    aget v4, v2, v0

    if-ne v4, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, La/b/a/r/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, La/b/a/r/g;

    .line 3
    iget v1, p1, La/b/a/r/g;->size:I

    iget v3, p0, La/b/a/r/g;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-boolean v1, p1, La/b/a/r/g;->hasZeroValue:Z

    iget-boolean v3, p0, La/b/a/r/g;->hasZeroValue:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_5

    .line 5
    iget-object v1, p1, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 6
    iget-object v1, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_5

    return v2

    .line 7
    :cond_4
    iget-object v3, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 8
    :cond_5
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    .line 9
    iget-object v3, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    .line 10
    iget v4, p0, La/b/a/r/g;->capacity:I

    iget v5, p0, La/b/a/r/g;->stashSize:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    .line 11
    aget v6, v1, v5

    if-eqz v6, :cond_7

    .line 12
    aget-object v7, v3, v5

    if-nez v7, :cond_6

    .line 13
    sget-object v7, La/b/a/r/j;->p:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, La/b/a/r/g;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    return v2

    .line 14
    :cond_6
    invoke-virtual {p1, v6}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    return v2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, La/b/a/r/g;->hasZeroValue:Z

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p1, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_1
    iget v1, p0, La/b/a/r/g;->mask:I

    and-int/2addr v1, p1

    .line 4
    iget-object v2, p0, La/b/a/r/g;->keyTable:[I

    aget v2, v2, v1

    if-eq v2, p1, :cond_2

    .line 5
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash2(I)I

    move-result v1

    .line 6
    iget-object v2, p0, La/b/a/r/g;->keyTable:[I

    aget v2, v2, v1

    if-eq v2, p1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash3(I)I

    move-result v1

    .line 8
    iget-object v2, p0, La/b/a/r/g;->keyTable:[I

    aget v2, v2, v1

    if-eq v2, p1, :cond_2

    invoke-virtual {p0, p1, v0}, La/b/a/r/g;->getStash(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 10
    iget-boolean p1, p0, La/b/a/r/g;->hasZeroValue:Z

    if-nez p1, :cond_0

    return-object p2

    .line 11
    :cond_0
    iget-object p1, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    return-object p1

    .line 12
    :cond_1
    iget v0, p0, La/b/a/r/g;->mask:I

    and-int/2addr v0, p1

    .line 13
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 14
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash2(I)I

    move-result v0

    .line 15
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 16
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash3(I)I

    move-result v0

    .line 17
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    invoke-virtual {p0, p1, p2}, La/b/a/r/g;->getStash(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1
.end method

.method public final getStash(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/g;->keyTable:[I

    .line 2
    iget v1, p0, La/b/a/r/g;->capacity:I

    iget v2, p0, La/b/a/r/g;->stashSize:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3
    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final hash2(I)I
    .locals 1

    const v0, -0x4b47d1c7

    mul-int p1, p1, v0

    .line 1
    iget v0, p0, La/b/a/r/g;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, La/b/a/r/g;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method public final hash3(I)I
    .locals 1

    const v0, -0x312e3dbf

    mul-int p1, p1, v0

    .line 1
    iget v0, p0, La/b/a/r/g;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, La/b/a/r/g;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-boolean v0, p0, La/b/a/r/g;->hasZeroValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, La/b/a/r/g;->keyTable:[I

    .line 4
    iget-object v3, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    .line 5
    iget v4, p0, La/b/a/r/g;->capacity:I

    iget v5, p0, La/b/a/r/g;->stashSize:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v1, v4, :cond_3

    .line 6
    aget v5, v2, v1

    if-eqz v5, :cond_2

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v0

    .line 7
    aget-object v0, v3, v1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_2

    :cond_1
    move v0, v5

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "La/b/a/r/g$b<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/g;->entries1:La/b/a/r/g$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/b/a/r/g$a;

    invoke-direct {v0, p0}, La/b/a/r/g$a;-><init>(La/b/a/r/g;)V

    iput-object v0, p0, La/b/a/r/g;->entries1:La/b/a/r/g$a;

    .line 3
    new-instance v0, La/b/a/r/g$a;

    invoke-direct {v0, p0}, La/b/a/r/g$a;-><init>(La/b/a/r/g;)V

    iput-object v0, p0, La/b/a/r/g;->entries2:La/b/a/r/g$a;

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/r/g;->entries1:La/b/a/r/g$a;

    iget-boolean v1, v0, La/b/a/r/g$d;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, La/b/a/r/g$d;->b()V

    .line 6
    iget-object v0, p0, La/b/a/r/g;->entries1:La/b/a/r/g$a;

    iput-boolean v3, v0, La/b/a/r/g$d;->e:Z

    .line 7
    iget-object v1, p0, La/b/a/r/g;->entries2:La/b/a/r/g$a;

    iput-boolean v2, v1, La/b/a/r/g$d;->e:Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, La/b/a/r/g;->entries2:La/b/a/r/g$a;

    invoke-virtual {v0}, La/b/a/r/g$d;->b()V

    .line 9
    iget-object v0, p0, La/b/a/r/g;->entries2:La/b/a/r/g$a;

    iput-boolean v3, v0, La/b/a/r/g$d;->e:Z

    .line 10
    iget-object v1, p0, La/b/a/r/g;->entries1:La/b/a/r/g$a;

    iput-boolean v2, v1, La/b/a/r/g$d;->e:Z

    :goto_0
    return-object v0
.end method

.method public keys()La/b/a/r/g$c;
    .locals 4

    .line 1
    iget-object v0, p0, La/b/a/r/g;->keys1:La/b/a/r/g$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/b/a/r/g$c;

    invoke-direct {v0, p0}, La/b/a/r/g$c;-><init>(La/b/a/r/g;)V

    iput-object v0, p0, La/b/a/r/g;->keys1:La/b/a/r/g$c;

    .line 3
    new-instance v0, La/b/a/r/g$c;

    invoke-direct {v0, p0}, La/b/a/r/g$c;-><init>(La/b/a/r/g;)V

    iput-object v0, p0, La/b/a/r/g;->keys2:La/b/a/r/g$c;

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/r/g;->keys1:La/b/a/r/g$c;

    iget-boolean v1, v0, La/b/a/r/g$d;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, La/b/a/r/g$d;->b()V

    .line 6
    iget-object v0, p0, La/b/a/r/g;->keys1:La/b/a/r/g$c;

    iput-boolean v3, v0, La/b/a/r/g$d;->e:Z

    .line 7
    iget-object v1, p0, La/b/a/r/g;->keys2:La/b/a/r/g$c;

    iput-boolean v2, v1, La/b/a/r/g$d;->e:Z

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, La/b/a/r/g;->keys2:La/b/a/r/g$c;

    invoke-virtual {v0}, La/b/a/r/g$d;->b()V

    .line 9
    iget-object v0, p0, La/b/a/r/g;->keys2:La/b/a/r/g$c;

    iput-boolean v3, v0, La/b/a/r/g$d;->e:Z

    .line 10
    iget-object v1, p0, La/b/a/r/g;->keys1:La/b/a/r/g$c;

    iput-boolean v2, v1, La/b/a/r/g$d;->e:Z

    return-object v0
.end method

.method public final push(ILjava/lang/Object;IIIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;IIIIII)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/g;->keyTable:[I

    .line 2
    iget-object v1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    .line 3
    iget v2, p0, La/b/a/r/g;->mask:I

    .line 4
    iget v3, p0, La/b/a/r/g;->pushIterations:I

    const/4 v4, 0x0

    :cond_0
    const/4 v5, 0x2

    .line 5
    invoke-static {v5}, La/b/a/p/a;->c(I)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-eq v5, v6, :cond_1

    .line 6
    aget-object p3, v1, p7

    .line 7
    aput p1, v0, p7

    .line 8
    aput-object p2, v1, p7

    move-object p2, p3

    move p1, p8

    goto :goto_0

    .line 9
    :cond_1
    aget-object p3, v1, p5

    .line 10
    aput p1, v0, p5

    .line 11
    aput-object p2, v1, p5

    move-object p2, p3

    move p1, p6

    goto :goto_0

    .line 12
    :cond_2
    aget-object p5, v1, p3

    .line 13
    aput p1, v0, p3

    .line 14
    aput-object p2, v1, p3

    move p1, p4

    move-object p2, p5

    :goto_0
    and-int p3, p1, v2

    .line 15
    aget p4, v0, p3

    if-nez p4, :cond_4

    .line 16
    aput p1, v0, p3

    .line 17
    aput-object p2, v1, p3

    .line 18
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/g;->size:I

    iget p2, p0, La/b/a/r/g;->threshold:I

    if-lt p1, p2, :cond_3

    iget p1, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p1, v6

    invoke-virtual {p0, p1}, La/b/a/r/g;->resize(I)V

    :cond_3
    return-void

    .line 19
    :cond_4
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash2(I)I

    move-result p5

    .line 20
    aget p6, v0, p5

    if-nez p6, :cond_6

    .line 21
    aput p1, v0, p5

    .line 22
    aput-object p2, v1, p5

    .line 23
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/g;->size:I

    iget p2, p0, La/b/a/r/g;->threshold:I

    if-lt p1, p2, :cond_5

    iget p1, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p1, v6

    invoke-virtual {p0, p1}, La/b/a/r/g;->resize(I)V

    :cond_5
    return-void

    .line 24
    :cond_6
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash3(I)I

    move-result p7

    .line 25
    aget p8, v0, p7

    if-nez p8, :cond_8

    .line 26
    aput p1, v0, p7

    .line 27
    aput-object p2, v1, p7

    .line 28
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/g;->size:I

    iget p2, p0, La/b/a/r/g;->threshold:I

    if-lt p1, p2, :cond_7

    iget p1, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p1, v6

    invoke-virtual {p0, p1}, La/b/a/r/g;->resize(I)V

    :cond_7
    return-void

    :cond_8
    add-int/2addr v4, v6

    if-ne v4, v3, :cond_0

    .line 29
    iget p3, p0, La/b/a/r/g;->stashSize:I

    iget p4, p0, La/b/a/r/g;->stashCapacity:I

    if-ne p3, p4, :cond_9

    .line 30
    iget p3, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p3, v6

    invoke-virtual {p0, p3}, La/b/a/r/g;->resize(I)V

    .line 31
    invoke-virtual {p0, p1, p2}, La/b/a/r/g;->putResize(ILjava/lang/Object;)V

    goto :goto_1

    .line 32
    :cond_9
    iget p4, p0, La/b/a/r/g;->capacity:I

    add-int/2addr p4, p3

    .line 33
    iget-object p5, p0, La/b/a/r/g;->keyTable:[I

    aput p1, p5, p4

    .line 34
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, p4

    add-int/2addr p3, v6

    .line 35
    iput p3, p0, La/b/a/r/g;->stashSize:I

    .line 36
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/2addr p1, v6

    iput p1, p0, La/b/a/r/g;->size:I

    :goto_1
    return-void
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    .line 3
    iget-boolean p2, p0, La/b/a/r/g;->hasZeroValue:Z

    if-nez p2, :cond_0

    .line 4
    iput-boolean v0, p0, La/b/a/r/g;->hasZeroValue:Z

    .line 5
    iget p2, p0, La/b/a/r/g;->size:I

    add-int/2addr p2, v0

    iput p2, p0, La/b/a/r/g;->size:I

    :cond_0
    return-object p1

    .line 6
    :cond_1
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    .line 7
    iget v2, p0, La/b/a/r/g;->mask:I

    and-int v6, p1, v2

    .line 8
    aget v7, v1, v6

    if-ne v7, p1, :cond_2

    .line 9
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object v0, p1, v6

    .line 10
    aput-object p2, p1, v6

    return-object v0

    .line 11
    :cond_2
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash2(I)I

    move-result v8

    .line 12
    aget v9, v1, v8

    if-ne v9, p1, :cond_3

    .line 13
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object v0, p1, v8

    .line 14
    aput-object p2, p1, v8

    return-object v0

    .line 15
    :cond_3
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash3(I)I

    move-result v10

    .line 16
    aget v11, v1, v10

    if-ne v11, p1, :cond_4

    .line 17
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object v0, p1, v10

    .line 18
    aput-object p2, p1, v10

    return-object v0

    .line 19
    :cond_4
    iget v2, p0, La/b/a/r/g;->capacity:I

    iget v3, p0, La/b/a/r/g;->stashSize:I

    add-int/2addr v3, v2

    :goto_0
    if-ge v2, v3, :cond_6

    .line 20
    aget v4, v1, v2

    if-ne v4, p1, :cond_5

    .line 21
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object v0, p1, v2

    .line 22
    aput-object p2, p1, v2

    return-object v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    if-nez v7, :cond_8

    .line 23
    aput p1, v1, v6

    .line 24
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v6

    .line 25
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/g;->size:I

    iget p2, p0, La/b/a/r/g;->threshold:I

    if-lt p1, p2, :cond_7

    iget p1, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, La/b/a/r/g;->resize(I)V

    :cond_7
    return-object v2

    :cond_8
    if-nez v9, :cond_a

    .line 26
    aput p1, v1, v8

    .line 27
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v8

    .line 28
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/g;->size:I

    iget p2, p0, La/b/a/r/g;->threshold:I

    if-lt p1, p2, :cond_9

    iget p1, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, La/b/a/r/g;->resize(I)V

    :cond_9
    return-object v2

    :cond_a
    if-nez v11, :cond_c

    .line 29
    aput p1, v1, v10

    .line 30
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v10

    .line 31
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/g;->size:I

    iget p2, p0, La/b/a/r/g;->threshold:I

    if-lt p1, p2, :cond_b

    iget p1, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, La/b/a/r/g;->resize(I)V

    :cond_b
    return-object v2

    :cond_c
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    .line 32
    invoke-virtual/range {v3 .. v11}, La/b/a/r/g;->push(ILjava/lang/Object;IIIIII)V

    return-object v2
.end method

.method public final putResize(ILjava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    iput-object p2, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    .line 2
    iput-boolean v0, p0, La/b/a/r/g;->hasZeroValue:Z

    return-void

    .line 3
    :cond_0
    iget v1, p0, La/b/a/r/g;->mask:I

    and-int v5, p1, v1

    .line 4
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    aget v6, v1, v5

    if-nez v6, :cond_2

    .line 5
    aput p1, v1, v5

    .line 6
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v5

    .line 7
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/g;->size:I

    iget p2, p0, La/b/a/r/g;->threshold:I

    if-lt p1, p2, :cond_1

    iget p1, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, La/b/a/r/g;->resize(I)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash2(I)I

    move-result v7

    .line 9
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    aget v8, v1, v7

    if-nez v8, :cond_4

    .line 10
    aput p1, v1, v7

    .line 11
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v7

    .line 12
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/g;->size:I

    iget p2, p0, La/b/a/r/g;->threshold:I

    if-lt p1, p2, :cond_3

    iget p1, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, La/b/a/r/g;->resize(I)V

    :cond_3
    return-void

    .line 13
    :cond_4
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash3(I)I

    move-result v9

    .line 14
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    aget v10, v1, v9

    if-nez v10, :cond_6

    .line 15
    aput p1, v1, v9

    .line 16
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v9

    .line 17
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/g;->size:I

    iget p2, p0, La/b/a/r/g;->threshold:I

    if-lt p1, p2, :cond_5

    iget p1, p0, La/b/a/r/g;->capacity:I

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, La/b/a/r/g;->resize(I)V

    :cond_5
    return-void

    :cond_6
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    .line 18
    invoke-virtual/range {v2 .. v10}, La/b/a/r/g;->push(ILjava/lang/Object;IIIIII)V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, La/b/a/r/g;->hasZeroValue:Z

    if-nez p1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object p1, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    .line 3
    iput-object v1, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    .line 4
    iput-boolean v0, p0, La/b/a/r/g;->hasZeroValue:Z

    .line 5
    iget v0, p0, La/b/a/r/g;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/a/r/g;->size:I

    return-object p1

    .line 6
    :cond_1
    iget v2, p0, La/b/a/r/g;->mask:I

    and-int/2addr v2, p1

    .line 7
    iget-object v3, p0, La/b/a/r/g;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_2

    .line 8
    aput v0, v3, v2

    .line 9
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object v0, p1, v2

    .line 10
    aput-object v1, p1, v2

    .line 11
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/b/a/r/g;->size:I

    return-object v0

    .line 12
    :cond_2
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash2(I)I

    move-result v2

    .line 13
    iget-object v3, p0, La/b/a/r/g;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_3

    .line 14
    aput v0, v3, v2

    .line 15
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object v0, p1, v2

    .line 16
    aput-object v1, p1, v2

    .line 17
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/b/a/r/g;->size:I

    return-object v0

    .line 18
    :cond_3
    invoke-virtual {p0, p1}, La/b/a/r/g;->hash3(I)I

    move-result v2

    .line 19
    iget-object v3, p0, La/b/a/r/g;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_4

    .line 20
    aput v0, v3, v2

    .line 21
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object v0, p1, v2

    .line 22
    aput-object v1, p1, v2

    .line 23
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/b/a/r/g;->size:I

    return-object v0

    .line 24
    :cond_4
    iget v0, p0, La/b/a/r/g;->capacity:I

    iget v2, p0, La/b/a/r/g;->stashSize:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_6

    .line 25
    aget v4, v3, v0

    if-ne v4, p1, :cond_5

    .line 26
    iget-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object v1, p1, v0

    .line 27
    invoke-virtual {p0, v0}, La/b/a/r/g;->removeStashIndex(I)V

    .line 28
    iget p1, p0, La/b/a/r/g;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/b/a/r/g;->size:I

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-object v1
.end method

.method public removeStashIndex(I)V
    .locals 4

    .line 1
    iget v0, p0, La/b/a/r/g;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/a/r/g;->stashSize:I

    .line 2
    iget v1, p0, La/b/a/r/g;->capacity:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v2, p0, La/b/a/r/g;->keyTable:[I

    aget v3, v2, v1

    aput v3, v2, p1

    .line 4
    iget-object v2, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    .line 5
    aput-object v0, v2, v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    aput-object v0, v1, p1

    :goto_0
    return-void
.end method

.method public final resize(I)V
    .locals 5

    .line 1
    iget v0, p0, La/b/a/r/g;->capacity:I

    iget v1, p0, La/b/a/r/g;->stashSize:I

    add-int/2addr v0, v1

    .line 2
    iput p1, p0, La/b/a/r/g;->capacity:I

    int-to-float v1, p1

    .line 3
    iget v2, p0, La/b/a/r/g;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, La/b/a/r/g;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 4
    iput v1, p0, La/b/a/r/g;->mask:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, La/b/a/r/g;->hashShift:I

    int-to-double v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, La/b/a/r/g;->stashCapacity:I

    const/16 v3, 0x8

    .line 7
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, La/b/a/r/g;->pushIterations:I

    .line 8
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    .line 9
    iget-object v2, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    .line 10
    iget v3, p0, La/b/a/r/g;->stashCapacity:I

    add-int v4, p1, v3

    new-array v4, v4, [I

    iput-object v4, p0, La/b/a/r/g;->keyTable:[I

    add-int/2addr p1, v3

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    .line 12
    iget p1, p0, La/b/a/r/g;->size:I

    .line 13
    iget-boolean v3, p0, La/b/a/r/g;->hasZeroValue:Z

    iput v3, p0, La/b/a/r/g;->size:I

    const/4 v3, 0x0

    .line 14
    iput v3, p0, La/b/a/r/g;->stashSize:I

    if-lez p1, :cond_1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 15
    aget p1, v1, v3

    if-eqz p1, :cond_0

    .line 16
    aget-object v4, v2, v3

    invoke-virtual {p0, p1, v4}, La/b/a/r/g;->putResize(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, La/b/a/r/g;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, La/b/a/r/r;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, La/b/a/r/r;-><init>(I)V

    const/16 v1, 0x5b

    .line 3
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(C)V

    .line 4
    iget-object v1, p0, La/b/a/r/g;->keyTable:[I

    .line 5
    iget-object v2, p0, La/b/a/r/g;->valueTable:[Ljava/lang/Object;

    .line 6
    array-length v3, v1

    .line 7
    iget-boolean v4, p0, La/b/a/r/g;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    const-string v4, "0="

    .line 8
    invoke-virtual {v0, v4}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, La/b/a/r/g;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    .line 10
    aget v3, v1, v4

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0, v3}, La/b/a/r/r;->a(I)La/b/a/r/r;

    .line 12
    invoke-virtual {v0, v5}, La/b/a/r/r;->a(C)V

    .line 13
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5

    .line 14
    aget v3, v1, v4

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, ", "

    .line 15
    invoke-virtual {v0, v6}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v3}, La/b/a/r/r;->a(I)La/b/a/r/r;

    .line 17
    invoke-virtual {v0, v5}, La/b/a/r/r;->a(C)V

    .line 18
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    goto :goto_1

    :cond_5
    const/16 v1, 0x5d

    .line 19
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(C)V

    .line 20
    invoke-virtual {v0}, La/b/a/r/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()La/b/a/r/g$e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/g$e<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/g;->values1:La/b/a/r/g$e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/b/a/r/g$e;

    invoke-direct {v0, p0}, La/b/a/r/g$e;-><init>(La/b/a/r/g;)V

    iput-object v0, p0, La/b/a/r/g;->values1:La/b/a/r/g$e;

    .line 3
    new-instance v0, La/b/a/r/g$e;

    invoke-direct {v0, p0}, La/b/a/r/g$e;-><init>(La/b/a/r/g;)V

    iput-object v0, p0, La/b/a/r/g;->values2:La/b/a/r/g$e;

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/r/g;->values1:La/b/a/r/g$e;

    iget-boolean v1, v0, La/b/a/r/g$d;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, La/b/a/r/g$d;->b()V

    .line 6
    iget-object v0, p0, La/b/a/r/g;->values1:La/b/a/r/g$e;

    iput-boolean v3, v0, La/b/a/r/g$d;->e:Z

    .line 7
    iget-object v1, p0, La/b/a/r/g;->values2:La/b/a/r/g$e;

    iput-boolean v2, v1, La/b/a/r/g$d;->e:Z

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, La/b/a/r/g;->values2:La/b/a/r/g$e;

    invoke-virtual {v0}, La/b/a/r/g$d;->b()V

    .line 9
    iget-object v0, p0, La/b/a/r/g;->values2:La/b/a/r/g$e;

    iput-boolean v3, v0, La/b/a/r/g$d;->e:Z

    .line 10
    iget-object v1, p0, La/b/a/r/g;->values1:La/b/a/r/g$e;

    iput-boolean v2, v1, La/b/a/r/g$d;->e:Z

    return-object v0
.end method
