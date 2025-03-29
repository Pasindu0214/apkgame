.class public La/b/a/o/m/e;
.super Ljava/lang/Object;
.source "PixmapPacker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/m/e$d;,
        La/b/a/o/m/e$e;,
        La/b/a/o/m/e$a;,
        La/b/a/o/m/e$b;,
        La/b/a/o/m/e$c;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:I

.field public e:La/b/a/o/g$c;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:La/b/a/o/a;

.field public final k:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/m/e$c;",
            ">;"
        }
    .end annotation
.end field

.field public l:La/b/a/o/m/e$b;

.field public m:La/b/a/o/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(.+)_(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILa/b/a/o/g$c;IZZZLa/b/a/o/m/e$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/a/o/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, La/b/a/o/a;-><init>(FFFF)V

    iput-object v0, p0, La/b/a/o/m/e;->j:La/b/a/o/a;

    .line 3
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/o/m/e;->k:La/b/a/r/a;

    .line 4
    new-instance v0, La/b/a/o/a;

    invoke-direct {v0}, La/b/a/o/a;-><init>()V

    iput-object v0, p0, La/b/a/o/m/e;->m:La/b/a/o/a;

    .line 5
    iput p1, p0, La/b/a/o/m/e;->c:I

    .line 6
    iput p2, p0, La/b/a/o/m/e;->d:I

    .line 7
    iput-object p3, p0, La/b/a/o/m/e;->e:La/b/a/o/g$c;

    .line 8
    iput p4, p0, La/b/a/o/m/e;->f:I

    .line 9
    iput-boolean p5, p0, La/b/a/o/m/e;->g:Z

    .line 10
    iput-boolean p6, p0, La/b/a/o/m/e;->h:Z

    .line 11
    iput-boolean p7, p0, La/b/a/o/m/e;->i:Z

    .line 12
    iput-object p8, p0, La/b/a/o/m/e;->l:La/b/a/o/m/e$b;

    return-void
.end method


# virtual methods
.method public final a(La/b/a/o/g;IIZZ)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    new-array v2, v2, [I

    if-eqz p5, :cond_0

    move/from16 v3, p2

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    :goto_0
    if-eqz p5, :cond_1

    .line 100
    iget-object v4, v1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 101
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    goto :goto_1

    .line 102
    :cond_1
    iget-object v4, v1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 103
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    :goto_1
    const/16 v5, 0xff

    const/4 v6, 0x0

    if-eqz p4, :cond_2

    const/16 v7, 0xff

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    move/from16 v8, p3

    move v9, v3

    move/from16 v3, p2

    :goto_3
    if-eq v9, v4, :cond_8

    if-eqz p5, :cond_3

    move v3, v9

    goto :goto_4

    :cond_3
    move v8, v9

    .line 104
    :goto_4
    invoke-virtual {v1, v3, v8}, La/b/a/o/g;->a(II)I

    move-result v10

    .line 105
    iget-object v11, v0, La/b/a/o/m/e;->m:La/b/a/o/a;

    if-eqz v11, :cond_7

    .line 106
    invoke-static {v11, v10}, La/b/a/o/a;->a(La/b/a/o/a;I)V

    .line 107
    iget-object v10, v0, La/b/a/o/m/e;->m:La/b/a/o/a;

    iget v11, v10, La/b/a/o/a;->a:F

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v11, v11, v12

    float-to-int v11, v11

    aput v11, v2, v6

    .line 108
    iget v11, v10, La/b/a/o/a;->b:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    const/4 v13, 0x1

    aput v11, v2, v13

    .line 109
    iget v11, v10, La/b/a/o/a;->c:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    const/4 v14, 0x2

    aput v11, v2, v14

    .line 110
    iget v10, v10, La/b/a/o/a;->d:F

    mul-float v10, v10, v12

    float-to-int v10, v10

    const/4 v11, 0x3

    aput v10, v2, v11

    .line 111
    aget v10, v2, v11

    if-ne v10, v7, :cond_4

    return v9

    :cond_4
    if-nez p4, :cond_6

    .line 112
    aget v10, v2, v6

    if-nez v10, :cond_5

    aget v10, v2, v13

    if-nez v10, :cond_5

    aget v10, v2, v14

    if-nez v10, :cond_5

    aget v10, v2, v11

    if-eq v10, v5, :cond_6

    :cond_5
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 113
    throw v1

    :cond_8
    return v6
.end method

.method public declared-synchronized a(Ljava/lang/String;)La/b/a/p/c;
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, La/b/a/o/m/e;->k:La/b/a/r/a;

    invoke-virtual {v0}, La/b/a/r/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/e$c;

    .line 97
    iget-object v1, v1, La/b/a/o/m/e$c;->a:La/b/a/r/k;

    invoke-virtual {v1, p1}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/p/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 98
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 99
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;La/b/a/o/g;)La/b/a/p/c;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v2, v1, La/b/a/o/m/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v10

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    :try_start_1
    invoke-virtual/range {p0 .. p1}, La/b/a/o/m/e;->a(Ljava/lang/String;)La/b/a/p/c;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v2, La/b/a/r/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pixmap has already been packed with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_3

    const-string v2, ".9"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 5
    new-instance v13, La/b/a/o/m/e$d;

    .line 6
    iget-object v2, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 7
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    add-int/lit8 v2, v2, -0x2

    .line 8
    iget-object v4, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 9
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    add-int/lit8 v4, v4, -0x2

    .line 10
    invoke-direct {v13, v11, v11, v2, v4}, La/b/a/o/m/e$d;-><init>(IIII)V

    .line 11
    new-instance v14, La/b/a/o/g;

    .line 12
    iget-object v2, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 13
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    add-int/lit8 v2, v2, -0x2

    .line 14
    iget-object v4, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 15
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    add-int/lit8 v4, v4, -0x2

    .line 16
    invoke-virtual/range {p2 .. p2}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object v5

    invoke-direct {v14, v2, v4, v5}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 17
    sget-object v2, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    invoke-virtual {v14, v2}, La/b/a/o/g;->a(La/b/a/o/g$a;)V

    .line 18
    invoke-virtual {v1, v3}, La/b/a/o/m/e;->a(La/b/a/o/g;)[I

    move-result-object v2

    iput-object v2, v13, La/b/a/o/m/e$d;->e:[I

    .line 19
    invoke-virtual {v1, v3, v2}, La/b/a/o/m/e;->a(La/b/a/o/g;[I)[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 20
    iget-object v2, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 21
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    add-int/lit8 v8, v2, -0x1

    .line 22
    iget-object v2, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 23
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    add-int/lit8 v9, v2, -0x1

    move-object v2, v14

    move-object/from16 v3, p2

    .line 24
    invoke-virtual/range {v2 .. v9}, La/b/a/o/g;->a(La/b/a/o/g;IIIIII)V

    const-string v2, "\\."

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v11

    goto/16 :goto_11

    .line 26
    :cond_4
    iget-boolean v2, v1, La/b/a/o/m/e;->h:Z

    if-nez v2, :cond_6

    iget-boolean v2, v1, La/b/a/o/m/e;->i:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 27
    :cond_5
    new-instance v2, La/b/a/o/m/e$d;

    .line 28
    iget-object v4, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 29
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 30
    iget-object v5, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 31
    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 32
    invoke-direct {v2, v11, v11, v4, v5}, La/b/a/o/m/e$d;-><init>(IIII)V

    move-object v4, v10

    goto/16 :goto_12

    .line 33
    :cond_6
    :goto_2
    iget-object v2, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 34
    iget v15, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 35
    iget-object v2, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 36
    iget v14, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 37
    iget-object v2, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 38
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 39
    iget-boolean v4, v1, La/b/a/o/m/e;->i:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 40
    :goto_3
    iget-object v6, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 41
    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    if-ge v4, v6, :cond_9

    const/4 v6, 0x0

    .line 42
    :goto_4
    iget-object v7, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 43
    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    if-ge v6, v7, :cond_8

    .line 44
    invoke-virtual {v3, v6, v4}, La/b/a/o/g;->a(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-lez v7, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 45
    :cond_9
    :goto_5
    iget-object v4, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 46
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    :goto_6
    add-int/lit8 v4, v4, -0x1

    if-lt v4, v5, :cond_c

    const/4 v6, 0x0

    .line 47
    :goto_7
    iget-object v7, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 48
    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    if-ge v6, v7, :cond_b

    .line 49
    invoke-virtual {v3, v6, v4}, La/b/a/o/g;->a(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-lez v7, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_c
    :goto_8
    move/from16 v19, v5

    goto :goto_9

    :cond_d
    const/16 v19, 0x0

    .line 50
    :goto_9
    iget-object v4, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 51
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 52
    iget-boolean v5, v1, La/b/a/o/m/e;->h:Z

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    .line 53
    :goto_a
    iget-object v6, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 54
    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    if-ge v11, v6, :cond_10

    move/from16 v6, v19

    :goto_b
    if-ge v6, v2, :cond_f

    .line 55
    invoke-virtual {v3, v11, v6}, La/b/a/o/g;->a(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-lez v7, :cond_e

    goto :goto_c

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_f
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 56
    :cond_10
    :goto_c
    iget-object v6, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 57
    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    :goto_d
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v5, :cond_13

    move/from16 v7, v19

    :goto_e
    if-ge v7, v2, :cond_12

    .line 58
    invoke-virtual {v3, v6, v7}, La/b/a/o/g;->a(II)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-lez v8, :cond_11

    goto :goto_f

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    :cond_13
    :goto_f
    move/from16 v18, v5

    goto :goto_10

    :cond_14
    const/16 v18, 0x0

    :goto_10
    sub-int v11, v4, v18

    sub-int v13, v2, v19

    .line 59
    new-instance v9, La/b/a/o/g;

    invoke-virtual/range {p2 .. p2}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object v2

    invoke-direct {v9, v11, v13, v2}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 60
    sget-object v2, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    invoke-virtual {v9, v2}, La/b/a/o/g;->a(La/b/a/o/g$a;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v9

    move-object/from16 v3, p2

    move/from16 v6, v18

    move/from16 v7, v19

    move v8, v11

    move-object/from16 v22, v9

    move v9, v13

    .line 61
    invoke-virtual/range {v2 .. v9}, La/b/a/o/g;->a(La/b/a/o/g;IIIIII)V

    .line 62
    new-instance v2, La/b/a/o/m/e$d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v13

    move-object v13, v2

    move v6, v14

    move v14, v3

    move v3, v15

    move v15, v4

    move/from16 v16, v11

    move/from16 v17, v5

    move/from16 v20, v3

    move/from16 v21, v6

    invoke-direct/range {v13 .. v21}, La/b/a/o/m/e$d;-><init>(IIIIIIII)V

    move-object v13, v2

    move-object/from16 v14, v22

    :goto_11
    move-object v2, v13

    move-object v3, v14

    move-object v4, v3

    .line 63
    :goto_12
    iget v5, v2, La/b/a/p/c;->c:F

    .line 64
    iget v6, v1, La/b/a/o/m/e;->c:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1b

    .line 65
    iget v5, v2, La/b/a/p/c;->d:F

    .line 66
    iget v6, v1, La/b/a/o/m/e;->d:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_15

    goto/16 :goto_14

    .line 67
    :cond_15
    iget-object v5, v1, La/b/a/o/m/e;->l:La/b/a/o/m/e$b;

    invoke-interface {v5, v1, v0, v2}, La/b/a/o/m/e$b;->a(La/b/a/o/m/e;Ljava/lang/String;La/b/a/p/c;)La/b/a/o/m/e$c;

    move-result-object v5

    if-eqz v0, :cond_16

    .line 68
    iget-object v6, v5, La/b/a/o/m/e$c;->a:La/b/a/r/k;

    invoke-virtual {v6, v0, v2}, La/b/a/r/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v6, v5, La/b/a/o/m/e$c;->d:La/b/a/r/a;

    invoke-virtual {v6, v0}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 70
    :cond_16
    iget v0, v2, La/b/a/p/c;->a:F

    float-to-int v0, v0

    iget v6, v2, La/b/a/p/c;->b:F

    float-to-int v6, v6

    iget v7, v2, La/b/a/p/c;->c:F

    float-to-int v7, v7

    iget v8, v2, La/b/a/p/c;->d:F

    float-to-int v8, v8

    .line 71
    iget-boolean v9, v1, La/b/a/o/m/e;->a:Z

    if-eqz v9, :cond_18

    iget-boolean v9, v1, La/b/a/o/m/e;->g:Z

    if-nez v9, :cond_18

    iget-object v9, v5, La/b/a/o/m/e$c;->c:La/b/a/o/i;

    if-eqz v9, :cond_18

    iget-boolean v9, v5, La/b/a/o/m/e$c;->e:Z

    if-nez v9, :cond_18

    .line 72
    iget-object v9, v5, La/b/a/o/m/e$c;->c:La/b/a/o/i;

    invoke-virtual {v9}, La/b/a/o/e;->a()V

    .line 73
    sget-object v9, La/b/a/e;->g:La/b/a/o/d;

    iget-object v11, v5, La/b/a/o/m/e$c;->c:La/b/a/o/i;

    iget v13, v11, La/b/a/o/e;->a:I

    const/4 v14, 0x0

    invoke-virtual {v3}, La/b/a/o/g;->d()I

    move-result v19

    .line 74
    invoke-virtual {v3}, La/b/a/o/g;->f()I

    move-result v20

    invoke-virtual {v3}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 75
    check-cast v9, La/b/a/m/a/j;

    if-eqz v9, :cond_17

    move v15, v0

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    .line 76
    invoke-static/range {v13 .. v21}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_13

    :cond_17
    throw v10

    .line 77
    :cond_18
    iput-boolean v12, v5, La/b/a/o/m/e$c;->e:Z

    .line 78
    :goto_13
    iget-object v9, v5, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    invoke-virtual {v9, v3, v0, v6}, La/b/a/o/g;->a(La/b/a/o/g;II)V

    .line 79
    iget-boolean v9, v1, La/b/a/o/m/e;->g:Z

    if-eqz v9, :cond_19

    .line 80
    iget-object v9, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 81
    iget v9, v9, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 82
    iget-object v10, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 83
    iget v10, v10, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 84
    iget-object v13, v5, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    add-int/lit8 v11, v0, -0x1

    add-int/lit8 v12, v6, -0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v22}, La/b/a/o/g;->a(La/b/a/o/g;IIIIIIII)V

    .line 85
    iget-object v13, v5, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    add-int/lit8 v23, v9, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    add-int v24, v0, v7

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v15, v23

    move/from16 v19, v24

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v22}, La/b/a/o/g;->a(La/b/a/o/g;IIIIIIII)V

    .line 86
    iget-object v13, v5, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    const/4 v15, 0x0

    add-int/lit8 v25, v10, -0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    add-int v26, v6, v8

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v16, v25

    move/from16 v19, v11

    move/from16 v20, v26

    invoke-virtual/range {v13 .. v22}, La/b/a/o/g;->a(La/b/a/o/g;IIIIIIII)V

    .line 87
    iget-object v13, v5, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v15, v23

    move/from16 v16, v25

    move/from16 v19, v24

    move/from16 v20, v26

    invoke-virtual/range {v13 .. v22}, La/b/a/o/g;->a(La/b/a/o/g;IIIIIIII)V

    .line 88
    iget-object v13, v5, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v17, v9

    move/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v7

    invoke-virtual/range {v13 .. v22}, La/b/a/o/g;->a(La/b/a/o/g;IIIIIIII)V

    .line 89
    iget-object v13, v5, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    const/4 v15, 0x0

    const/16 v18, 0x1

    const/16 v22, 0x1

    move-object v14, v3

    move/from16 v16, v25

    move/from16 v17, v9

    move/from16 v19, v0

    move/from16 v20, v26

    move/from16 v21, v7

    invoke-virtual/range {v13 .. v22}, La/b/a/o/g;->a(La/b/a/o/g;IIIIIIII)V

    .line 90
    iget-object v13, v5, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    move-object v14, v3

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v6

    move/from16 v22, v8

    invoke-virtual/range {v13 .. v22}, La/b/a/o/g;->a(La/b/a/o/g;IIIIIIII)V

    .line 91
    iget-object v13, v5, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    move-object v14, v3

    move/from16 v15, v23

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v6

    move/from16 v22, v8

    invoke-virtual/range {v13 .. v22}, La/b/a/o/g;->a(La/b/a/o/g;IIIIIIII)V

    :cond_19
    if-eqz v4, :cond_1a

    .line 92
    invoke-virtual {v4}, La/b/a/o/g;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :cond_1a
    monitor-exit p0

    return-object v2

    :cond_1b
    :goto_14
    if-nez v0, :cond_1c

    .line 94
    :try_start_2
    new-instance v0, La/b/a/r/d;

    const-string v2, "Page size too small for pixmap."

    invoke-direct {v0, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1c
    new-instance v2, La/b/a/r/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page size too small for pixmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15
.end method

.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, La/b/a/o/m/e;->k:La/b/a/r/a;

    invoke-virtual {v0}, La/b/a/r/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/e$c;

    .line 133
    iget-object v2, v1, La/b/a/o/m/e$c;->c:La/b/a/o/i;

    if-nez v2, :cond_0

    .line 134
    iget-object v1, v1, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    invoke-virtual {v1}, La/b/a/o/g;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, La/b/a/o/m/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized a(La/b/a/o/i$a;La/b/a/o/i$a;Z)V
    .locals 11

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, La/b/a/o/m/e;->k:La/b/a/r/a;

    invoke-virtual {v0}, La/b/a/r/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/e$c;

    .line 142
    iget-object v2, v1, La/b/a/o/m/e$c;->c:La/b/a/o/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 143
    iget-boolean v4, v1, La/b/a/o/m/e$c;->e:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v4, v2, La/b/a/o/i;->g:La/b/a/o/l;

    .line 145
    invoke-virtual {v2, v4}, La/b/a/o/i;->a(La/b/a/o/l;)V

    goto :goto_1

    .line 146
    :cond_1
    new-instance v2, La/b/a/o/m/f;

    new-instance v10, La/b/a/o/n/h;

    iget-object v5, v1, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    invoke-virtual {v5}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v10

    move v7, p3

    invoke-direct/range {v4 .. v9}, La/b/a/o/n/h;-><init>(La/b/a/o/g;La/b/a/o/g$c;ZZZ)V

    invoke-direct {v2, v1, v10}, La/b/a/o/m/f;-><init>(La/b/a/o/m/e$c;La/b/a/o/l;)V

    iput-object v2, v1, La/b/a/o/m/e$c;->c:La/b/a/o/i;

    .line 147
    invoke-virtual {v2, p1, p2}, La/b/a/o/e;->a(La/b/a/o/i$a;La/b/a/o/i$a;)V

    .line 148
    :goto_1
    iput-boolean v3, v1, La/b/a/o/m/e$c;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized a(La/b/a/r/a;La/b/a/o/i$a;La/b/a/o/i$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/a<",
            "La/b/a/o/m/h;",
            ">;",
            "La/b/a/o/i$a;",
            "La/b/a/o/i$a;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, La/b/a/o/m/e;->a(La/b/a/o/i$a;La/b/a/o/i$a;Z)V

    .line 138
    :goto_0
    iget p2, p1, La/b/a/r/a;->b:I

    iget-object p3, p0, La/b/a/o/m/e;->k:La/b/a/r/a;

    iget p3, p3, La/b/a/r/a;->b:I

    if-ge p2, p3, :cond_0

    .line 139
    new-instance p2, La/b/a/o/m/h;

    iget-object p3, p0, La/b/a/o/m/e;->k:La/b/a/r/a;

    iget p4, p1, La/b/a/r/a;->b:I

    invoke-virtual {p3, p4}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La/b/a/o/m/e$c;

    iget-object p3, p3, La/b/a/o/m/e$c;->c:La/b/a/o/i;

    invoke-direct {p2, p3}, La/b/a/o/m/h;-><init>(La/b/a/o/i;)V

    invoke-virtual {p1, p2}, La/b/a/r/a;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final a(La/b/a/o/g;)[I
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 150
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    move-result v6

    const/4 v4, 0x0

    move v2, v6

    .line 151
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    move-result v8

    const/4 v4, 0x0

    move v3, v8

    .line 153
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    move-result v9

    add-int/lit8 v2, v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 154
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    add-int/lit8 v3, v9, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 155
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz v6, :cond_1

    add-int/lit8 v6, v6, -0x1

    .line 156
    iget-object v2, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 157
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    sub-int/2addr v2, v0

    sub-int/2addr v7, v1

    sub-int/2addr v2, v7

    goto :goto_0

    .line 158
    :cond_1
    iget-object v2, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 159
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    sub-int/2addr v2, v0

    :goto_0
    if-eqz v8, :cond_2

    add-int/lit8 v8, v8, -0x1

    .line 160
    iget-object v3, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 161
    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    sub-int/2addr v3, v0

    sub-int/2addr v9, v1

    sub-int/2addr v3, v9

    goto :goto_1

    .line 162
    :cond_2
    iget-object v3, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 163
    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    sub-int/2addr v3, v0

    :goto_1
    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v6, v4, v5

    aput v2, v4, v1

    aput v8, v4, v0

    const/4 v0, 0x3

    aput v3, v4, v0

    return-object v4
.end method

.method public final a(La/b/a/o/g;[I)[I
    .locals 16

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 114
    iget-object v0, v6, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 115
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/4 v8, 0x1

    add-int/lit8 v9, v1, -0x1

    .line 116
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    add-int/lit8 v10, v0, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    .line 117
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    move-result v11

    const/4 v3, 0x1

    const/4 v5, 0x0

    move v2, v10

    .line 118
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    move-result v12

    const/4 v13, 0x0

    if-eqz v11, :cond_0

    add-int/lit8 v2, v11, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    .line 119
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    move-result v0

    move v14, v0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v3, v12, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    .line 120
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    move-result v0

    move v15, v0

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    add-int/lit8 v2, v14, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    .line 121
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    add-int/lit8 v3, v15, 0x1

    const/4 v5, 0x0

    move v2, v10

    .line 122
    invoke-virtual/range {v0 .. v5}, La/b/a/o/m/e;->a(La/b/a/o/g;IIZZ)I

    const/4 v0, 0x0

    if-nez v11, :cond_2

    if-nez v14, :cond_2

    if-nez v12, :cond_2

    if-nez v15, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x2

    const/4 v2, -0x1

    if-nez v11, :cond_3

    if-nez v14, :cond_3

    const/4 v3, -0x1

    const/4 v11, -0x1

    goto :goto_2

    :cond_3
    if-lez v11, :cond_4

    add-int/lit8 v11, v11, -0x1

    .line 123
    iget-object v3, v6, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 124
    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    sub-int/2addr v3, v1

    sub-int/2addr v14, v8

    sub-int/2addr v3, v14

    goto :goto_2

    .line 125
    :cond_4
    iget-object v3, v6, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 126
    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    sub-int/2addr v3, v1

    :goto_2
    if-nez v12, :cond_5

    if-nez v15, :cond_5

    const/4 v12, -0x1

    goto :goto_3

    :cond_5
    if-lez v12, :cond_6

    add-int/lit8 v12, v12, -0x1

    .line 127
    iget-object v2, v6, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 128
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    sub-int/2addr v2, v1

    sub-int/2addr v15, v8

    sub-int/2addr v2, v15

    goto :goto_3

    .line 129
    :cond_6
    iget-object v2, v6, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 130
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    sub-int/2addr v2, v1

    :goto_3
    const/4 v4, 0x4

    new-array v4, v4, [I

    aput v11, v4, v13

    aput v3, v4, v8

    aput v12, v4, v1

    const/4 v1, 0x3

    aput v2, v4, v1

    if-eqz v7, :cond_7

    .line 131
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    return-object v4
.end method

.method public declared-synchronized b(La/b/a/o/g;)La/b/a/p/c;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, p1}, La/b/a/o/m/e;->a(Ljava/lang/String;La/b/a/o/g;)La/b/a/p/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
