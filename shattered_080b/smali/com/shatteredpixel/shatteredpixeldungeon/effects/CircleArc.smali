.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;
.super Lcom/watabou/noosa/Visual;
.source "CircleArc.java"


# instance fields
.field public dirty:Z

.field public duration:F

.field public indices:Ljava/nio/ShortBuffer;

.field public lifespan:F

.field public lightMode:Z

.field public nTris:I

.field public rad:F

.field public sweep:F

.field public texture:Lcom/watabou/gltextures/SmartTexture;

.field public vertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(IF)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->duration:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->lightMode:Z

    const/4 v1, -0x1

    .line 4
    invoke-static {v1}, Lcom/watabou/gltextures/TextureCache;->createSolid(I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->nTris:I

    .line 6
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->rad:F

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x4

    .line 7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->vertices:Ljava/nio/FloatBuffer;

    .line 10
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->nTris:I

    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x10

    div-int/lit8 p1, p1, 0x8

    .line 11
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->indices:Ljava/nio/ShortBuffer;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->sweep:F

    .line 15
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->updateTriangles()V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->draw()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->dirty:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->updateTriangles()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->lightMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setLightMode()V

    .line 5
    :cond_1
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v1}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 7
    iget-object v1, v0, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v2, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-virtual {v1, v2}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 8
    iget v2, p0, Lcom/watabou/noosa/Visual;->rm:F

    iget v3, p0, Lcom/watabou/noosa/Visual;->gm:F

    iget v4, p0, Lcom/watabou/noosa/Visual;->bm:F

    iget v5, p0, Lcom/watabou/noosa/Visual;->am:F

    iget v6, p0, Lcom/watabou/noosa/Visual;->ra:F

    iget v7, p0, Lcom/watabou/noosa/Visual;->ga:F

    iget v8, p0, Lcom/watabou/noosa/Visual;->ba:F

    iget v9, p0, Lcom/watabou/noosa/Visual;->aa:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    .line 9
    iget-object v1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 10
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->vertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->indices:Ljava/nio/ShortBuffer;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->nTris:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/NoosaScript;->drawElements(Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;I)V

    .line 11
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->lightMode:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    :cond_2
    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->duration:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->lifespan:F

    sget v3, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->lifespan:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    div-float/2addr v2, v0

    .line 4
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->sweep:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->dirty:Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateTriangles()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->dirty:Z

    const/4 v2, 0x4

    new-array v2, v2, [F

    .line 2
    fill-array-data v2, :array_0

    .line 3
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v2, v3

    .line 6
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->sweep:F

    float-to-double v5, v3

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    sub-double v5, v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v9

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v5, v11

    const/4 v3, 0x0

    .line 7
    :goto_0
    iget v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->nTris:I

    if-ge v3, v11, :cond_0

    int-to-double v12, v3

    .line 8
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v7

    mul-double v12, v12, v9

    int-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    iget v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->sweep:F

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    add-double/2addr v12, v5

    .line 9
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v11, v14

    iget v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->rad:F

    mul-float v11, v11, v14

    aput v11, v2, v1

    .line 10
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v11, v14

    iget v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->rad:F

    mul-float v11, v11, v14

    const/4 v14, 0x1

    aput v11, v2, v14

    .line 11
    iget-object v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const v11, 0x40c90fda

    .line 12
    iget v15, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->nTris:I

    int-to-float v15, v15

    div-float/2addr v11, v15

    iget v15, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->sweep:F

    mul-float v11, v11, v15

    float-to-double v7, v11

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v7

    .line 13
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->rad:F

    mul-float v7, v7, v8

    aput v7, v2, v1

    .line 14
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->rad:F

    mul-float v7, v7, v8

    aput v7, v2, v14

    .line 15
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 16
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 17
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v11, v8, 0x1

    int-to-short v11, v11

    invoke-virtual {v7, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 18
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->indices:Ljava/nio/ShortBuffer;

    add-int/2addr v8, v4

    int-to-short v8, v8

    invoke-virtual {v7, v8}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v3, 0x1

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method
