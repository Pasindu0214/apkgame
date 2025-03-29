.class public La/b/a/o/m/e$e;
.super Ljava/lang/Object;
.source "PixmapPacker.java"

# interfaces
.implements La/b/a/o/m/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/m/e$e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b/a/o/m/e;Ljava/lang/String;La/b/a/p/c;)La/b/a/o/m/e$c;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 1
    iget v2, v0, La/b/a/o/m/e;->f:I

    .line 2
    iget v3, v0, La/b/a/o/m/e;->c:I

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v5, v0, La/b/a/o/m/e;->d:I

    sub-int/2addr v5, v4

    .line 3
    iget v4, v1, La/b/a/p/c;->c:F

    float-to-int v4, v4

    add-int/2addr v4, v2

    iget v6, v1, La/b/a/p/c;->d:F

    float-to-int v6, v6

    add-int/2addr v6, v2

    .line 4
    iget-object v7, v0, La/b/a/o/m/e;->k:La/b/a/r/a;

    iget v7, v7, La/b/a/r/a;->b:I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_a

    .line 5
    iget-object v10, v0, La/b/a/o/m/e;->k:La/b/a/r/a;

    invoke-virtual {v10, v9}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La/b/a/o/m/e$e$a;

    const/4 v11, 0x0

    .line 6
    iget-object v12, v10, La/b/a/o/m/e$e$a;->f:La/b/a/r/a;

    iget v12, v12, La/b/a/r/a;->b:I

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_5

    .line 7
    iget-object v14, v10, La/b/a/o/m/e$e$a;->f:La/b/a/r/a;

    invoke-virtual {v14, v13}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La/b/a/o/m/e$e$a$a;

    .line 8
    iget v15, v14, La/b/a/o/m/e$e$a$a;->a:I

    add-int/2addr v15, v4

    if-lt v15, v3, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    iget v15, v14, La/b/a/o/m/e$e$a$a;->b:I

    add-int/2addr v15, v6

    if-lt v15, v5, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    iget v15, v14, La/b/a/o/m/e$e$a$a;->c:I

    if-le v6, v15, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v11, :cond_3

    .line 11
    iget v8, v11, La/b/a/o/m/e$e$a$a;->c:I

    if-ge v15, v8, :cond_4

    :cond_3
    move-object v11, v14

    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    if-nez v11, :cond_8

    .line 12
    iget-object v8, v10, La/b/a/o/m/e$e$a;->f:La/b/a/r/a;

    invoke-virtual {v8}, La/b/a/r/a;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/b/a/o/m/e$e$a$a;

    .line 13
    iget v12, v8, La/b/a/o/m/e$e$a$a;->b:I

    add-int v13, v12, v6

    if-lt v13, v5, :cond_6

    goto :goto_4

    .line 14
    :cond_6
    iget v13, v8, La/b/a/o/m/e$e$a$a;->a:I

    add-int/2addr v13, v4

    if-ge v13, v3, :cond_7

    .line 15
    iget v11, v8, La/b/a/o/m/e$e$a$a;->c:I

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v8, La/b/a/o/m/e$e$a$a;->c:I

    move-object v11, v8

    goto :goto_3

    .line 16
    :cond_7
    iget v13, v8, La/b/a/o/m/e$e$a$a;->c:I

    add-int/2addr v12, v13

    add-int/2addr v12, v6

    if-ge v12, v5, :cond_8

    .line 17
    new-instance v11, La/b/a/o/m/e$e$a$a;

    invoke-direct {v11}, La/b/a/o/m/e$e$a$a;-><init>()V

    .line 18
    iget v12, v8, La/b/a/o/m/e$e$a$a;->b:I

    iget v8, v8, La/b/a/o/m/e$e$a$a;->c:I

    add-int/2addr v12, v8

    iput v12, v11, La/b/a/o/m/e$e$a$a;->b:I

    .line 19
    iput v6, v11, La/b/a/o/m/e$e$a$a;->c:I

    .line 20
    iget-object v8, v10, La/b/a/o/m/e$e$a;->f:La/b/a/r/a;

    invoke-virtual {v8, v11}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    .line 21
    iget v0, v11, La/b/a/o/m/e$e$a$a;->a:I

    int-to-float v2, v0

    iput v2, v1, La/b/a/p/c;->a:F

    .line 22
    iget v2, v11, La/b/a/o/m/e$e$a$a;->b:I

    int-to-float v2, v2

    iput v2, v1, La/b/a/p/c;->b:F

    add-int/2addr v0, v4

    .line 23
    iput v0, v11, La/b/a/o/m/e$e$a$a;->a:I

    return-object v10

    :cond_9
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 24
    :cond_a
    new-instance v3, La/b/a/o/m/e$e$a;

    invoke-direct {v3, v0}, La/b/a/o/m/e$e$a;-><init>(La/b/a/o/m/e;)V

    .line 25
    iget-object v0, v0, La/b/a/o/m/e;->k:La/b/a/r/a;

    invoke-virtual {v0, v3}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 26
    new-instance v0, La/b/a/o/m/e$e$a$a;

    invoke-direct {v0}, La/b/a/o/m/e$e$a$a;-><init>()V

    add-int/2addr v4, v2

    .line 27
    iput v4, v0, La/b/a/o/m/e$e$a$a;->a:I

    .line 28
    iput v2, v0, La/b/a/o/m/e$e$a$a;->b:I

    .line 29
    iput v6, v0, La/b/a/o/m/e$e$a$a;->c:I

    .line 30
    iget-object v4, v3, La/b/a/o/m/e$e$a;->f:La/b/a/r/a;

    invoke-virtual {v4, v0}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    int-to-float v0, v2

    .line 31
    iput v0, v1, La/b/a/p/c;->a:F

    .line 32
    iput v0, v1, La/b/a/p/c;->b:F

    return-object v3
.end method
