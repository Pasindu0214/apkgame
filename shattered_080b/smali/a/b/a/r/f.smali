.class public La/b/a/r/f;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field public a:[I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 1
    invoke-direct {p0, v0, v1}, La/b/a/r/f;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, La/b/a/r/f;->c:Z

    .line 4
    new-array p1, p2, [I

    iput-object p1, p0, La/b/a/r/f;->a:[I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/r/f;->a:[I

    .line 2
    iget v1, p0, La/b/a/r/f;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, La/b/a/r/f;->b(I)[I

    move-result-object v0

    .line 3
    :cond_0
    iget v1, p0, La/b/a/r/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/b/a/r/f;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public b(I)[I
    .locals 3

    .line 1
    new-array v0, p1, [I

    .line 2
    iget-object v1, p0, La/b/a/r/f;->a:[I

    .line 3
    iget v2, p0, La/b/a/r/f;->b:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v0, p0, La/b/a/r/f;->a:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    iget-boolean v1, p0, La/b/a/r/f;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    instance-of v1, p1, La/b/a/r/f;

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    check-cast p1, La/b/a/r/f;

    .line 4
    iget-boolean v1, p1, La/b/a/r/f;->c:Z

    if-nez v1, :cond_3

    return v2

    .line 5
    :cond_3
    iget v1, p0, La/b/a/r/f;->b:I

    .line 6
    iget v3, p1, La/b/a/r/f;->b:I

    if-eq v1, v3, :cond_4

    return v2

    .line 7
    :cond_4
    iget-object v3, p0, La/b/a/r/f;->a:[I

    iget-object p1, p1, La/b/a/r/f;->a:[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 8
    aget v5, v3, v4

    aget v6, p1, v4

    if-eq v5, v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, La/b/a/r/f;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/f;->a:[I

    const/4 v1, 0x0

    .line 3
    iget v2, p0, La/b/a/r/f;->b:I

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 4
    aget v4, v0, v1

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, La/b/a/r/f;->b:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/f;->a:[I

    .line 3
    new-instance v1, La/b/a/r/r;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, La/b/a/r/r;-><init>(I)V

    const/16 v2, 0x5b

    .line 4
    invoke-virtual {v1, v2}, La/b/a/r/r;->a(C)V

    const/4 v2, 0x0

    .line 5
    aget v2, v0, v2

    invoke-virtual {v1, v2}, La/b/a/r/r;->a(I)La/b/a/r/r;

    const/4 v2, 0x1

    .line 6
    :goto_0
    iget v3, p0, La/b/a/r/f;->b:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 7
    invoke-virtual {v1, v3}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 8
    aget v3, v0, v2

    invoke-virtual {v1, v3}, La/b/a/r/r;->a(I)La/b/a/r/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    .line 9
    invoke-virtual {v1, v0}, La/b/a/r/r;->a(C)V

    .line 10
    invoke-virtual {v1}, La/b/a/r/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
