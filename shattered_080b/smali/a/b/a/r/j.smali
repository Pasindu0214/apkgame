.class public La/b/a/r/j;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/r/j$c;,
        La/b/a/r/j$a;,
        La/b/a/r/j$d;,
        La/b/a/r/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "La/b/a/r/j$b<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final p:Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:La/b/a/r/j$a;

.field public m:La/b/a/r/j$a;

.field public n:La/b/a/r/j$c;

.field public o:La/b/a/r/j$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La/b/a/r/j;->p:Ljava/lang/Object;

    return-void
.end method

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
    iput v0, p0, La/b/a/r/j;->d:I

    .line 4
    iput v1, p0, La/b/a/r/j;->f:F

    int-to-float v2, v0

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 5
    iput v1, p0, La/b/a/r/j;->i:I

    add-int/lit8 v1, v0, -0x1

    .line 6
    iput v1, p0, La/b/a/r/j;->h:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, La/b/a/r/j;->g:I

    const/4 v0, 0x3

    .line 8
    iget v1, p0, La/b/a/r/j;->d:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/a/r/j;->j:I

    .line 9
    iget v0, p0, La/b/a/r/j;->d:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, La/b/a/r/j;->d:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/a/r/j;->k:I

    .line 10
    iget v0, p0, La/b/a/r/j;->d:I

    iget v1, p0, La/b/a/r/j;->j:I

    add-int/2addr v0, v1

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

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
.method public final a(I)I
    .locals 1

    const v0, -0x4b47d1c7

    mul-int p1, p1, v0

    .line 49
    iget v0, p0, La/b/a/r/j;->g:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, La/b/a/r/j;->h:I

    and-int/2addr p1, v0

    return p1
.end method

