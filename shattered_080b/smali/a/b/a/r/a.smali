.class public La/b/a/r/a;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/r/a$a;,
        La/b/a/r/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:La/b/a/r/a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 1
    invoke-direct {p0, v0, v1}, La/b/a/r/a;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, La/b/a/r/a;->c:Z

    .line 4
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, La/b/a/r/a;->c:Z

    .line 7
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 9
    array-length v0, p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, La/b/a/r/a;->c:Z

    .line 13
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 14
    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    .line 15
    iput v0, p0, La/b/a/r/a;->b:I

    const/4 v2, 0x0

    .line 16
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    iget v0, p0, La/b/a/r/a;->b:I

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 14
    iget v0, p0, La/b/a/r/a;->b:I

    if-ge p1, v0, :cond_1

    .line 15
    iget-object v1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    .line 16
    aget-object v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    .line 17
    iput v0, p0, La/b/a/r/a;->b:I

    .line 18
    iget-boolean v3, p0, La/b/a/r/a;->c:Z

    if-eqz v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    .line 19
    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 20
    :cond_0
    aget-object v0, v1, v0

    aput-object v0, v1, p1

    .line 21
    :goto_0
    iget p1, p0, La/b/a/r/a;->b:I

    const/4 v0, 0x0

    aput-object v0, v1, p1

    return-object v2

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, La/b/a/r/a;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(II)V
    .locals 5

    .line 23
    iget v0, p0, La/b/a/r/a;->b:I

    if-ge p2, v0, :cond_3

    if-gt p1, p2, :cond_2

    .line 24
    iget-object v1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v0, v2

    .line 25
    iget-boolean v4, p0, La/b/a/r/a;->c:Z

    if-eqz v4, :cond_0

    add-int/2addr v2, p1

    sub-int p2, v0, v2

    .line 26
    invoke-static {v1, v2, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 27
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int v2, v0, p2

    .line 28
    invoke-static {v1, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move p1, v3

    :goto_1
    if-ge p1, v0, :cond_1

    const/4 p2, 0x0

    .line 29
    aput-object p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 30
    :cond_1
    iput v3, p0, La/b/a/r/a;->b:I

    return-void

    .line 31
    :cond_2
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

    .line 32
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, La/b/a/r/a;->b:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(La/b/a/r/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, La/b/a/r/a;->a:[Ljava/lang/Object;

    iget p1, p1, La/b/a/r/a;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, La/b/a/r/a;->a([Ljava/lang/Object;II)V

    return-void
.end method

.method public a([Ljava/lang/Object;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    .line 3
    iget v1, p0, La/b/a/r/a;->b:I

    add-int/2addr v1, p3

    .line 4
    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, La/b/a/r/a;->b(I)[Ljava/lang/Object;

    move-result-object v0

    .line 5
    :cond_0
    iget v1, p0, La/b/a/r/a;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, La/b/a/r/a;->b:I

    add-int/2addr p1, p3

    iput p1, p0, La/b/a/r/a;->b:I

    return-void
.end method

.method public a(Ljava/lang/Object;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 7
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget p2, p0, La/b/a/r/a;->b:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_4

    .line 9
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {p0, v3}, La/b/a/r/a;->a(I)Ljava/lang/Object;

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    iget p2, p0, La/b/a/r/a;->b:I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_4

    .line 12
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_3

    .line 13
    invoke-virtual {p0, v3}, La/b/a/r/a;->a(I)Ljava/lang/Object;

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method

.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    .line 2
    iget v1, p0, La/b/a/r/a;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, La/b/a/r/a;->b(I)[Ljava/lang/Object;

    move-result-object v0

    .line 3
    :cond_0
    iget v1, p0, La/b/a/r/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/b/a/r/a;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public b(I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, [Ljava/lang/Object;

    .line 5
    iget v1, p0, La/b/a/r/a;->b:I

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object p1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    return-object p1
.end method

.method public c(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, La/b/a/r/a;->b:I

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    move v0, p1

    .line 2
    :goto_0
    iget v1, p0, La/b/a/r/a;->b:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iput p1, p0, La/b/a/r/a;->b:I

    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize must be >= 0: "

    invoke-static {v1, p1}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public clear()V
    .locals 5

    .line 1
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    .line 2
    iget v1, p0, La/b/a/r/a;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const/4 v4, 0x0

    .line 3
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v2, p0, La/b/a/r/a;->b:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    iget-boolean v1, p0, La/b/a/r/a;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    instance-of v1, p1, La/b/a/r/a;

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    check-cast p1, La/b/a/r/a;

    .line 4
    iget-boolean v1, p1, La/b/a/r/a;->c:Z

    if-nez v1, :cond_3

    return v2

    .line 5
    :cond_3
    iget v1, p0, La/b/a/r/a;->b:I

    .line 6
    iget v3, p1, La/b/a/r/a;->b:I

    if-eq v1, v3, :cond_4

    return v2

    .line 7
    :cond_4
    iget-object v3, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    iget-object p1, p1, La/b/a/r/a;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_8

    .line 8
    aget-object v5, v3, v4

    aget-object v6, p1, v4

    if-nez v5, :cond_5

    if-nez v6, :cond_6

    goto :goto_1

    .line 9
    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    return v2

    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, La/b/a/r/a;->b:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, La/b/a/r/a;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, La/b/a/r/a;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget v2, p0, La/b/a/r/a;->b:I

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    .line 4
    aget-object v4, v0, v1

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/a;->d:La/b/a/r/a$a;

    if-nez v0, :cond_0

    new-instance v0, La/b/a/r/a$a;

    invoke-direct {v0, p0}, La/b/a/r/a$a;-><init>(La/b/a/r/a;)V

    iput-object v0, p0, La/b/a/r/a;->d:La/b/a/r/a$a;

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/a;->d:La/b/a/r/a$a;

    invoke-virtual {v0}, La/b/a/r/a$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, La/b/a/r/a;->b:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, La/b/a/r/a;->b:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, La/b/a/r/a;->b:I

    .line 3
    iget-object v1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    .line 4
    aput-object v3, v1, v0

    return-object v2

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, La/b/a/r/a;->b:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    .line 3
    new-instance v1, La/b/a/r/r;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, La/b/a/r/r;-><init>(I)V

    const/16 v2, 0x5b

    .line 4
    invoke-virtual {v1, v2}, La/b/a/r/r;->a(C)V

    const/4 v2, 0x0

    .line 5
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    const/4 v2, 0x1

    .line 6
    :goto_0
    iget v3, p0, La/b/a/r/a;->b:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 7
    invoke-virtual {v1, v3}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 8
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

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
