.class public La/b/a/o/m/d;
.super Ljava/lang/Object;
.source "GlyphLayout.java"

# interfaces
.implements La/b/a/r/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/m/d$a;
    }
.end annotation


# instance fields
.field public final a:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/m/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:F

.field public c:F

.field public final d:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/o/m/d;->a:La/b/a/r/a;

    .line 3
    new-instance v0, La/b/a/r/a;

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 4
    invoke-direct {v0, v1, v2}, La/b/a/r/a;-><init>(ZI)V

    .line 5
    iput-object v0, p0, La/b/a/o/m/d;->d:La/b/a/r/a;

    return-void
.end method

.method public constructor <init>(La/b/a/o/m/b;Ljava/lang/CharSequence;)V
    .locals 13

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/o/m/d;->a:La/b/a/r/a;

    .line 8
    new-instance v0, La/b/a/r/a;

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 9
    invoke-direct {v0, v1, v2}, La/b/a/r/a;-><init>(ZI)V

    .line 10
    iput-object v0, p0, La/b/a/o/m/d;->d:La/b/a/r/a;

    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 12
    iget-object v0, p1, La/b/a/o/m/b;->c:La/b/a/o/m/c;

    .line 13
    iget-object v8, v0, La/b/a/o/m/c;->f:La/b/a/o/a;

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 14
    invoke-virtual/range {v3 .. v12}, La/b/a/o/m/d;->a(La/b/a/o/m/b;Ljava/lang/CharSequence;IILa/b/a/o/a;FIZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 157
    const-class v0, La/b/a/o/m/d$a;

    invoke-static {v0}, La/b/a/r/m;->a(Ljava/lang/Class;)La/b/a/r/l;

    move-result-object v0

    iget-object v1, p0, La/b/a/o/m/d;->a:La/b/a/r/a;

    invoke-virtual {v0, v1}, La/b/a/r/l;->a(La/b/a/r/a;)V

    .line 158
    iget-object v0, p0, La/b/a/o/m/d;->a:La/b/a/r/a;

    invoke-virtual {v0}, La/b/a/r/a;->clear()V

    const/4 v0, 0x0

    .line 159
    iput v0, p0, La/b/a/o/m/d;->b:F

    .line 160
    iput v0, p0, La/b/a/o/m/d;->c:F

    return-void
.end method

.method public final a(La/b/a/o/m/b$a;La/b/a/o/m/d$a;)V
    .locals 5

    .line 150
    iget-object v0, p2, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    invoke-virtual {v0}, La/b/a/r/a;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/a/o/m/b$b;

    .line 151
    iget-boolean v1, v0, La/b/a/o/m/b$b;->n:Z

    if-eqz v1, :cond_0

    return-void

    .line 152
    :cond_0
    iget v1, v0, La/b/a/o/m/b$b;->d:I

    iget v0, v0, La/b/a/o/m/b$b;->j:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p1, La/b/a/o/m/b$a;->o:F

    mul-float v0, v0, v1

    iget p1, p1, La/b/a/o/m/b$a;->f:F

    sub-float/2addr v0, p1

    .line 153
    iget p1, p2, La/b/a/o/m/d$a;->e:F

    iget-object v1, p2, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    .line 154
    iget-object v2, v1, La/b/a/r/b;->a:[F

    iget v3, v1, La/b/a/r/b;->b:I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    sub-float v2, v0, v2

    add-float/2addr v2, p1

    .line 155
    iput v2, p2, La/b/a/o/m/d$a;->e:F

    add-int/lit8 v3, v3, -0x1

    .line 156
    invoke-virtual {v1, v3, v0}, La/b/a/r/b;->a(IF)V

    return-void
.end method

.method public a(La/b/a/o/m/b;Ljava/lang/CharSequence;IILa/b/a/o/a;FIZLjava/lang/String;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v1, p1

    .line 1
    iget-object v9, v1, La/b/a/o/m/b;->a:La/b/a/o/m/b$a;

    if-eqz p9, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget v1, v9, La/b/a/o/m/b$a;->t:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    cmpg-float v1, p6, v1

    if-gtz v1, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    move/from16 v12, p8

    .line 3
    :goto_0
    iget-boolean v13, v9, La/b/a/o/m/b$a;->q:Z

    .line 4
    const-class v1, La/b/a/o/m/d$a;

    invoke-static {v1}, La/b/a/r/m;->a(Ljava/lang/Class;)La/b/a/r/l;

    move-result-object v14

    .line 5
    iget-object v15, v0, La/b/a/o/m/d;->a:La/b/a/r/a;

    .line 6
    invoke-virtual {v14, v15}, La/b/a/r/l;->a(La/b/a/r/a;)V

    .line 7
    invoke-virtual {v15}, La/b/a/r/a;->clear()V

    .line 8
    iget-object v6, v0, La/b/a/o/m/d;->d:La/b/a/r/a;

    move-object/from16 v1, p5

    .line 9
    invoke-virtual {v6, v1}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 10
    const-class v2, La/b/a/o/a;

    invoke-static {v2}, La/b/a/r/m;->a(Ljava/lang/Class;)La/b/a/r/l;

    move-result-object v5

    const/16 v16, 0x0

    move/from16 v3, p3

    move-object v2, v1

    move-object/from16 v17, v2

    move-object/from16 p1, v16

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v1, v3

    :goto_1
    if-ne v1, v8, :cond_3

    if-ne v3, v8, :cond_2

    move-object/from16 v25, v5

    move-object v11, v6

    move/from16 v1, v18

    move/from16 v12, v20

    :goto_2
    move/from16 v2, v21

    goto/16 :goto_14

    :cond_2
    move v11, v1

    move/from16 v23, v12

    move/from16 v24, v13

    const/4 v1, -0x1

    const/4 v13, 0x0

    move v12, v8

    goto/16 :goto_b

    :cond_3
    add-int/lit8 v4, v1, 0x1

    .line 11
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v11, 0xa

    if-eq v1, v11, :cond_17

    const/16 v11, 0x5b

    if-eq v1, v11, :cond_5

    :cond_4
    move/from16 v23, v12

    move/from16 v24, v13

    goto/16 :goto_a

    :cond_5
    if-eqz v13, :cond_4

    if-ne v4, v8, :cond_7

    move/from16 v23, v12

    move/from16 v24, v13

    :cond_6
    :goto_3
    const/4 v1, -0x1

    goto/16 :goto_9

    .line 12
    :cond_7
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v11, 0x23

    move/from16 v24, v13

    const/16 v13, 0x5d

    if-eq v1, v11, :cond_e

    const/16 v11, 0x5b

    if-eq v1, v11, :cond_d

    if-eq v1, v13, :cond_b

    add-int/lit8 v1, v4, 0x1

    :goto_4
    if-ge v1, v8, :cond_a

    .line 13
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-eq v11, v13, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 14
    :cond_8
    invoke-interface {v7, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 15
    sget-object v13, La/b/a/o/b;->a:La/b/a/r/j;

    invoke-virtual {v13, v11}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La/b/a/o/a;

    if-nez v11, :cond_9

    goto :goto_5

    .line 16
    :cond_9
    invoke-virtual {v5}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, La/b/a/o/a;

    move/from16 v23, v12

    .line 17
    iget-object v12, v0, La/b/a/o/m/d;->d:La/b/a/r/a;

    invoke-virtual {v12, v13}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v13, v11}, La/b/a/o/a;->a(La/b/a/o/a;)La/b/a/o/a;

    sub-int/2addr v1, v4

    goto/16 :goto_9

    :cond_a
    :goto_5
    move/from16 v23, v12

    goto :goto_3

    :cond_b
    move/from16 v23, v12

    .line 19
    iget-object v1, v0, La/b/a/o/m/d;->d:La/b/a/r/a;

    iget v11, v1, La/b/a/r/a;->b:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_c

    invoke-virtual {v1}, La/b/a/r/a;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_d
    move/from16 v23, v12

    const/4 v1, -0x2

    goto :goto_9

    :cond_e
    move/from16 v23, v12

    add-int/lit8 v1, v4, 0x1

    const/4 v11, 0x0

    :goto_6
    if-ge v1, v8, :cond_6

    .line 20
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v13, :cond_12

    add-int/lit8 v12, v4, 0x2

    if-lt v1, v12, :cond_6

    add-int/lit8 v12, v4, 0x9

    if-le v1, v12, :cond_f

    goto :goto_3

    :cond_f
    sub-int/2addr v1, v4

    const/4 v12, 0x7

    if-gt v1, v12, :cond_11

    rsub-int/lit8 v12, v1, 0x9

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_10

    shl-int/lit8 v11, v11, 0x4

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_10
    or-int/lit16 v11, v11, 0xff

    .line 21
    :cond_11
    invoke-virtual {v5}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La/b/a/o/a;

    .line 22
    iget-object v13, v0, La/b/a/o/m/d;->d:La/b/a/r/a;

    invoke-virtual {v13, v12}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 23
    invoke-static {v12, v11}, La/b/a/o/a;->a(La/b/a/o/a;I)V

    goto :goto_9

    :cond_12
    const/16 v13, 0x30

    if-lt v12, v13, :cond_13

    const/16 v13, 0x39

    if-gt v12, v13, :cond_13

    mul-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, v12, -0x30

    goto :goto_8

    :cond_13
    const/16 v13, 0x61

    if-lt v12, v13, :cond_14

    const/16 v13, 0x66

    if-gt v12, v13, :cond_14

    mul-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, v12, -0x57

    goto :goto_8

    :cond_14
    const/16 v13, 0x41

    if-lt v12, v13, :cond_6

    const/16 v13, 0x46

    if-gt v12, v13, :cond_6

    mul-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, v12, -0x37

    :goto_8
    add-int/2addr v11, v12

    add-int/lit8 v1, v1, 0x1

    const/16 v13, 0x5d

    goto :goto_6

    :goto_9
    if-ltz v1, :cond_15

    add-int/lit8 v11, v4, -0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v4

    .line 24
    invoke-virtual {v6}, La/b/a/r/a;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b/a/o/a;

    move-object/from16 v17, v4

    move v12, v11

    const/4 v13, 0x0

    move v11, v1

    const/4 v1, -0x1

    goto :goto_b

    :cond_15
    const/4 v11, -0x2

    if-ne v1, v11, :cond_16

    add-int/lit8 v1, v4, 0x1

    move/from16 v12, v23

    move/from16 v13, v24

    goto/16 :goto_1

    :cond_16
    :goto_a
    move v11, v4

    const/4 v1, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    goto :goto_b

    :cond_17
    move/from16 v23, v12

    move/from16 v24, v13

    add-int/lit8 v11, v4, -0x1

    move v12, v11

    const/4 v1, -0x1

    const/4 v13, 0x1

    move v11, v4

    :goto_b
    if-eq v12, v1, :cond_4e

    if-eq v12, v3, :cond_4b

    .line 25
    invoke-virtual {v14}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, La/b/a/o/m/d$a;

    .line 26
    iget-object v1, v4, La/b/a/o/m/d$a;->f:La/b/a/o/a;

    invoke-virtual {v1, v2}, La/b/a/o/a;->a(La/b/a/o/a;)La/b/a/o/a;

    move-object v1, v9

    move-object v2, v4

    move/from16 p3, v3

    move-object/from16 v3, p2

    move-object v7, v4

    move/from16 p5, v11

    const/4 v11, 0x0

    move/from16 v4, p3

    move-object v11, v5

    move v5, v12

    move-object/from16 v25, v11

    move-object v11, v6

    move-object/from16 v6, p1

    .line 27
    invoke-virtual/range {v1 .. v6}, La/b/a/o/m/b$a;->a(La/b/a/o/m/d$a;Ljava/lang/CharSequence;IILa/b/a/o/m/b$b;)V

    .line 28
    iget-object v1, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    iget v1, v1, La/b/a/r/a;->b:I

    if-nez v1, :cond_18

    .line 29
    invoke-virtual {v14, v7}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v26, v22

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v22, v11

    goto/16 :goto_2e

    :cond_18
    move-object/from16 v1, p1

    if-eqz v1, :cond_1a

    .line 30
    iget-boolean v2, v1, La/b/a/o/m/b$b;->n:Z

    if-eqz v2, :cond_19

    iget v1, v1, La/b/a/o/m/b$b;->l:I

    int-to-float v1, v1

    iget v2, v9, La/b/a/o/m/b$a;->o:F

    mul-float v1, v1, v2

    goto :goto_c

    :cond_19
    iget v2, v1, La/b/a/o/m/b$b;->d:I

    iget v1, v1, La/b/a/o/m/b$b;->j:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    iget v2, v9, La/b/a/o/m/b$a;->o:F

    mul-float v1, v1, v2

    iget v2, v9, La/b/a/o/m/b$a;->f:F

    sub-float/2addr v1, v2

    :goto_c
    sub-float v18, v18, v1

    :cond_1a
    move/from16 v1, v18

    .line 31
    iget-object v2, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    invoke-virtual {v2}, La/b/a/r/a;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/o/m/b$b;

    .line 32
    iput v1, v7, La/b/a/o/m/d$a;->c:F

    .line 33
    iput v10, v7, La/b/a/o/m/d$a;->d:F

    if-nez v13, :cond_1b

    if-ne v12, v8, :cond_1c

    .line 34
    :cond_1b
    invoke-virtual {v0, v9, v7}, La/b/a/o/m/d;->a(La/b/a/o/m/b$a;La/b/a/o/m/d$a;)V

    .line 35
    :cond_1c
    invoke-virtual {v15, v7}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 36
    iget-object v3, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    iget-object v4, v3, La/b/a/r/b;->a:[F

    .line 37
    iget v3, v3, La/b/a/r/b;->b:I

    if-nez v23, :cond_1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v3, :cond_1d

    .line 38
    aget v18, v4, v6

    add-float v5, v5, v18

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1d
    add-float/2addr v1, v5

    .line 39
    iput v5, v7, La/b/a/o/m/d$a;->e:F

    goto :goto_e

    :cond_1e
    const/4 v5, 0x0

    .line 40
    aget v6, v4, v5

    add-float/2addr v1, v6

    .line 41
    aget v6, v4, v5

    iput v6, v7, La/b/a/o/m/d$a;->e:F

    const/4 v5, 0x1

    if-ge v3, v5, :cond_1f

    :goto_e
    move v4, v1

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v1, v20

    move/from16 v26, v22

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v22, v11

    goto/16 :goto_2f

    .line 42
    :cond_1f
    aget v18, v4, v5

    add-float v1, v1, v18

    .line 43
    aget v18, v4, v5

    add-float v6, v6, v18

    iput v6, v7, La/b/a/o/m/d$a;->e:F

    const/4 v5, 0x2

    move/from16 v6, v20

    :goto_f
    move-object/from16 p1, v2

    if-ge v5, v3, :cond_4a

    .line 44
    iget-object v2, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    move/from16 v18, v3

    add-int/lit8 v3, v5, -0x1

    invoke-virtual {v2, v3}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/o/m/b$b;

    move/from16 v20, v3

    .line 45
    iget v3, v2, La/b/a/o/m/b$b;->d:I

    iget v2, v2, La/b/a/o/m/b$b;->j:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, v9, La/b/a/o/m/b$a;->o:F

    mul-float v2, v2, v3

    iget v3, v9, La/b/a/o/m/b$a;->f:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v1

    cmpg-float v2, v2, p6

    if-gtz v2, :cond_20

    .line 46
    aget v2, v4, v5

    add-float/2addr v1, v2

    .line 47
    iget v2, v7, La/b/a/o/m/d$a;->e:F

    aget v3, v4, v5

    add-float/2addr v2, v3

    iput v2, v7, La/b/a/o/m/d$a;->e:F

    move-object/from16 v2, p1

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v26, v22

    const/4 v3, 0x0

    const/4 v8, 0x1

    move v12, v5

    move-object/from16 v22, v11

    const/4 v5, 0x0

    goto/16 :goto_2d

    :cond_20
    if-eqz p9, :cond_30

    .line 48
    invoke-virtual {v14}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, La/b/a/o/m/d$a;

    .line 49
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object v1, v9

    move-object v2, v8

    move-object/from16 v3, p9

    move v12, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, La/b/a/o/m/b$a;->a(La/b/a/o/m/d$a;Ljava/lang/CharSequence;IILa/b/a/o/m/b$b;)V

    .line 50
    iget-object v1, v8, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    iget v1, v1, La/b/a/r/b;->b:I

    if-lez v1, :cond_21

    .line 51
    invoke-virtual {v0, v9, v8}, La/b/a/o/m/d;->a(La/b/a/o/m/b$a;La/b/a/o/m/d$a;)V

    .line 52
    iget-object v1, v8, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    iget v1, v1, La/b/a/r/b;->b:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_10
    if-ge v2, v1, :cond_22

    .line 53
    iget-object v3, v8, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    invoke-virtual {v3, v2}, La/b/a/r/b;->a(I)F

    move-result v3

    add-float/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_21
    const/4 v4, 0x0

    :cond_22
    sub-float v1, p6, v4

    .line 54
    iget v2, v7, La/b/a/o/m/d$a;->c:F

    const/4 v3, 0x0

    .line 55
    :goto_11
    iget-object v5, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    iget v6, v5, La/b/a/r/b;->b:I

    if-ge v3, v6, :cond_24

    .line 56
    invoke-virtual {v5, v3}, La/b/a/r/b;->a(I)F

    move-result v5

    add-float/2addr v2, v5

    cmpl-float v6, v2, v1

    if-lez v6, :cond_23

    .line 57
    iget v1, v7, La/b/a/o/m/d$a;->c:F

    sub-float/2addr v2, v1

    sub-float/2addr v2, v5

    iput v2, v7, La/b/a/o/m/d$a;->e:F

    goto :goto_12

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_24
    :goto_12
    const/4 v1, 0x1

    if-le v3, v1, :cond_25

    .line 58
    iget-object v1, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, La/b/a/r/a;->c(I)V

    .line 59
    iget-object v1, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    invoke-virtual {v1, v3}, La/b/a/r/b;->c(I)V

    .line 60
    invoke-virtual {v0, v9, v7}, La/b/a/o/m/d;->a(La/b/a/o/m/b$a;La/b/a/o/m/d$a;)V

    .line 61
    iget-object v1, v8, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    iget v2, v1, La/b/a/r/b;->b:I

    if-lez v2, :cond_26

    iget-object v3, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-virtual {v3, v1, v5, v2}, La/b/a/r/b;->a(La/b/a/r/b;II)V

    goto :goto_13

    .line 62
    :cond_25
    iget-object v1, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    invoke-virtual {v1}, La/b/a/r/a;->clear()V

    .line 63
    iget-object v1, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    const/4 v2, 0x0

    .line 64
    iput v2, v1, La/b/a/r/b;->b:I

    .line 65
    iget-object v3, v8, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    .line 66
    iget-object v5, v3, La/b/a/r/b;->a:[F

    iget v3, v3, La/b/a/r/b;->b:I

    invoke-virtual {v1, v5, v2, v3}, La/b/a/r/b;->a([FII)V

    .line 67
    iget-object v1, v8, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    iget v3, v1, La/b/a/r/b;->b:I

    if-lez v3, :cond_26

    iget v3, v7, La/b/a/o/m/d$a;->e:F

    invoke-virtual {v1, v2}, La/b/a/r/b;->a(I)F

    move-result v1

    add-float/2addr v1, v3

    iput v1, v7, La/b/a/o/m/d$a;->e:F

    .line 68
    :cond_26
    :goto_13
    iget-object v1, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    iget-object v2, v8, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    invoke-virtual {v1, v2}, La/b/a/r/a;->a(La/b/a/r/a;)V

    .line 69
    iget v1, v7, La/b/a/o/m/d$a;->e:F

    add-float/2addr v1, v4

    iput v1, v7, La/b/a/o/m/d$a;->e:F

    .line 70
    invoke-virtual {v14, v8}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    .line 71
    iget v1, v7, La/b/a/o/m/d$a;->c:F

    iget v2, v7, La/b/a/o/m/d$a;->e:F

    add-float v18, v1, v2

    move/from16 v1, v18

    goto/16 :goto_2

    .line 72
    :goto_14
    invoke-static {v12, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 73
    iget v3, v11, La/b/a/r/a;->b:I

    const/4 v4, 0x1

    :goto_15
    if-ge v4, v3, :cond_27

    .line 74
    invoke-virtual {v11, v4}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v6, v25

    invoke-virtual {v6, v5}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 75
    :cond_27
    invoke-virtual {v11}, La/b/a/r/a;->clear()V

    and-int/lit8 v3, p7, 0x8

    if-nez v3, :cond_2e

    const/4 v3, 0x1

    and-int/lit8 v4, p7, 0x1

    if-eqz v4, :cond_28

    const/4 v11, 0x1

    goto :goto_16

    :cond_28
    const/4 v11, 0x0

    :goto_16
    const/high16 v3, -0x31000000

    .line 76
    iget v4, v15, La/b/a/r/a;->b:I

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    :goto_17
    const/high16 v6, 0x40000000    # 2.0f

    if-ge v10, v4, :cond_2c

    .line 77
    invoke-virtual {v15, v10}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La/b/a/o/m/d$a;

    .line 78
    iget v8, v7, La/b/a/o/m/d$a;->d:F

    cmpl-float v12, v8, v3

    if-eqz v12, :cond_2b

    sub-float v3, p6, v5

    if-eqz v11, :cond_29

    div-float/2addr v3, v6

    :cond_29
    :goto_18
    move/from16 v5, v19

    if-ge v5, v10, :cond_2a

    add-int/lit8 v19, v5, 0x1

    .line 79
    invoke-virtual {v15, v5}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/b/a/o/m/d$a;

    iget v6, v5, La/b/a/o/m/d$a;->c:F

    add-float/2addr v6, v3

    iput v6, v5, La/b/a/o/m/d$a;->c:F

    goto :goto_18

    :cond_2a
    move/from16 v19, v5

    move v3, v8

    const/4 v5, 0x0

    .line 80
    :cond_2b
    iget v6, v7, La/b/a/o/m/d$a;->c:F

    iget v7, v7, La/b/a/o/m/d$a;->e:F

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_2c
    sub-float v3, p6, v5

    if-eqz v11, :cond_2d

    div-float/2addr v3, v6

    :cond_2d
    :goto_19
    move/from16 v5, v19

    if-ge v5, v4, :cond_2e

    add-int/lit8 v19, v5, 0x1

    .line 81
    invoke-virtual {v15, v5}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/b/a/o/m/d$a;

    iget v6, v5, La/b/a/o/m/d$a;->c:F

    add-float/2addr v6, v3

    iput v6, v5, La/b/a/o/m/d$a;->c:F

    goto :goto_19

    .line 82
    :cond_2e
    iput v1, v0, La/b/a/o/m/d;->b:F

    .line 83
    iget-boolean v1, v9, La/b/a/o/m/b$a;->d:Z

    if-eqz v1, :cond_2f

    .line 84
    iget v1, v9, La/b/a/o/m/b$a;->j:F

    int-to-float v2, v2

    iget v3, v9, La/b/a/o/m/b$a;->m:F

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    move/from16 v4, v22

    int-to-float v1, v4

    mul-float v1, v1, v3

    iget v3, v9, La/b/a/o/m/b$a;->n:F

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    iput v1, v0, La/b/a/o/m/d;->c:F

    goto :goto_1a

    :cond_2f
    move/from16 v4, v22

    .line 85
    iget v1, v9, La/b/a/o/m/b$a;->j:F

    int-to-float v2, v2

    iget v3, v9, La/b/a/o/m/b$a;->m:F

    neg-float v5, v3

    mul-float v2, v2, v5

    add-float/2addr v2, v1

    int-to-float v1, v4

    neg-float v3, v3

    mul-float v1, v1, v3

    iget v3, v9, La/b/a/o/m/b$a;->n:F

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    iput v1, v0, La/b/a/o/m/d;->c:F

    :goto_1a
    return-void

    :cond_30
    move v2, v6

    move/from16 v4, v22

    move-object/from16 v6, v25

    .line 86
    iget-object v1, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    add-int/lit8 v3, v5, -0x1

    .line 87
    invoke-virtual {v1, v3}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 p1, v3

    move-object/from16 v3, v18

    check-cast v3, La/b/a/o/m/b$b;

    iget v3, v3, La/b/a/o/m/b$b;->a:I

    int-to-char v3, v3

    .line 88
    invoke-virtual {v9, v3}, La/b/a/o/m/b$a;->b(C)Z

    move-result v3

    if-eqz v3, :cond_31

    move/from16 v1, p1

    goto :goto_1c

    :cond_31
    move/from16 v3, p1

    :goto_1b
    if-lez v3, :cond_33

    .line 89
    invoke-virtual {v1, v3}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v22, v1

    move-object/from16 v1, v18

    check-cast v1, La/b/a/o/m/b$b;

    iget v1, v1, La/b/a/o/m/b$b;->a:I

    int-to-char v1, v1

    .line 90
    invoke-virtual {v9, v1}, La/b/a/o/m/b$a;->b(C)Z

    move-result v1

    if-eqz v1, :cond_32

    add-int/lit8 v1, v3, 0x1

    goto :goto_1c

    :cond_32
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, v22

    goto :goto_1b

    :cond_33
    const/4 v1, 0x0

    .line 91
    :goto_1c
    iget v3, v7, La/b/a/o/m/d$a;->c:F

    const/16 v18, 0x0

    cmpl-float v3, v3, v18

    if-nez v3, :cond_34

    if-eqz v1, :cond_35

    :cond_34
    iget-object v3, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    iget v3, v3, La/b/a/r/a;->b:I

    if-lt v1, v3, :cond_36

    :cond_35
    move/from16 v3, v20

    goto :goto_1d

    :cond_36
    move v3, v1

    :goto_1d
    if-nez v3, :cond_3d

    const/4 v1, 0x0

    .line 92
    iput v1, v7, La/b/a/o/m/d$a;->e:F

    .line 93
    iget-object v1, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    iget v1, v1, La/b/a/r/a;->b:I

    :goto_1e
    if-ge v3, v1, :cond_38

    .line 94
    iget-object v5, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    invoke-virtual {v5, v3}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/b/a/o/m/b$b;

    iget v5, v5, La/b/a/o/m/b$b;->a:I

    int-to-char v5, v5

    invoke-virtual {v9, v5}, La/b/a/o/m/b$a;->b(C)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_1f

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_38
    :goto_1f
    if-lez v3, :cond_39

    .line 95
    iget-object v1, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    add-int/lit8 v5, v3, -0x1

    move-object/from16 v25, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, La/b/a/r/a;->a(II)V

    .line 96
    iget-object v1, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3}, La/b/a/r/b;->a(II)V

    goto :goto_20

    :cond_39
    move-object/from16 v25, v6

    .line 97
    :goto_20
    iget-object v1, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    iget-object v3, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    invoke-virtual {v3}, La/b/a/r/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/b/a/o/m/b$b;

    iget v3, v3, La/b/a/o/m/b$b;->j:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v5, v9, La/b/a/o/m/b$a;->o:F

    mul-float v3, v3, v5

    iget v5, v9, La/b/a/o/m/b$a;->h:F

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, La/b/a/r/b;->a(IF)V

    .line 98
    iget v1, v15, La/b/a/r/a;->b:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_3c

    add-int/lit8 v1, v1, -0x2

    .line 99
    invoke-virtual {v15, v1}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/d$a;

    .line 100
    iget-object v5, v1, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    iget v5, v5, La/b/a/r/a;->b:I

    sub-int/2addr v5, v3

    :goto_21
    if-lez v5, :cond_3b

    .line 101
    iget-object v3, v1, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    invoke-virtual {v3, v5}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/b/a/o/m/b$b;

    .line 102
    iget v3, v3, La/b/a/o/m/b$b;->a:I

    int-to-char v3, v3

    invoke-virtual {v9, v3}, La/b/a/o/m/b$a;->b(C)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_22

    .line 103
    :cond_3a
    iget v3, v1, La/b/a/o/m/d$a;->e:F

    iget-object v6, v1, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v8}, La/b/a/r/b;->a(I)F

    move-result v6

    sub-float/2addr v3, v6

    iput v3, v1, La/b/a/o/m/d$a;->e:F

    add-int/lit8 v5, v5, -0x1

    move/from16 v8, p4

    goto :goto_21

    .line 104
    :cond_3b
    :goto_22
    iget-object v3, v1, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, La/b/a/r/a;->c(I)V

    .line 105
    iget-object v3, v1, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v5}, La/b/a/r/b;->c(I)V

    .line 106
    invoke-virtual {v0, v9, v1}, La/b/a/o/m/d;->a(La/b/a/o/m/b$a;La/b/a/o/m/d$a;)V

    .line 107
    iget v3, v1, La/b/a/o/m/d$a;->c:F

    iget v1, v1, La/b/a/o/m/d$a;->e:F

    add-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v6, v1

    goto :goto_23

    :cond_3c
    move v6, v2

    :goto_23
    move/from16 v26, v4

    move-object/from16 v22, v11

    move/from16 v27, v12

    move/from16 v28, v13

    goto/16 :goto_2c

    :cond_3d
    move-object/from16 v25, v6

    .line 108
    iget-object v1, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    .line 109
    iget v6, v1, La/b/a/r/a;->b:I

    .line 110
    iget-object v8, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    move/from16 p1, v3

    :goto_24
    if-lez v3, :cond_3f

    move/from16 v18, v5

    add-int/lit8 v5, v3, -0x1

    .line 111
    invoke-virtual {v1, v5}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v22, v5

    move-object/from16 v5, v20

    check-cast v5, La/b/a/o/m/b$b;

    iget v5, v5, La/b/a/o/m/b$b;->a:I

    int-to-char v5, v5

    invoke-virtual {v9, v5}, La/b/a/o/m/b$a;->b(C)Z

    move-result v5

    if-nez v5, :cond_3e

    goto :goto_25

    :cond_3e
    move/from16 v5, v18

    move/from16 v3, v22

    goto :goto_24

    :cond_3f
    move/from16 v18, v5

    :goto_25
    move/from16 v5, p1

    :goto_26
    if-ge v5, v6, :cond_41

    .line 112
    invoke-virtual {v1, v5}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v22, v11

    move-object/from16 v11, v20

    check-cast v11, La/b/a/o/m/b$b;

    iget v11, v11, La/b/a/o/m/b$b;->a:I

    int-to-char v11, v11

    invoke-virtual {v9, v11}, La/b/a/o/m/b$a;->b(C)Z

    move-result v11

    if-nez v11, :cond_40

    goto :goto_27

    :cond_40
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v11, v22

    goto :goto_26

    :cond_41
    move-object/from16 v22, v11

    :goto_27
    move/from16 v11, v18

    :goto_28
    if-ge v11, v3, :cond_42

    move/from16 v26, v4

    .line 113
    iget v4, v7, La/b/a/o/m/d$a;->e:F

    add-int/lit8 v18, v11, 0x1

    invoke-virtual {v8, v11}, La/b/a/r/b;->a(I)F

    move-result v11

    add-float/2addr v11, v4

    iput v11, v7, La/b/a/o/m/d$a;->e:F

    move/from16 v11, v18

    move/from16 v4, v26

    goto :goto_28

    :cond_42
    move/from16 v26, v4

    add-int/lit8 v4, v3, 0x1

    :goto_29
    if-le v11, v4, :cond_43

    move/from16 v27, v12

    .line 114
    iget v12, v7, La/b/a/o/m/d$a;->e:F

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, La/b/a/r/b;->a(I)F

    move-result v18

    sub-float v12, v12, v18

    iput v12, v7, La/b/a/o/m/d$a;->e:F

    move/from16 v12, v27

    goto :goto_29

    :cond_43
    move/from16 v27, v12

    if-ge v5, v6, :cond_46

    .line 115
    invoke-virtual {v14}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/b/a/o/m/d$a;

    .line 116
    iget-object v11, v6, La/b/a/o/m/d$a;->f:La/b/a/o/a;

    iget-object v12, v7, La/b/a/o/m/d$a;->f:La/b/a/o/a;

    invoke-virtual {v11, v12}, La/b/a/o/a;->a(La/b/a/o/a;)La/b/a/o/a;

    .line 117
    iget-object v11, v6, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    if-eqz v11, :cond_45

    add-int/lit8 v12, v3, 0x0

    move/from16 v28, v13

    .line 118
    iget v13, v1, La/b/a/r/a;->b:I

    if-gt v12, v13, :cond_44

    .line 119
    iget-object v12, v1, La/b/a/r/a;->a:[Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v3}, La/b/a/r/a;->a([Ljava/lang/Object;II)V

    add-int/lit8 v12, v5, -0x1

    .line 120
    invoke-virtual {v1, v13, v12}, La/b/a/r/a;->a(II)V

    .line 121
    iput-object v11, v7, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    .line 122
    iput-object v1, v6, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    .line 123
    iget-object v11, v6, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    .line 124
    invoke-virtual {v11, v8, v13, v4}, La/b/a/r/b;->a(La/b/a/r/b;II)V

    const/4 v4, 0x1

    .line 125
    invoke-virtual {v8, v4, v5}, La/b/a/r/b;->a(II)V

    .line 126
    invoke-virtual {v1}, La/b/a/r/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/b$b;

    iget v1, v1, La/b/a/o/m/b$b;->j:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v4, v9, La/b/a/o/m/b$a;->o:F

    mul-float v1, v1, v4

    iget v4, v9, La/b/a/o/m/b$a;->h:F

    sub-float/2addr v1, v4

    invoke-virtual {v8, v13, v1}, La/b/a/r/b;->a(IF)V

    .line 127
    iput-object v11, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    .line 128
    iput-object v8, v6, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    goto :goto_2a

    :cond_44
    const/4 v13, 0x0

    .line 129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start + count must be <= size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " <= "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, La/b/a/r/a;->b:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_45
    throw v16

    :cond_46
    move/from16 v28, v13

    .line 131
    invoke-virtual {v1, v3}, La/b/a/r/a;->c(I)V

    .line 132
    invoke-virtual {v8, v4}, La/b/a/r/b;->c(I)V

    move-object/from16 v6, v16

    :goto_2a
    if-nez v3, :cond_47

    .line 133
    invoke-virtual {v14, v7}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    .line 134
    iget-object v1, v0, La/b/a/o/m/d;->a:La/b/a/r/a;

    invoke-virtual {v1}, La/b/a/r/a;->pop()Ljava/lang/Object;

    goto :goto_2b

    .line 135
    :cond_47
    invoke-virtual {v0, v9, v7}, La/b/a/o/m/d;->a(La/b/a/o/m/b$a;La/b/a/o/m/d$a;)V

    .line 136
    :goto_2b
    iget v1, v7, La/b/a/o/m/d$a;->c:F

    iget v3, v7, La/b/a/o/m/d$a;->e:F

    add-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    if-nez v6, :cond_48

    .line 137
    iget v1, v9, La/b/a/o/m/b$a;->m:F

    add-float/2addr v10, v1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v2, v16

    move/from16 v1, v20

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2f

    .line 138
    :cond_48
    invoke-virtual {v15, v6}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    move-object v7, v6

    move/from16 v6, v20

    .line 139
    :goto_2c
    iget-object v1, v7, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    iget v2, v1, La/b/a/r/b;->b:I

    .line 140
    iget-object v1, v1, La/b/a/r/b;->a:[F

    const/4 v3, 0x0

    .line 141
    aget v4, v1, v3

    const/4 v5, 0x1

    if-le v2, v5, :cond_49

    .line 142
    aget v8, v1, v5

    add-float/2addr v4, v8

    .line 143
    :cond_49
    iget v5, v7, La/b/a/o/m/d$a;->e:F

    add-float/2addr v5, v4

    iput v5, v7, La/b/a/o/m/d$a;->e:F

    .line 144
    iget v5, v9, La/b/a/o/m/b$a;->m:F

    add-float/2addr v10, v5

    add-int/lit8 v21, v21, 0x1

    const/4 v5, 0x0

    .line 145
    iput v5, v7, La/b/a/o/m/d$a;->c:F

    .line 146
    iput v10, v7, La/b/a/o/m/d$a;->d:F

    move/from16 v18, v2

    move-object/from16 v2, v16

    const/4 v8, 0x1

    const/4 v12, 0x1

    move/from16 v29, v4

    move-object v4, v1

    move/from16 v1, v29

    :goto_2d
    add-int/lit8 v11, v12, 0x1

    move/from16 v8, p4

    move v5, v11

    move/from16 v3, v18

    move-object/from16 v11, v22

    move/from16 v22, v26

    move/from16 v12, v27

    move/from16 v13, v28

    goto/16 :goto_f

    :cond_4a
    move v2, v6

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v26, v22

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v22, v11

    move v4, v1

    move v1, v2

    move-object/from16 v2, p1

    goto :goto_2f

    :cond_4b
    move-object/from16 v1, p1

    move/from16 p3, v3

    move-object/from16 v25, v5

    move/from16 p5, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v26, v22

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v22, v6

    :goto_2e
    move-object v2, v1

    move/from16 v4, v18

    move/from16 v1, v20

    :goto_2f
    if-eqz v28, :cond_4d

    .line 147
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 148
    iget v2, v9, La/b/a/o/m/b$a;->m:F

    move/from16 v4, p3

    move/from16 v11, v27

    if-ne v11, v4, :cond_4c

    .line 149
    iget v4, v9, La/b/a/o/m/b$a;->n:F

    mul-float v2, v2, v4

    add-int/lit8 v4, v26, 0x1

    move/from16 v26, v4

    goto :goto_30

    :cond_4c
    add-int/lit8 v21, v21, 0x1

    :goto_30
    add-float/2addr v10, v2

    move-object/from16 v2, v16

    const/4 v4, 0x0

    :cond_4d
    move/from16 v20, v1

    move-object v1, v2

    move/from16 v18, v4

    move-object/from16 v2, v17

    move/from16 v4, p5

    goto :goto_31

    :cond_4e
    move-object/from16 v1, p1

    move v4, v3

    move-object/from16 v25, v5

    move/from16 p5, v11

    move/from16 v26, v22

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v22, v6

    :goto_31
    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 p1, v1

    move v3, v4

    move-object/from16 v6, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move-object/from16 v5, v25

    move/from16 v22, v26

    move/from16 v1, p5

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, La/b/a/o/m/d;->a:La/b/a/r/a;

    iget v0, v0, La/b/a/r/a;->b:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    iget v1, p0, La/b/a/o/m/d;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, La/b/a/o/m/d;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, La/b/a/o/m/d;->a:La/b/a/r/a;

    iget v3, v3, La/b/a/r/a;->b:I

    :goto_0
    if-ge v2, v3, :cond_1

    .line 8
    iget-object v4, p0, La/b/a/o/m/d;->a:La/b/a/r/a;

    invoke-virtual {v4, v2}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b/a/o/m/d$a;

    invoke-virtual {v4}, La/b/a/o/m/d$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
