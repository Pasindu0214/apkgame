.class public La/b/a/m/a/p;
.super Ljava/lang/Object;
.source "AndroidMultiTouchHandler.java"

# interfaces
.implements La/b/a/m/a/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/b/a/m/a/m;IIIIIJ)V
    .locals 1

    .line 57
    iget-object v0, p1, La/b/a/m/a/m;->b:La/b/a/r/l;

    invoke-virtual {v0}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/a/m/a/m$e;

    .line 58
    iput-wide p7, v0, La/b/a/m/a/m$e;->a:J

    .line 59
    iput p5, v0, La/b/a/m/a/m$e;->g:I

    .line 60
    iput p3, v0, La/b/a/m/a/m$e;->c:I

    .line 61
    iput p4, v0, La/b/a/m/a/m$e;->d:I

    .line 62
    iput p2, v0, La/b/a/m/a/m$e;->b:I

    .line 63
    iput p6, v0, La/b/a/m/a/m$e;->f:I

    .line 64
    iget-object p1, p1, La/b/a/m/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;La/b/a/m/a/m;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    const/16 v3, 0x8

    shr-int/lit8 v11, v2, 0x8

    .line 3
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 5
    monitor-enter p2

    const/4 v9, 0x0

    const/16 v14, 0x14

    const/4 v15, -0x1

    const/16 v16, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    :try_start_0
    iget-object v1, v10, La/b/a/m/a/m;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 7
    iget-object v1, v10, La/b/a/m/a/m;->l:[I

    aput v15, v1, v0

    .line 8
    iget-object v1, v10, La/b/a/m/a/m;->f:[I

    aput v16, v1, v0

    .line 9
    iget-object v1, v10, La/b/a/m/a/m;->g:[I

    aput v16, v1, v0

    .line 10
    iget-object v1, v10, La/b/a/m/a/m;->h:[I

    aput v16, v1, v0

    .line 11
    iget-object v1, v10, La/b/a/m/a/m;->i:[I

    aput v16, v1, v0

    .line 12
    iget-object v1, v10, La/b/a/m/a/m;->j:[Z

    aput-boolean v16, v1, v0

    .line 13
    iget-object v1, v10, La/b/a/m/a/m;->k:[I

    aput v16, v1, v0

    .line 14
    iget-object v1, v10, La/b/a/m/a/m;->m:[F

    aput v9, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v11, :cond_10

    .line 16
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 17
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v9, v2

    .line 18
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v7, v2

    .line 19
    invoke-virtual {v10, v1}, La/b/a/m/a/m;->b(I)I

    move-result v6

    if-ne v6, v15, :cond_0

    move v14, v8

    goto :goto_3

    :cond_0
    if-lt v6, v14, :cond_1

    goto/16 :goto_9

    .line 20
    :cond_1
    iget-object v1, v10, La/b/a/m/a/m;->k:[I

    aget v5, v1, v6

    if-eq v5, v15, :cond_2

    const/4 v3, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v9

    move/from16 v16, v5

    move v5, v7

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v7, v16

    move v14, v8

    move/from16 v16, v9

    move-wide v8, v12

    .line 21
    invoke-virtual/range {v1 .. v9}, La/b/a/m/a/p;->a(La/b/a/m/a/m;IIIIIJ)V

    goto :goto_2

    :cond_2
    move/from16 v17, v6

    move/from16 v18, v7

    move v14, v8

    move/from16 v16, v9

    const/4 v3, 0x4

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v4, v16

    move/from16 v5, v18

    move-wide v8, v12

    .line 22
    invoke-virtual/range {v1 .. v9}, La/b/a/m/a/p;->a(La/b/a/m/a/m;IIIIIJ)V

    .line 23
    :goto_2
    iget-object v1, v10, La/b/a/m/a/m;->h:[I

    iget-object v2, v10, La/b/a/m/a/m;->f:[I

    aget v2, v2, v17

    sub-int v9, v16, v2

    aput v9, v1, v17

    .line 24
    iget-object v1, v10, La/b/a/m/a/m;->i:[I

    iget-object v2, v10, La/b/a/m/a/m;->g:[I

    aget v2, v2, v17

    sub-int v7, v18, v2

    aput v7, v1, v17

    .line 25
    iget-object v1, v10, La/b/a/m/a/m;->f:[I

    aput v16, v1, v17

    .line 26
    iget-object v1, v10, La/b/a/m/a/m;->g:[I

    aput v18, v1, v17

    .line 27
    iget-object v1, v10, La/b/a/m/a/m;->m:[F

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    aput v2, v1, v17

    :goto_3
    add-int/lit8 v8, v14, 0x1

    const/16 v14, 0x14

    goto :goto_1

    .line 28
    :pswitch_2
    invoke-virtual {v10, v2}, La/b/a/m/a/m;->b(I)I

    move-result v14

    if-ne v14, v15, :cond_3

    goto/16 :goto_9

    :cond_3
    const/16 v1, 0x14

    if-lt v14, v1, :cond_4

    goto/16 :goto_9

    .line 29
    :cond_4
    iget-object v1, v10, La/b/a/m/a/m;->l:[I

    aput v15, v1, v14

    .line 30
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v7, v1

    .line 31
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v11, v0

    .line 32
    iget-object v0, v10, La/b/a/m/a/m;->k:[I

    aget v6, v0, v14

    if-eq v6, v15, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v3, v7

    move v4, v11

    move v5, v14

    move v15, v7

    move-wide v7, v12

    .line 33
    invoke-virtual/range {v0 .. v8}, La/b/a/m/a/p;->a(La/b/a/m/a/m;IIIIIJ)V

    goto :goto_4

    :cond_5
    move v15, v7

    .line 34
    :goto_4
    iget-object v0, v10, La/b/a/m/a/m;->f:[I

    aput v15, v0, v14

    .line 35
    iget-object v0, v10, La/b/a/m/a/m;->g:[I

    aput v11, v0, v14

    .line 36
    iget-object v0, v10, La/b/a/m/a/m;->h:[I

    aput v16, v0, v14

    .line 37
    iget-object v0, v10, La/b/a/m/a/m;->i:[I

    aput v16, v0, v14

    .line 38
    iget-object v0, v10, La/b/a/m/a/m;->j:[Z

    aput-boolean v16, v0, v14

    .line 39
    iget-object v0, v10, La/b/a/m/a/m;->k:[I

    aput v16, v0, v14

    .line 40
    iget-object v0, v10, La/b/a/m/a/m;->m:[F

    aput v9, v0, v14

    goto/16 :goto_9

    .line 41
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, La/b/a/m/a/m;->a()I

    move-result v14

    const/16 v1, 0x14

    if-lt v14, v1, :cond_6

    goto/16 :goto_9

    .line 42
    :cond_6
    iget-object v1, v10, La/b/a/m/a/m;->l:[I

    aput v2, v1, v14

    .line 43
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v8, v1

    .line 44
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v9, v1

    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/4 v7, 0x1

    if-lt v1, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-eqz v1, :cond_c

    if-ne v1, v7, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x4

    if-ne v1, v4, :cond_9

    goto :goto_6

    :cond_9
    if-ne v1, v3, :cond_a

    const/4 v2, 0x3

    goto :goto_6

    :cond_a
    const/16 v2, 0x10

    if-ne v1, v2, :cond_b

    const/4 v2, 0x4

    goto :goto_6

    :cond_b
    const/4 v2, -0x1

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v2, 0x0

    :goto_6
    move v6, v2

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    :goto_7
    if-eq v6, v15, :cond_e

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v8

    move v5, v9

    move/from16 v17, v6

    move v6, v14

    const/16 v18, 0x1

    move/from16 v7, v17

    move/from16 v19, v8

    move/from16 v20, v9

    move-wide v8, v12

    .line 46
    invoke-virtual/range {v1 .. v9}, La/b/a/m/a/p;->a(La/b/a/m/a/m;IIIIIJ)V

    goto :goto_8

    :cond_e
    move/from16 v17, v6

    move/from16 v19, v8

    move/from16 v20, v9

    const/16 v18, 0x1

    .line 47
    :goto_8
    iget-object v1, v10, La/b/a/m/a/m;->f:[I

    aput v19, v1, v14

    .line 48
    iget-object v1, v10, La/b/a/m/a/m;->g:[I

    aput v20, v1, v14

    .line 49
    iget-object v1, v10, La/b/a/m/a/m;->h:[I

    aput v16, v1, v14

    .line 50
    iget-object v1, v10, La/b/a/m/a/m;->i:[I

    aput v16, v1, v14

    .line 51
    iget-object v1, v10, La/b/a/m/a/m;->j:[Z

    move/from16 v2, v17

    if-eq v2, v15, :cond_f

    const/16 v16, 0x1

    :cond_f
    aput-boolean v16, v1, v14

    .line 52
    iget-object v1, v10, La/b/a/m/a/m;->k:[I

    aput v2, v1, v14

    .line 53
    iget-object v1, v10, La/b/a/m/a/m;->m:[F

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    aput v0, v1, v14

    .line 54
    :cond_10
    :goto_9
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v0}, La/b/a/a;->getGraphics()La/b/a/f;

    move-result-object v0

    check-cast v0, La/b/a/m/a/l;

    invoke-virtual {v0}, La/b/a/m/a/l;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