.method public a()La/b/a/r/j$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/j$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, La/b/a/r/j$a;

    invoke-direct {v0, p0}, La/b/a/r/j$a;-><init>(La/b/a/r/j;)V

    iput-object v0, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    .line 52
    new-instance v0, La/b/a/r/j$a;

    invoke-direct {v0, p0}, La/b/a/r/j$a;-><init>(La/b/a/r/j;)V

    iput-object v0, p0, La/b/a/r/j;->m:La/b/a/r/j$a;

    .line 53
    :cond_0
    iget-object v0, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    iget-boolean v1, v0, La/b/a/r/j$d;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 54
    invoke-virtual {v0}, La/b/a/r/j$d;->b()V

    .line 55
    iget-object v0, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    iput-boolean v3, v0, La/b/a/r/j$d;->e:Z

    .line 56
    iget-object v1, p0, La/b/a/r/j;->m:La/b/a/r/j$a;

    iput-boolean v2, v1, La/b/a/r/j$d;->e:Z

    return-object v0

    .line 57
    :cond_1
    iget-object v0, p0, La/b/a/r/j;->m:La/b/a/r/j$a;

    invoke-virtual {v0}, La/b/a/r/j$d;->b()V

    .line 58
    iget-object v0, p0, La/b/a/r/j;->m:La/b/a/r/j$a;

    iput-boolean v3, v0, La/b/a/r/j$d;->e:Z

    .line 59
    iget-object v1, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    iput-boolean v2, v1, La/b/a/r/j$d;->e:Z

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 39
    iget v1, p0, La/b/a/r/j;->h:I

    and-int/2addr v1, v0

    .line 40
    iget-object v2, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {p0, v0}, La/b/a/r/j;->a(I)I

    move-result v1

    .line 42
    iget-object v2, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {p0, v0}, La/b/a/r/j;->b(I)I

    move-result v1

    .line 44
    iget-object v0, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/b/a/r/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 47
    iget v1, p0, La/b/a/r/j;->d:I

    iget v2, p0, La/b/a/r/j;->e:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 48
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;ITK;ITK;ITK;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 2
    iget-object v2, v0, La/b/a/r/j;->c:[Ljava/lang/Object;

    .line 3
    iget v3, v0, La/b/a/r/j;->h:I

    .line 4
    iget v4, v0, La/b/a/r/j;->k:I

    const/4 v5, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x2

    .line 5
    invoke-static {v14}, La/b/a/p/a;->c(I)I

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_1

    if-eq v14, v15, :cond_0

    .line 6
    aget-object v7, v2, v11

    .line 7
    aput-object v5, v1, v11

    .line 8
    aput-object v6, v2, v11

    move-object v6, v7

    move-object v5, v12

    goto :goto_1

    .line 9
    :cond_0
    aget-object v7, v2, v9

    .line 10
    aput-object v5, v1, v9

    .line 11
    aput-object v6, v2, v9

    move-object v6, v7

    move-object v5, v10

    goto :goto_1

    .line 12
    :cond_1
    aget-object v9, v2, v7

    .line 13
    aput-object v5, v1, v7

    .line 14
    aput-object v6, v2, v7

    move-object v5, v8

    move-object v6, v9

    .line 15
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    and-int v8, v7, v3

    .line 16
    aget-object v9, v1, v8

    if-nez v9, :cond_3

    .line 17
    aput-object v5, v1, v8

    .line 18
    aput-object v6, v2, v8

    .line 19
    iget v1, v0, La/b/a/r/j;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, La/b/a/r/j;->a:I

    iget v2, v0, La/b/a/r/j;->i:I

    if-lt v1, v2, :cond_2

    iget v1, v0, La/b/a/r/j;->d:I

    shl-int/2addr v1, v15

    invoke-virtual {v0, v1}, La/b/a/r/j;->d(I)V

    :cond_2
    return-void

    .line 20
    :cond_3
    invoke-virtual {v0, v7}, La/b/a/r/j;->a(I)I

    move-result v10

    .line 21
    aget-object v11, v1, v10

    if-nez v11, :cond_5

    .line 22
    aput-object v5, v1, v10

    .line 23
    aput-object v6, v2, v10

    .line 24
    iget v1, v0, La/b/a/r/j;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, La/b/a/r/j;->a:I

    iget v2, v0, La/b/a/r/j;->i:I

    if-lt v1, v2, :cond_4

    iget v1, v0, La/b/a/r/j;->d:I

    shl-int/2addr v1, v15

    invoke-virtual {v0, v1}, La/b/a/r/j;->d(I)V

    :cond_4
    return-void

    .line 25
    :cond_5
    invoke-virtual {v0, v7}, La/b/a/r/j;->b(I)I

    move-result v7

    .line 26
    aget-object v12, v1, v7

    if-nez v12, :cond_7

    .line 27
    aput-object v5, v1, v7

    .line 28
    aput-object v6, v2, v7

    .line 29
    iget v1, v0, La/b/a/r/j;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, La/b/a/r/j;->a:I

    iget v2, v0, La/b/a/r/j;->i:I

    if-lt v1, v2, :cond_6

    iget v1, v0, La/b/a/r/j;->d:I

    shl-int/2addr v1, v15

    invoke-virtual {v0, v1}, La/b/a/r/j;->d(I)V

    :cond_6
    return-void

    :cond_7
    add-int/2addr v13, v15

    if-ne v13, v4, :cond_9

    .line 30
    iget v1, v0, La/b/a/r/j;->e:I

    iget v2, v0, La/b/a/r/j;->j:I

    if-ne v1, v2, :cond_8

    .line 31
    iget v1, v0, La/b/a/r/j;->d:I

    shl-int/2addr v1, v15

    invoke-virtual {v0, v1}, La/b/a/r/j;->d(I)V

    .line 32
    invoke-virtual {v0, v5, v6}, La/b/a/r/j;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 33
    :cond_8
    iget v2, v0, La/b/a/r/j;->d:I

    add-int/2addr v2, v1

    .line 34
    iget-object v3, v0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aput-object v5, v3, v2

    .line 35
    iget-object v3, v0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aput-object v6, v3, v2

    add-int/2addr v1, v15

    .line 36
    iput v1, v0, La/b/a/r/j;->e:I

    .line 37
    iget v1, v0, La/b/a/r/j;->a:I

    add-int/2addr v1, v15

    iput v1, v0, La/b/a/r/j;->a:I

    :goto_2
    return-void

    :cond_9
    move-object/from16 v16, v11

    move v11, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move-object/from16 v10, v16

    goto/16 :goto_0
.end method

.method public final b(I)I
    .locals 1

    const v0, -0x312e3dbf

    mul-int p1, p1, v0

    .line 33
    iget v0, p0, La/b/a/r/j;->g:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, La/b/a/r/j;->h:I

    and-int/2addr p1, v0

    return p1
.end method

.method public b()La/b/a/r/j$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/j$c<",
            "TK;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, La/b/a/r/j$c;

    invoke-direct {v0, p0}, La/b/a/r/j$c;-><init>(La/b/a/r/j;)V

    iput-object v0, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    .line 36
    new-instance v0, La/b/a/r/j$c;

    invoke-direct {v0, p0}, La/b/a/r/j$c;-><init>(La/b/a/r/j;)V

    iput-object v0, p0, La/b/a/r/j;->o:La/b/a/r/j$c;

    .line 37
    :cond_0
    iget-object v0, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    iget-boolean v1, v0, La/b/a/r/j$d;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 38
    invoke-virtual {v0}, La/b/a/r/j$d;->b()V

    .line 39
    iget-object v0, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    iput-boolean v3, v0, La/b/a/r/j$d;->e:Z

    .line 40
    iget-object v1, p0, La/b/a/r/j;->o:La/b/a/r/j$c;

    iput-boolean v2, v1, La/b/a/r/j$d;->e:Z

    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, La/b/a/r/j;->o:La/b/a/r/j$c;

    invoke-virtual {v0}, La/b/a/r/j$d;->b()V

    .line 42
    iget-object v0, p0, La/b/a/r/j;->o:La/b/a/r/j$c;

    iput-boolean v3, v0, La/b/a/r/j$d;->e:Z

    .line 43
    iget-object v1, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    iput-boolean v2, v1, La/b/a/r/j$d;->e:Z

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    iget-object v0, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    iget v2, p0, La/b/a/r/j;->h:I

    and-int v6, v1, v2

    .line 4
    aget-object v7, v0, v6

    .line 5
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v0, p1, v6

    .line 7
    aput-object p2, p1, v6

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0, v1}, La/b/a/r/j;->a(I)I

    move-result v8

    .line 9
    aget-object v9, v0, v8

    .line 10
    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v0, p1, v8

    .line 12
    aput-object p2, p1, v8

    return-object v0

    .line 13
    :cond_1
    invoke-virtual {p0, v1}, La/b/a/r/j;->b(I)I

    move-result v10

    .line 14
    aget-object v11, v0, v10

    .line 15
    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v0, p1, v10

    .line 17
    aput-object p2, p1, v10

    return-object v0

    .line 18
    :cond_2
    iget v1, p0, La/b/a/r/j;->d:I

    iget v2, p0, La/b/a/r/j;->e:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 19
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 20
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v0, p1, v1

    .line 21
    aput-object p2, p1, v1

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    if-nez v7, :cond_6

    .line 22
    aput-object p1, v0, v6

    .line 23
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aput-object p2, p1, v6

    .line 24
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/j;->a:I

    iget p2, p0, La/b/a/r/j;->i:I

    if-lt p1, p2, :cond_5

    iget p1, p0, La/b/a/r/j;->d:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, La/b/a/r/j;->d(I)V

    :cond_5
    return-object v1

    :cond_6
    if-nez v9, :cond_8

    .line 25
    aput-object p1, v0, v8

    .line 26
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aput-object p2, p1, v8

    .line 27
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/j;->a:I

    iget p2, p0, La/b/a/r/j;->i:I

    if-lt p1, p2, :cond_7

    iget p1, p0, La/b/a/r/j;->d:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, La/b/a/r/j;->d(I)V

    :cond_7
    return-object v1

    :cond_8
    if-nez v11, :cond_a

    .line 28
    aput-object p1, v0, v10

    .line 29
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aput-object p2, p1, v10

    .line 30
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/j;->a:I

    iget p2, p0, La/b/a/r/j;->i:I

    if-lt p1, p2, :cond_9

    iget p1, p0, La/b/a/r/j;->d:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, La/b/a/r/j;->d(I)V

    :cond_9
    return-object v1

    :cond_a
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 31
    invoke-virtual/range {v3 .. v11}, La/b/a/r/j;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    return-object v1

    .line 32
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public c(I)V
    .locals 5

    .line 18
    iget v0, p0, La/b/a/r/j;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/a/r/j;->e:I

    .line 19
    iget v1, p0, La/b/a/r/j;->d:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    if-ge p1, v1, :cond_0

    .line 20
    iget-object v2, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    .line 21
    iget-object v3, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v4, v3, v1

    aput-object v4, v3, p1

    .line 22
    aput-object v0, v2, v1

    .line 23
    aput-object v0, v3, v1

    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 25
    iget-object v1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aput-object v0, v1, p1

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget v1, p0, La/b/a/r/j;->h:I

    and-int v5, v0, v1

    .line 3
    iget-object v1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v6, v1, v5

    if-nez v6, :cond_1

    .line 4
    aput-object p1, v1, v5

    .line 5
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aput-object p2, p1, v5

    .line 6
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/j;->a:I

    iget p2, p0, La/b/a/r/j;->i:I

    if-lt p1, p2, :cond_0

    iget p1, p0, La/b/a/r/j;->d:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, La/b/a/r/j;->d(I)V

    :cond_0
    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, La/b/a/r/j;->a(I)I

    move-result v7

    .line 8
    iget-object v1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v8, v1, v7

    if-nez v8, :cond_3

    .line 9
    aput-object p1, v1, v7

    .line 10
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aput-object p2, p1, v7

    .line 11
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/j;->a:I

    iget p2, p0, La/b/a/r/j;->i:I

    if-lt p1, p2, :cond_2

    iget p1, p0, La/b/a/r/j;->d:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, La/b/a/r/j;->d(I)V

    :cond_2
    return-void

    .line 12
    :cond_3
    invoke-virtual {p0, v0}, La/b/a/r/j;->b(I)I

    move-result v9

    .line 13
    iget-object v0, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v10, v0, v9

    if-nez v10, :cond_5

    .line 14
    aput-object p1, v0, v9

    .line 15
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aput-object p2, p1, v9

    .line 16
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/b/a/r/j;->a:I

    iget p2, p0, La/b/a/r/j;->i:I

    if-lt p1, p2, :cond_4

    iget p1, p0, La/b/a/r/j;->d:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, La/b/a/r/j;->d(I)V

    :cond_4
    return-void

    :cond_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 17
    invoke-virtual/range {v2 .. v10}, La/b/a/r/j;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    iget v0, p0, La/b/a/r/j;->a:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 3
    iget-object v1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    .line 4
    iget v2, p0, La/b/a/r/j;->d:I

    iget v3, p0, La/b/a/r/j;->e:I

    add-int/2addr v2, v3

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 5
    aput-object v2, v0, v3

    .line 6
    aput-object v2, v1, v3

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput v0, p0, La/b/a/r/j;->a:I

    .line 8
    iput v0, p0, La/b/a/r/j;->e:I

    return-void
