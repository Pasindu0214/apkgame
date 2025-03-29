.class public final Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;
.super Ljava/lang/Object;
.source "ShadowCaster.java"


# static fields
.field public static rounding:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0xd

    new-array v0, v0, [[I

    .line 1
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->rounding:[[I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0xc

    if-gt v1, v2, :cond_1

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->rounding:[[I

    add-int/lit8 v3, v1, 0x1

    new-array v4, v3, [I

    aput-object v4, v2, v1

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v1, :cond_0

    .line 3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->rounding:[[I

    aget-object v4, v4, v1

    int-to-long v5, v2

    int-to-double v7, v1

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    int-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v7

    .line 4
    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v9, v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    .line 5
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    aput v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static castShadow(II[Z[ZI)V
    .locals 14

    const/16 v0, 0xc

    move/from16 v1, p4

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setFalse([Z)V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, p1

    add-int/2addr v1, p0

    const/4 v2, 0x1

    .line 4
    aput-boolean v2, p2, v1

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, p0

    move v6, p1

    .line 5
    :try_start_0
    invoke-static/range {v1 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->scanOctant(I[Z[ZIIIDDIIZ)V

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, p0

    move v6, p1

    .line 6
    invoke-static/range {v1 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->scanOctant(I[Z[ZIIIDDIIZ)V

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, p0

    move v6, p1

    .line 7
    invoke-static/range {v1 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->scanOctant(I[Z[ZIIIDDIIZ)V

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, p0

    move v6, p1

    .line 8
    invoke-static/range {v1 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->scanOctant(I[Z[ZIIIDDIIZ)V

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, p0

    move v6, p1

    .line 9
    invoke-static/range {v1 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->scanOctant(I[Z[ZIIIDDIIZ)V

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    move v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, p0

    move v6, p1

    .line 10
    invoke-static/range {v1 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->scanOctant(I[Z[ZIIIDDIIZ)V

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    move v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, p0

    move v6, p1

    .line 11
    invoke-static/range {v1 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->scanOctant(I[Z[ZIIIDDIIZ)V

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, p0

    move v6, p1

    .line 12
    invoke-static/range {v1 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->scanOctant(I[Z[ZIIIDDIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 14
    invoke-static/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setFalse([Z)V

    :goto_1
    return-void
.end method

.method public static scanOctant(I[Z[ZIIIDDIIZ)V
    .locals 24

    move/from16 v13, p0

    cmpg-double v0, p8, p6

    if-gez v0, :cond_0

    return-void

    :cond_0
    move/from16 v15, p3

    move-wide/from16 v0, p6

    const/4 v2, 0x0

    :goto_0
    if-gt v15, v13, :cond_b

    const-wide/16 v3, 0x0

    const-wide v5, 0x3fdfef9db22d0e56L    # 0.499

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpl-double v7, v0, v3

    if-nez v7, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    int-to-double v3, v15

    .line 1
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, v3, v16

    mul-double v3, v3, v0

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    move v12, v3

    :goto_1
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, p8, v3

    if-nez v7, :cond_2

    .line 2
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->rounding:[[I

    aget-object v3, v3, v13

    aget v3, v3, v15

    goto :goto_2

    .line 3
    :cond_2
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->rounding:[[I

    aget-object v3, v3, v13

    aget v3, v3, v15

    int-to-double v7, v15

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v7, v16

    mul-double v7, v7, p8

    sub-double/2addr v7, v5

    .line 4
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    move v11, v3

    .line 6
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 7
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, p5, v3

    add-int v4, v4, p4

    if-eqz p12, :cond_3

    mul-int v5, p10, v12

    mul-int v5, v5, v3

    mul-int v3, p11, v15

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    goto :goto_3

    :cond_3
    mul-int v5, p10, v12

    mul-int v6, p11, v15

    mul-int v6, v6, v3

    add-int/2addr v6, v5

    add-int v3, v6, v4

    :goto_3
    move-wide/from16 v18, v0

    move/from16 v20, v3

    move v10, v12

    :goto_4
    if-gt v10, v11, :cond_9

    const/16 v21, 0x1

    .line 8
    aput-boolean v21, p1, v20

    .line 9
    aget-boolean v0, p2, v20

    if-eqz v0, :cond_6

    if-nez v2, :cond_5

    if-eq v10, v12, :cond_4

    add-int/lit8 v3, v15, 0x1

    int-to-double v0, v10

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v0, v16

    int-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double v4, v4, v16

    div-double v8, v0, v4

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, v18

    move v14, v10

    move/from16 v10, p10

    move/from16 v22, v11

    move/from16 v11, p11

    move/from16 v23, v12

    move/from16 v12, p12

    invoke-static/range {v0 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->scanOctant(I[Z[ZIIIDDIIZ)V

    goto :goto_5

    :cond_4
    move v14, v10

    move/from16 v22, v11

    move/from16 v23, v12

    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    move v14, v10

    move/from16 v22, v11

    move/from16 v23, v12

    goto :goto_6

    :cond_6
    move v14, v10

    move/from16 v22, v11

    move/from16 v23, v12

    if-eqz v2, :cond_7

    int-to-double v0, v14

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v0, v16

    int-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v2, v16

    div-double v18, v0, v2

    const/4 v2, 0x0

    :cond_7
    :goto_6
    if-nez p12, :cond_8

    add-int v20, v20, p10

    goto :goto_7

    .line 12
    :cond_8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 13
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, p10

    add-int v0, v0, v20

    move/from16 v20, v0

    :goto_7
    add-int/lit8 v10, v14, 0x1

    move/from16 v11, v22

    move/from16 v12, v23

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_a

    return-void

    :cond_a
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, v18

    goto/16 :goto_0

    :cond_b
    return-void
.end method
