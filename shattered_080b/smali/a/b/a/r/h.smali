.class public La/b/a/r/h;
.super Ljava/lang/Object;
.source "IntSet.java"


# instance fields
.field public a:I

.field public b:[I

.field public c:I

.field public d:I

.field public e:Z

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


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
    iput v0, p0, La/b/a/r/h;->c:I

    .line 4
    iput v1, p0, La/b/a/r/h;->f:F

    int-to-float v2, v0

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 5
    iput v1, p0, La/b/a/r/h;->i:I

    add-int/lit8 v1, v0, -0x1

    .line 6
    iput v1, p0, La/b/a/r/h;->h:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, La/b/a/r/h;->g:I

    const/4 v0, 0x3

    .line 8
    iget v1, p0, La/b/a/r/h;->c:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/a/r/h;->j:I

    .line 9
    iget v0, p0, La/b/a/r/h;->c:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, La/b/a/r/h;->c:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/a/r/h;->k:I

    .line 10
    iget v0, p0, La/b/a/r/h;->c:I

    iget v1, p0, La/b/a/r/h;->j:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, La/b/a/r/h;->b:[I

    return-void

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "initialCapacity is too large: "

    invoke-static {v2, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(IIIIIII)V
    .locals 6

    .line 20
    iget-object v0, p0, La/b/a/r/h;->b:[I

    .line 21
    iget v1, p0, La/b/a/r/h;->h:I

    .line 22
    iget v2, p0, La/b/a/r/h;->k:I

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x2

    .line 23
    invoke-static {v4}, La/b/a/p/a;->c(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    .line 24
    aput p1, v0, p6

    move p1, p7

    goto :goto_0

    .line 25
    :cond_1
    aput p1, v0, p4

    move p1, p5

    goto :goto_0

    .line 26
    :cond_2
    aput p1, v0, p2

    move p1, p3

    :goto_0
    and-int p2, p1, v1

    .line 27
    aget p3, v0, p2

    if-nez p3, :cond_4

    .line 28
    aput p1, v0, p2

    .line 29
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/h;->a:I

    iget p2, p0, La/b/a/r/h;->i:I

    if-lt p1, p2, :cond_3

    iget p1, p0, La/b/a/r/h;->c:I

    shl-int/2addr p1, v5

    invoke-virtual {p0, p1}, La/b/a/r/h;->f(I)V

    :cond_3
    return-void

    .line 30
    :cond_4
    invoke-virtual {p0, p1}, La/b/a/r/h;->d(I)I

    move-result p4

    .line 31
    aget p5, v0, p4

    if-nez p5, :cond_6

    .line 32
    aput p1, v0, p4

    .line 33
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/h;->a:I

    iget p2, p0, La/b/a/r/h;->i:I

    if-lt p1, p2, :cond_5

    iget p1, p0, La/b/a/r/h;->c:I

    shl-int/2addr p1, v5

    invoke-virtual {p0, p1}, La/b/a/r/h;->f(I)V

    :cond_5
    return-void

    .line 34
    :cond_6
    invoke-virtual {p0, p1}, La/b/a/r/h;->e(I)I

    move-result p6

    .line 35
    aget p7, v0, p6

    if-nez p7, :cond_8

    .line 36
    aput p1, v0, p6

    .line 37
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/h;->a:I

    iget p2, p0, La/b/a/r/h;->i:I

    if-lt p1, p2, :cond_7

    iget p1, p0, La/b/a/r/h;->c:I

    shl-int/2addr p1, v5

    invoke-virtual {p0, p1}, La/b/a/r/h;->f(I)V

    :cond_7
    return-void

    :cond_8
    add-int/2addr v3, v5

    if-ne v3, v2, :cond_0

    .line 38
    iget p2, p0, La/b/a/r/h;->d:I

    iget p3, p0, La/b/a/r/h;->j:I

    if-ne p2, p3, :cond_9

    .line 39
    iget p2, p0, La/b/a/r/h;->c:I

    shl-int/2addr p2, v5

    invoke-virtual {p0, p2}, La/b/a/r/h;->f(I)V

    .line 40
    invoke-virtual {p0, p1}, La/b/a/r/h;->b(I)V

    goto :goto_1

    .line 41
    :cond_9
    iget p3, p0, La/b/a/r/h;->c:I

    add-int/2addr p3, p2

    .line 42
    iget-object p4, p0, La/b/a/r/h;->b:[I

    aput p1, p4, p3

    add-int/2addr p2, v5

    .line 43
    iput p2, p0, La/b/a/r/h;->d:I

    .line 44
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/2addr p1, v5

    iput p1, p0, La/b/a/r/h;->a:I

    :goto_1
    return-void
.end method

.method public a(I)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, La/b/a/r/h;->e:Z

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iput-boolean v1, p0, La/b/a/r/h;->e:Z

    .line 3
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/2addr p1, v1

    iput p1, p0, La/b/a/r/h;->a:I

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, La/b/a/r/h;->b:[I

    .line 5
    iget v3, p0, La/b/a/r/h;->h:I

    and-int v6, p1, v3

    .line 6
    aget v7, v2, v6

    if-ne v7, p1, :cond_2

    return v0

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, La/b/a/r/h;->d(I)I

    move-result v8

    .line 8
    aget v9, v2, v8

    if-ne v9, p1, :cond_3

    return v0

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, La/b/a/r/h;->e(I)I

    move-result v10

    .line 10
    aget v11, v2, v10

    if-ne v11, p1, :cond_4

    return v0

    .line 11
    :cond_4
    iget v3, p0, La/b/a/r/h;->c:I

    iget v4, p0, La/b/a/r/h;->d:I

    add-int/2addr v4, v3

    :goto_0
    if-ge v3, v4, :cond_6

    .line 12
    aget v5, v2, v3

    if-ne v5, p1, :cond_5

    return v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-nez v7, :cond_8

    .line 13
    aput p1, v2, v6

    .line 14
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, La/b/a/r/h;->a:I

    iget v0, p0, La/b/a/r/h;->i:I

    if-lt p1, v0, :cond_7

    iget p1, p0, La/b/a/r/h;->c:I

    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, La/b/a/r/h;->f(I)V

    :cond_7
    return v1

    :cond_8
    if-nez v9, :cond_a

    .line 15
    aput p1, v2, v8

    .line 16
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, La/b/a/r/h;->a:I

    iget v0, p0, La/b/a/r/h;->i:I

    if-lt p1, v0, :cond_9

    iget p1, p0, La/b/a/r/h;->c:I

    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, La/b/a/r/h;->f(I)V

    :cond_9
    return v1

    :cond_a
    if-nez v11, :cond_c

    .line 17
    aput p1, v2, v10

    .line 18
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, La/b/a/r/h;->a:I

    iget v0, p0, La/b/a/r/h;->i:I

    if-lt p1, v0, :cond_b

    iget p1, p0, La/b/a/r/h;->c:I

    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, La/b/a/r/h;->f(I)V

    :cond_b
    return v1

    :cond_c
    move-object v4, p0

    move v5, p1

    .line 19
    invoke-virtual/range {v4 .. v11}, La/b/a/r/h;->a(IIIIIII)V

    return v1
.end method

.method public final b(I)V
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    iput-boolean v0, p0, La/b/a/r/h;->e:Z

    return-void

    .line 2
    :cond_0
    iget v1, p0, La/b/a/r/h;->h:I

    and-int v4, p1, v1

    .line 3
    iget-object v1, p0, La/b/a/r/h;->b:[I

    aget v5, v1, v4

    if-nez v5, :cond_2

    .line 4
    aput p1, v1, v4

    .line 5
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, La/b/a/r/h;->a:I

    iget v1, p0, La/b/a/r/h;->i:I

    if-lt p1, v1, :cond_1

    iget p1, p0, La/b/a/r/h;->c:I

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, La/b/a/r/h;->f(I)V

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, La/b/a/r/h;->d(I)I

    move-result v6

    .line 7
    iget-object v1, p0, La/b/a/r/h;->b:[I

    aget v7, v1, v6

    if-nez v7, :cond_4

    .line 8
    aput p1, v1, v6

    .line 9
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, La/b/a/r/h;->a:I

    iget v1, p0, La/b/a/r/h;->i:I

    if-lt p1, v1, :cond_3

    iget p1, p0, La/b/a/r/h;->c:I

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, La/b/a/r/h;->f(I)V

    :cond_3
    return-void

    .line 10
    :cond_4
    invoke-virtual {p0, p1}, La/b/a/r/h;->e(I)I

    move-result v8

    .line 11
    iget-object v1, p0, La/b/a/r/h;->b:[I

    aget v9, v1, v8

    if-nez v9, :cond_6

    .line 12
    aput p1, v1, v8

    .line 13
    iget p1, p0, La/b/a/r/h;->a:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, La/b/a/r/h;->a:I

    iget v1, p0, La/b/a/r/h;->i:I

    if-lt p1, v1, :cond_5

    iget p1, p0, La/b/a/r/h;->c:I

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, La/b/a/r/h;->f(I)V

    :cond_5
    return-void

    :cond_6
    move-object v2, p0

    move v3, p1

    .line 14
    invoke-virtual/range {v2 .. v9}, La/b/a/r/h;->a(IIIIIII)V

    return-void
.end method

.method public c(I)Z
    .locals 5

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, La/b/a/r/h;->e:Z

    return p1

    .line 2
    :cond_0
    iget v0, p0, La/b/a/r/h;->h:I

    and-int/2addr v0, p1

    .line 3
    iget-object v1, p0, La/b/a/r/h;->b:[I

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    .line 4
    invoke-virtual {p0, p1}, La/b/a/r/h;->d(I)I

    move-result v0

    .line 5
    iget-object v2, p0, La/b/a/r/h;->b:[I

    aget v0, v2, v0

    if-eq v0, p1, :cond_3

    .line 6
    invoke-virtual {p0, p1}, La/b/a/r/h;->e(I)I

    move-result v0

    .line 7
    iget-object v2, p0, La/b/a/r/h;->b:[I

    aget v0, v2, v0

    if-eq v0, p1, :cond_3

    .line 8
    iget v0, p0, La/b/a/r/h;->c:I

    iget v3, p0, La/b/a/r/h;->d:I

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

.method public final d(I)I
    .locals 1

    const v0, -0x4b47d1c7

    mul-int p1, p1, v0

    .line 1
    iget v0, p0, La/b/a/r/h;->g:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, La/b/a/r/h;->h:I

    and-int/2addr p1, v0

    return p1
.end method

.method public final e(I)I
    .locals 1

    const v0, -0x312e3dbf

    mul-int p1, p1, v0

    .line 1
    iget v0, p0, La/b/a/r/h;->g:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, La/b/a/r/h;->h:I

    and-int/2addr p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, La/b/a/r/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, La/b/a/r/h;

    .line 3
    iget v0, p1, La/b/a/r/h;->a:I

    iget v2, p0, La/b/a/r/h;->a:I

    if-eq v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-boolean v0, p1, La/b/a/r/h;->e:Z

    iget-boolean v2, p0, La/b/a/r/h;->e:Z

    if-eq v0, v2, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, La/b/a/r/h;->b:[I

    .line 6
    iget v2, p0, La/b/a/r/h;->c:I

    iget v3, p0, La/b/a/r/h;->d:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 7
    aget v4, v0, v3

    if-eqz v4, :cond_3

    aget v4, v0, v3

    invoke-virtual {p1, v4}, La/b/a/r/h;->c(I)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final f(I)V
    .locals 5

    .line 1
    iget v0, p0, La/b/a/r/h;->c:I

    iget v1, p0, La/b/a/r/h;->d:I

    add-int/2addr v0, v1

    .line 2
    iput p1, p0, La/b/a/r/h;->c:I

    int-to-float v1, p1

    .line 3
    iget v2, p0, La/b/a/r/h;->f:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, La/b/a/r/h;->i:I

    add-int/lit8 v1, p1, -0x1

    .line 4
    iput v1, p0, La/b/a/r/h;->h:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, La/b/a/r/h;->g:I

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

    iput v3, p0, La/b/a/r/h;->j:I

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

    iput v1, p0, La/b/a/r/h;->k:I

    .line 8
    iget-object v1, p0, La/b/a/r/h;->b:[I

    .line 9
    iget v2, p0, La/b/a/r/h;->j:I

    add-int/2addr p1, v2

    new-array p1, p1, [I

    iput-object p1, p0, La/b/a/r/h;->b:[I

    .line 10
    iget p1, p0, La/b/a/r/h;->a:I

    .line 11
    iget-boolean v2, p0, La/b/a/r/h;->e:Z

    iput v2, p0, La/b/a/r/h;->a:I

    const/4 v2, 0x0

    .line 12
    iput v2, p0, La/b/a/r/h;->d:I

    if-lez p1, :cond_1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    aget p1, v1, v2

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, La/b/a/r/h;->b(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, La/b/a/r/h;->c:I

    iget v1, p0, La/b/a/r/h;->d:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v3, p0, La/b/a/r/h;->b:[I

    aget v4, v3, v1

    if-eqz v4, :cond_0

    aget v3, v3, v1

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, La/b/a/r/h;->a:I

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
    iget-object v1, p0, La/b/a/r/h;->b:[I

    .line 5
    array-length v2, v1

    .line 6
    iget-boolean v3, p0, La/b/a/r/h;->e:Z

    if-eqz v3, :cond_1

    const-string v3, "0"

    .line 7
    invoke-virtual {v0, v3}, La/b/a/r/r;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_3

    .line 8
    aget v2, v1, v3

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v2}, La/b/a/r/r;->a(I)La/b/a/r/r;

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_5

    .line 10
    aget v2, v1, v3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v4, ", "

    .line 11
    invoke-virtual {v0, v4}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v2}, La/b/a/r/r;->a(I)La/b/a/r/r;

    goto :goto_1

    :cond_5
    const/16 v1, 0x5d

    .line 13
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(C)V

    .line 14
    invoke-virtual {v0}, La/b/a/r/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