.end method

.method public final d(I)V
    .locals 5

    .line 1
    iget v0, p0, La/b/a/r/j;->d:I

    iget v1, p0, La/b/a/r/j;->e:I

    add-int/2addr v0, v1

    .line 2
    iput p1, p0, La/b/a/r/j;->d:I

    int-to-float v1, p1

    .line 3
    iget v2, p0, La/b/a/r/j;->f:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, La/b/a/r/j;->i:I

    add-int/lit8 v1, p1, -0x1

    .line 4
    iput v1, p0, La/b/a/r/j;->h:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, La/b/a/r/j;->g:I

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

    iput v3, p0, La/b/a/r/j;->j:I

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

    iput v1, p0, La/b/a/r/j;->k:I

    .line 8
    iget-object v1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 9
    iget-object v2, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    .line 10
    iget v3, p0, La/b/a/r/j;->j:I

    add-int v4, p1, v3

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    add-int/2addr p1, v3

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    .line 12
    iget p1, p0, La/b/a/r/j;->a:I

    const/4 v3, 0x0

    .line 13
    iput v3, p0, La/b/a/r/j;->a:I

    .line 14
    iput v3, p0, La/b/a/r/j;->e:I

    if-lez p1, :cond_1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 15
    aget-object p1, v1, v3

    if-eqz p1, :cond_0

    .line 16
    aget-object v4, v2, v3

    invoke-virtual {p0, p1, v4}, La/b/a/r/j;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, La/b/a/r/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, La/b/a/r/j;

    .line 3
    iget v1, p1, La/b/a/r/j;->a:I

    iget v3, p0, La/b/a/r/j;->a:I

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 5
    iget-object v3, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    .line 6
    iget v4, p0, La/b/a/r/j;->d:I

    iget v5, p0, La/b/a/r/j;->e:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    .line 7
    aget-object v6, v1, v5

    if-eqz v6, :cond_5

    .line 8
    aget-object v7, v3, v5

    if-nez v7, :cond_4

    .line 9
    sget-object v7, La/b/a/r/j;->p:Ljava/lang/Object;

    .line 10
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 11
    iget v9, p1, La/b/a/r/j;->h:I

    and-int/2addr v9, v8

    .line 12
    iget-object v10, p1, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v10, v10, v9

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 13
    invoke-virtual {p1, v8}, La/b/a/r/j;->a(I)I

    move-result v9

    .line 14
    iget-object v10, p1, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v10, v10, v9

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 15
    invoke-virtual {p1, v8}, La/b/a/r/j;->b(I)I

    move-result v9

    .line 16
    iget-object v8, p1, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1, v6, v7}, La/b/a/r/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 17
    :cond_3
    iget-object v6, p1, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v6, v6, v9

    :goto_1
    if-eqz v6, :cond_5

    return v2

    .line 18
    :cond_4
    invoke-virtual {p1, v6}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 2
    iget-object v1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    .line 3
    iget v2, p0, La/b/a/r/j;->d:I

    iget v3, p0, La/b/a/r/j;->e:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    aget-object v5, v0, v3

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v4

    .line 6
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v4, v5

    goto :goto_1

    :cond_0
    move v4, v5

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public iterator()La/b/a/r/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/j$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, La/b/a/r/j;->a()La/b/a/r/j$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, La/b/a/r/j;->iterator()La/b/a/r/j$a;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget v1, p0, La/b/a/r/j;->h:I

    and-int/2addr v1, v0

    .line 3
    iget-object v2, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 5
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v0, p1, v1

    .line 6
    aput-object v3, p1, v1

    .line 7
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/b/a/r/j;->a:I

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, La/b/a/r/j;->a(I)I

    move-result v1

    .line 9
    iget-object v2, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object p1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 11
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v0, p1, v1

    .line 12
    aput-object v3, p1, v1

    .line 13
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/b/a/r/j;->a:I

    return-object v0

    .line 14
    :cond_1
    invoke-virtual {p0, v0}, La/b/a/r/j;->b(I)I

    move-result v0

    .line 15
    iget-object v1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object p1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 17
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v1, p1, v0

    .line 18
    aput-object v3, p1, v0

    .line 19
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/b/a/r/j;->a:I

    return-object v1

    .line 20
    :cond_2
    iget-object v0, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 21
    iget v1, p0, La/b/a/r/j;->d:I

    iget v2, p0, La/b/a/r/j;->e:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 22
    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    iget-object p1, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v3, p1, v1

    .line 24
    invoke-virtual {p0, v1}, La/b/a/r/j;->c(I)V

    .line 25
    iget p1, p0, La/b/a/r/j;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/b/a/r/j;->a:I

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, La/b/a/r/j;->a:I

    if-nez v0, :cond_0

    const-string v0, "{}"

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, La/b/a/r/r;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, La/b/a/r/r;-><init>(I)V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(C)V

    .line 4
    iget-object v1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 5
    iget-object v2, p0, La/b/a/r/j;->c:[Ljava/lang/Object;

    .line 6
    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    if-lez v3, :cond_2

    .line 7
    aget-object v3, v1, v4

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

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
    aget-object v4, v1, v3

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, ", "

    .line 12
    invoke-virtual {v0, v6}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v4}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    .line 14
    invoke-virtual {v0, v5}, La/b/a/r/r;->a(C)V

    .line 15
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    :goto_2
    move v4, v3

    goto :goto_1

    :cond_4
    const/16 v1, 0x7d

    .line 16
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(C)V

    .line 17
    invoke-virtual {v0}, La/b/a/r/r;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0
.end method
