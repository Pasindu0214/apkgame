.class public La/b/a/r/b;
.super Ljava/lang/Object;
.source "FloatArray.java"


# instance fields
.field public a:[F

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/b/a/r/b;->c:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, La/b/a/r/b;->a:[F

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 3

    .line 12
    iget v0, p0, La/b/a/r/b;->b:I

    if-ge p1, v0, :cond_0

    .line 13
    iget-object v0, p0, La/b/a/r/b;->a:[F

    aget p1, v0, p1

    return p1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, La/b/a/r/b;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(F)V
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/r/b;->a:[F

    .line 2
    iget v1, p0, La/b/a/r/b;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, La/b/a/r/b;->b(I)[F

    move-result-object v0

    .line 3
    :cond_0
    iget v1, p0, La/b/a/r/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/b/a/r/b;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public a(IF)V
    .locals 2

    .line 15
    iget v0, p0, La/b/a/r/b;->b:I

    if-ge p1, v0, :cond_0

    .line 16
    iget-object v0, p0, La/b/a/r/b;->a:[F

    aput p2, v0, p1

    return-void

    .line 17
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, La/b/a/r/b;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(II)V
    .locals 4

    .line 18
    iget v0, p0, La/b/a/r/b;->b:I

    if-ge p2, v0, :cond_2

    if-gt p1, p2, :cond_1

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v2, v0, v1

    .line 19
    iget-boolean v3, p0, La/b/a/r/b;->c:Z

    if-eqz v3, :cond_0

    .line 20
    iget-object p2, p0, La/b/a/r/b;->a:[F

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 21
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 22
    iget-object v1, p0, La/b/a/r/b;->a:[F

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    :goto_0
    iput v2, p0, La/b/a/r/b;->b:I

    return-void

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start can\'t be > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, La/b/a/r/b;->b:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(La/b/a/r/b;II)V
    .locals 3

    add-int v0, p2, p3

    .line 4
    iget v1, p1, La/b/a/r/b;->b:I

    if-gt v0, v1, :cond_0

    .line 5
    iget-object p1, p1, La/b/a/r/b;->a:[F

    invoke-virtual {p0, p1, p2, p3}, La/b/a/r/b;->a([FII)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " <= "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, La/b/a/r/b;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([FII)V
    .locals 3

    .line 7
    iget-object v0, p0, La/b/a/r/b;->a:[F

    .line 8
    iget v1, p0, La/b/a/r/b;->b:I

    add-int/2addr v1, p3

    .line 9
    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, La/b/a/r/b;->b(I)[F

    move-result-object v0

    .line 10
    :cond_0
    iget v1, p0, La/b/a/r/b;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, La/b/a/r/b;->b:I

    add-int/2addr p1, p3

    iput p1, p0, La/b/a/r/b;->b:I

    return-void
.end method

.method public b(I)[F
    .locals 3

    .line 1
    new-array v0, p1, [F

    .line 2
    iget-object v1, p0, La/b/a/r/b;->a:[F

    .line 3
    iget v2, p0, La/b/a/r/b;->b:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v0, p0, La/b/a/r/b;->a:[F

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget v0, p0, La/b/a/r/b;->b:I

    if-le v0, p1, :cond_0

    iput p1, p0, La/b/a/r/b;->b:I

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    iget-boolean v1, p0, La/b/a/r/b;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    instance-of v1, p1, La/b/a/r/b;

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    check-cast p1, La/b/a/r/b;

    .line 4
    iget-boolean v1, p1, La/b/a/r/b;->c:Z

    if-nez v1, :cond_3

    return v2

    .line 5
    :cond_3
    iget v1, p0, La/b/a/r/b;->b:I

    .line 6
    iget v3, p1, La/b/a/r/b;->b:I

    if-eq v1, v3, :cond_4

    return v2

    .line 7
    :cond_4
    iget-object v3, p0, La/b/a/r/b;->a:[F

    iget-object p1, p1, La/b/a/r/b;->a:[F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 8
    aget v5, v3, v4

    aget v6, p1, v4

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

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
    iget-boolean v0, p0, La/b/a/r/b;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/b;->a:[F

    const/4 v1, 0x0

    .line 3
    iget v2, p0, La/b/a/r/b;->b:I

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 4
    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, La/b/a/r/b;->b:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/b;->a:[F

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

    .line 6
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/b/a/r/r;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 7
    :goto_0
    iget v3, p0, La/b/a/r/b;->b:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 8
    invoke-virtual {v1, v3}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 9
    aget v3, v0, v2

    .line 10
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, La/b/a/r/r;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    .line 11
    invoke-virtual {v1, v0}, La/b/a/r/r;->a(C)V

    .line 12
    invoke-virtual {v1}, La/b/a/r/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
