.class public La/b/a/r/i;
.super Ljava/lang/Object;
.source "LongMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/r/i$d;,
        La/b/a/r/i$a;,
        La/b/a/r/i$c;,
        La/b/a/r/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "La/b/a/r/i$b<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:[J

.field public c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:La/b/a/r/i$a;

.field public o:La/b/a/r/i$a;

.field public p:La/b/a/r/i$d;

.field public q:La/b/a/r/i$d;


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
    iput v0, p0, La/b/a/r/i;->d:I

    .line 4
    iput v1, p0, La/b/a/r/i;->h:F

    int-to-float v2, v0

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 5
    iput v1, p0, La/b/a/r/i;->k:I

    add-int/lit8 v1, v0, -0x1

    .line 6
    iput v1, p0, La/b/a/r/i;->j:I

    int-to-long v0, v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    iput v0, p0, La/b/a/r/i;->i:I

    const/4 v0, 0x3

    .line 8
    iget v1, p0, La/b/a/r/i;->d:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/a/r/i;->l:I

    .line 9
    iget v0, p0, La/b/a/r/i;->d:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, La/b/a/r/i;->d:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/a/r/i;->m:I

    .line 10
    iget v0, p0, La/b/a/r/i;->d:I

    iget v1, p0, La/b/a/r/i;->l:I

    add-int/2addr v0, v1

    new-array v1, v0, [J

    iput-object v1, p0, La/b/a/r/i;->b:[J

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

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
.method public a(J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 37
    iget-boolean p1, p0, La/b/a/r/i;->g:Z

    if-nez p1, :cond_0

    return-object v0

    .line 38
    :cond_0
    iget-object p1, p0, La/b/a/r/i;->f:Ljava/lang/Object;

    return-object p1

    .line 39
    :cond_1
    iget v1, p0, La/b/a/r/i;->j:I

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v2, v1

    .line 40
    iget-object v1, p0, La/b/a/r/i;->b:[J

    aget-wide v3, v1, v2

    cmp-long v1, v3, p1

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p0, p1, p2}, La/b/a/r/i;->b(J)I

    move-result v2

    .line 42
    iget-object v1, p0, La/b/a/r/i;->b:[J

    aget-wide v3, v1, v2

    cmp-long v1, v3, p1

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {p0, p1, p2}, La/b/a/r/i;->c(J)I

    move-result v2

    .line 44
    iget-object v1, p0, La/b/a/r/i;->b:[J

    aget-wide v3, v1, v2

    cmp-long v1, v3, p1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2, v0}, La/b/a/r/i;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_2
    iget-object p1, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object p1, p1, v2

    return-object p1
.end method

.method public final a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, La/b/a/r/i;->b:[J

    .line 47
    iget v1, p0, La/b/a/r/i;->d:I

    iget v2, p0, La/b/a/r/i;->e:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 48
    aget-wide v3, v0, v1

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    iget-object p1, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public a(I)V
    .locals 5

    .line 49
    iget v0, p0, La/b/a/r/i;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/a/r/i;->e:I

    .line 50
    iget v1, p0, La/b/a/r/i;->d:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    if-ge p1, v1, :cond_0

    .line 51
    iget-object v2, p0, La/b/a/r/i;->b:[J

    aget-wide v3, v2, v1

    aput-wide v3, v2, p1

    .line 52
    iget-object v2, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    .line 53
    aput-object v0, v2, v1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aput-object v0, v1, p1

    :goto_0
    return-void
.end method

.method public final a(JLjava/lang/Object;IJIJIJ)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;IJIJIJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, La/b/a/r/i;->b:[J

    .line 2
    iget-object v2, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    .line 3
    iget v3, v0, La/b/a/r/i;->j:I

    .line 4
    iget v4, v0, La/b/a/r/i;->m:I

    const/4 v5, 0x0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move-wide/from16 v15, p11

    const/16 v17, 0x0

    :goto_0
    const/16 v18, 0x2

    move-wide/from16 p1, v9

    .line 5
    invoke-static/range {v18 .. v18}, La/b/a/p/a;->c(I)I

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    if-eq v9, v10, :cond_0

    .line 6
    aget-object v8, v2, v14

    .line 7
    aput-wide v5, v1, v14

    .line 8
    aput-object v7, v2, v14

    move-object v7, v8

    move-wide v5, v15

    goto :goto_1

    .line 9
    :cond_0
    aget-object v8, v2, v11

    .line 10
    aput-wide v5, v1, v11

    .line 11
    aput-object v7, v2, v11

    move-object v7, v8

    move-wide v5, v12

    goto :goto_1

    .line 12
    :cond_1
    aget-object v9, v2, v8

    .line 13
    aput-wide v5, v1, v8

    .line 14
    aput-object v7, v2, v8

    move-wide/from16 v5, p1

    move-object v7, v9

    :goto_1
    int-to-long v8, v3

    and-long/2addr v8, v5

    long-to-int v8, v8

    .line 15
    aget-wide v11, v1, v8

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-nez v9, :cond_3

    .line 16
    aput-wide v5, v1, v8

    .line 17
    aput-object v7, v2, v8

    .line 18
    iget v1, v0, La/b/a/r/i;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, La/b/a/r/i;->a:I

    iget v2, v0, La/b/a/r/i;->k:I

    if-lt v1, v2, :cond_2

    iget v1, v0, La/b/a/r/i;->d:I

    shl-int/2addr v1, v10

    invoke-virtual {v0, v1}, La/b/a/r/i;->b(I)V

    :cond_2
    return-void

    .line 19
    :cond_3
    invoke-virtual {v0, v5, v6}, La/b/a/r/i;->b(J)I

    move-result v9

    .line 20
    aget-wide v15, v1, v9

    cmp-long v18, v15, v13

    if-nez v18, :cond_5

    .line 21
    aput-wide v5, v1, v9

    .line 22
    aput-object v7, v2, v9

    .line 23
    iget v1, v0, La/b/a/r/i;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, La/b/a/r/i;->a:I

    iget v2, v0, La/b/a/r/i;->k:I

    if-lt v1, v2, :cond_4

    iget v1, v0, La/b/a/r/i;->d:I

    shl-int/2addr v1, v10

    invoke-virtual {v0, v1}, La/b/a/r/i;->b(I)V

    :cond_4
    return-void

    .line 24
    :cond_5
    invoke-virtual {v0, v5, v6}, La/b/a/r/i;->c(J)I

    move-result v18

    .line 25
    aget-wide v19, v1, v18

    cmp-long v21, v19, v13

    if-nez v21, :cond_7

    .line 26
    aput-wide v5, v1, v18

    .line 27
    aput-object v7, v2, v18

    .line 28
    iget v1, v0, La/b/a/r/i;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, La/b/a/r/i;->a:I

    iget v2, v0, La/b/a/r/i;->k:I

    if-lt v1, v2, :cond_6

    iget v1, v0, La/b/a/r/i;->d:I

    shl-int/2addr v1, v10

    invoke-virtual {v0, v1}, La/b/a/r/i;->b(I)V

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v13, v17, 0x1

    if-ne v13, v4, :cond_9

    .line 29
    iget v1, v0, La/b/a/r/i;->e:I

    iget v2, v0, La/b/a/r/i;->l:I

    if-ne v1, v2, :cond_8

    .line 30
    iget v1, v0, La/b/a/r/i;->d:I

    shl-int/2addr v1, v10

    invoke-virtual {v0, v1}, La/b/a/r/i;->b(I)V

    .line 31
    invoke-virtual {v0, v5, v6, v7}, La/b/a/r/i;->b(JLjava/lang/Object;)V

    goto :goto_2

    .line 32
    :cond_8
    iget v2, v0, La/b/a/r/i;->d:I

    add-int/2addr v2, v1

    .line 33
    iget-object v3, v0, La/b/a/r/i;->b:[J

    aput-wide v5, v3, v2

    .line 34
    iget-object v3, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aput-object v7, v3, v2

    add-int/2addr v1, v10

    .line 35
    iput v1, v0, La/b/a/r/i;->e:I

    .line 36
    iget v1, v0, La/b/a/r/i;->a:I

    add-int/2addr v1, v10

    iput v1, v0, La/b/a/r/i;->a:I

    :goto_2
    return-void

    :cond_9
    move/from16 v17, v13

    move/from16 v14, v18

    move-wide/from16 v22, v11

    move v11, v9

    move-wide/from16 v9, v22

    move-wide v12, v15

    move-wide/from16 v15, v19

    goto/16 :goto_0
.end method

.method public final b(J)I
    .locals 2

    const-wide/32 v0, -0x4b47d1c7

    mul-long p1, p1, v0

    .line 35
    iget v0, p0, La/b/a/r/i;->i:I

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    iget v0, p0, La/b/a/r/i;->j:I

    int-to-long v0, v0

    and-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public final b(I)V
    .locals 8

    .line 19
    iget v0, p0, La/b/a/r/i;->d:I

    iget v1, p0, La/b/a/r/i;->e:I

    add-int/2addr v0, v1

    .line 20
    iput p1, p0, La/b/a/r/i;->d:I

    int-to-float v1, p1

    .line 21
    iget v2, p0, La/b/a/r/i;->h:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, La/b/a/r/i;->k:I

    add-int/lit8 v1, p1, -0x1

    .line 22
    iput v1, p0, La/b/a/r/i;->j:I

    int-to-long v1, p1

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x3f

    iput v1, p0, La/b/a/r/i;->i:I

    int-to-double v1, p1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, La/b/a/r/i;->l:I

    const/16 v3, 0x8

    .line 25
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, La/b/a/r/i;->m:I

    .line 26
    iget-object v1, p0, La/b/a/r/i;->b:[J

    .line 27
    iget-object v2, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

    .line 28
    iget v3, p0, La/b/a/r/i;->l:I

    add-int v4, p1, v3

    new-array v4, v4, [J

    iput-object v4, p0, La/b/a/r/i;->b:[J

    add-int/2addr p1, v3

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

    .line 30
    iget p1, p0, La/b/a/r/i;->a:I

    .line 31
    iget-boolean v3, p0, La/b/a/r/i;->g:Z

    iput v3, p0, La/b/a/r/i;->a:I

    const/4 v3, 0x0

    .line 32
    iput v3, p0, La/b/a/r/i;->e:I

    if-lez p1, :cond_1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 33
    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_0

    .line 34
    aget-object p1, v2, v3

    invoke-virtual {p0, v4, v5, p1}, La/b/a/r/i;->b(JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(JLjava/lang/Object;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v3, p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    .line 1
    iput-object v3, v13, La/b/a/r/i;->f:Ljava/lang/Object;

    .line 2
    iput-boolean v2, v13, La/b/a/r/i;->g:Z

    return-void

    .line 3
    :cond_0
    iget v4, v13, La/b/a/r/i;->j:I

    int-to-long v4, v4

    and-long v4, p1, v4

    long-to-int v4, v4

    .line 4
    iget-object v5, v13, La/b/a/r/i;->b:[J

    aget-wide v6, v5, v4

    cmp-long v8, v6, v0

    if-nez v8, :cond_2

    .line 5
    aput-wide p1, v5, v4

    .line 6
    iget-object v0, v13, La/b/a/r/i;->c:[Ljava/lang/Object;

    aput-object v3, v0, v4

    .line 7
    iget v0, v13, La/b/a/r/i;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v13, La/b/a/r/i;->a:I

    iget v1, v13, La/b/a/r/i;->k:I

    if-lt v0, v1, :cond_1

    iget v0, v13, La/b/a/r/i;->d:I

    shl-int/2addr v0, v2

    invoke-virtual {v13, v0}, La/b/a/r/i;->b(I)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual/range {p0 .. p2}, La/b/a/r/i;->b(J)I

    move-result v8

    .line 9
    iget-object v5, v13, La/b/a/r/i;->b:[J

    aget-wide v9, v5, v8

    cmp-long v11, v9, v0

    if-nez v11, :cond_4

    .line 10
    aput-wide p1, v5, v8

    .line 11
    iget-object v0, v13, La/b/a/r/i;->c:[Ljava/lang/Object;

    aput-object v3, v0, v8

    .line 12
    iget v0, v13, La/b/a/r/i;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v13, La/b/a/r/i;->a:I

    iget v1, v13, La/b/a/r/i;->k:I

    if-lt v0, v1, :cond_3

    iget v0, v13, La/b/a/r/i;->d:I

    shl-int/2addr v0, v2

    invoke-virtual {v13, v0}, La/b/a/r/i;->b(I)V

    :cond_3
    return-void

    .line 13
    :cond_4
    invoke-virtual/range {p0 .. p2}, La/b/a/r/i;->c(J)I

    move-result v11

    .line 14
    iget-object v5, v13, La/b/a/r/i;->b:[J

    aget-wide v14, v5, v11

    cmp-long v12, v14, v0

    if-nez v12, :cond_6

    .line 15
    aput-wide p1, v5, v11

    .line 16
    iget-object v0, v13, La/b/a/r/i;->c:[Ljava/lang/Object;

    aput-object v3, v0, v11

    .line 17
    iget v0, v13, La/b/a/r/i;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v13, La/b/a/r/i;->a:I

    iget v1, v13, La/b/a/r/i;->k:I

    if-lt v0, v1, :cond_5

    iget v0, v13, La/b/a/r/i;->d:I

    shl-int/2addr v0, v2

    invoke-virtual {v13, v0}, La/b/a/r/i;->b(I)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide v5, v6

    move v7, v8

    move-wide v8, v9

    move v10, v11

    move-wide v11, v14

    .line 18
    invoke-virtual/range {v0 .. v12}, La/b/a/r/i;->a(JLjava/lang/Object;IJIJIJ)V

    return-void
.end method

.method public final c(J)I
    .locals 2

    const-wide/32 v0, -0x312e3dbf

    mul-long p1, p1, v0

    .line 1
    iget v0, p0, La/b/a/r/i;->i:I

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    iget v0, p0, La/b/a/r/i;->j:I

    int-to-long v0, v0

    and-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, La/b/a/r/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, La/b/a/r/i;

    .line 3
    iget v1, p1, La/b/a/r/i;->a:I

    iget v3, p0, La/b/a/r/i;->a:I

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-boolean v1, p1, La/b/a/r/i;->g:Z

    iget-boolean v3, p0, La/b/a/r/i;->g:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_5

    .line 5
    iget-object v1, p1, La/b/a/r/i;->f:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 6
    iget-object v1, p0, La/b/a/r/i;->f:Ljava/lang/Object;

    if-eqz v1, :cond_5

    return v2

    .line 7
    :cond_4
    iget-object v3, p0, La/b/a/r/i;->f:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 8
    :cond_5
    iget-object v1, p0, La/b/a/r/i;->b:[J

    .line 9
    iget-object v3, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

    .line 10
    iget v4, p0, La/b/a/r/i;->d:I

    iget v5, p0, La/b/a/r/i;->e:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_b

    .line 11
    aget-wide v6, v1, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_a

    .line 12
    aget-object v10, v3, v5

    if-nez v10, :cond_9

    .line 13
    sget-object v10, La/b/a/r/j;->p:Ljava/lang/Object;

    cmp-long v11, v6, v8

    if-nez v11, :cond_7

    .line 14
    iget-boolean v6, p1, La/b/a/r/i;->g:Z

    if-nez v6, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    iget-object v10, p1, La/b/a/r/i;->f:Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_7
    iget v8, p1, La/b/a/r/i;->j:I

    int-to-long v8, v8

    and-long/2addr v8, v6

    long-to-int v9, v8

    .line 17
    iget-object v8, p1, La/b/a/r/i;->b:[J

    aget-wide v11, v8, v9

    cmp-long v8, v11, v6

    if-eqz v8, :cond_8

    .line 18
    invoke-virtual {p1, v6, v7}, La/b/a/r/i;->b(J)I

    move-result v9

    .line 19
    iget-object v8, p1, La/b/a/r/i;->b:[J

    aget-wide v11, v8, v9

    cmp-long v8, v11, v6

    if-eqz v8, :cond_8

    .line 20
    invoke-virtual {p1, v6, v7}, La/b/a/r/i;->c(J)I

    move-result v9

    .line 21
    iget-object v8, p1, La/b/a/r/i;->b:[J

    aget-wide v11, v8, v9

    cmp-long v8, v11, v6

    if-eqz v8, :cond_8

    invoke-virtual {p1, v6, v7, v10}, La/b/a/r/i;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 22
    :cond_8
    iget-object v6, p1, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v10, v6, v9

    :goto_1
    if-eqz v10, :cond_a

    return v2

    .line 23
    :cond_9
    invoke-virtual {p1, v6, v7}, La/b/a/r/i;->a(J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    return v2

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 10

    .line 1
    iget-boolean v0, p0, La/b/a/r/i;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/a/r/i;->f:Ljava/lang/Object;

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
    iget-object v2, p0, La/b/a/r/i;->b:[J

    .line 4
    iget-object v3, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

    .line 5
    iget v4, p0, La/b/a/r/i;->d:I

    iget v5, p0, La/b/a/r/i;->e:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v1, v4, :cond_3

    .line 6
    aget-wide v5, v2, v1

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    const/16 v7, 0x20

    ushr-long v7, v5, v7

    xor-long/2addr v5, v7

    long-to-int v6, v5

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v0

    .line 7
    aget-object v0, v3, v1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v6

    goto :goto_2

    :cond_1
    move v0, v6

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
            "La/b/a/r/i$b<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/i;->n:La/b/a/r/i$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/b/a/r/i$a;

    invoke-direct {v0, p0}, La/b/a/r/i$a;-><init>(La/b/a/r/i;)V

    iput-object v0, p0, La/b/a/r/i;->n:La/b/a/r/i$a;

    .line 3
    new-instance v0, La/b/a/r/i$a;

    invoke-direct {v0, p0}, La/b/a/r/i$a;-><init>(La/b/a/r/i;)V

    iput-object v0, p0, La/b/a/r/i;->o:La/b/a/r/i$a;

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/r/i;->n:La/b/a/r/i$a;

    iget-boolean v1, v0, La/b/a/r/i$c;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, La/b/a/r/i$c;->b()V

    .line 6
    iget-object v0, p0, La/b/a/r/i;->n:La/b/a/r/i$a;

    iput-boolean v3, v0, La/b/a/r/i$c;->e:Z

    .line 7
    iget-object v1, p0, La/b/a/r/i;->o:La/b/a/r/i$a;

    iput-boolean v2, v1, La/b/a/r/i$c;->e:Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, La/b/a/r/i;->o:La/b/a/r/i$a;

    invoke-virtual {v0}, La/b/a/r/i$c;->b()V

    .line 9
    iget-object v0, p0, La/b/a/r/i;->o:La/b/a/r/i$a;

    iput-boolean v3, v0, La/b/a/r/i$c;->e:Z

    .line 10
    iget-object v1, p0, La/b/a/r/i;->n:La/b/a/r/i$a;

    iput-boolean v2, v1, La/b/a/r/i$c;->e:Z

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, La/b/a/r/i;->a:I

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
    iget-object v1, p0, La/b/a/r/i;->b:[J

    .line 5
    iget-object v2, p0, La/b/a/r/i;->c:[Ljava/lang/Object;

    .line 6
    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    const-wide/16 v6, 0x0

    if-lez v3, :cond_2

    .line 7
    aget-wide v8, v1, v4

    cmp-long v3, v8, v6

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v8, v9}, La/b/a/r/r;->a(J)La/b/a/r/r;

    .line 9
    invoke-virtual {v0, v5}, La/b/a/r/r;->a(C)V

    .line 10
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    :cond_2
    :goto_1
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_4

    .line 11
    aget-wide v8, v1, v3

    cmp-long v4, v8, v6

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v4, ", "

    .line 12
    invoke-virtual {v0, v4}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v8, v9}, La/b/a/r/r;->a(J)La/b/a/r/r;

    .line 14
    invoke-virtual {v0, v5}, La/b/a/r/r;->a(C)V

    .line 15
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    :goto_2
    move v4, v3

    goto :goto_1

    :cond_4
    const/16 v1, 0x5d

    .line 16
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(C)V

    .line 17
    invoke-virtual {v0}, La/b/a/r/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
