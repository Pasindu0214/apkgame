.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;
.super Lcom/watabou/noosa/Visual;
.source "Flare.java"


# instance fields
.field public duration:F

.field public indices:Ljava/nio/ShortBuffer;

.field public lifespan:F

.field public lightMode:Z

.field public nRays:I

.field public texture:Lcom/watabou/gltextures/SmartTexture;

.field public vertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(IF)V
    .locals 12

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->duration:F

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_0

    .line 5
    invoke-static {v3}, Lcom/watabou/gltextures/TextureCache;->createGradient([I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 6
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->nRays:I

    const/high16 v3, 0x42340000    # 45.0f

    .line 7
    iput v3, p0, Lcom/watabou/noosa/Visual;->angle:F

    const/high16 v3, 0x43340000    # 180.0f

    .line 8
    iput v3, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x4

    .line 9
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->vertices:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, p1, 0x3

    mul-int/lit8 v3, v3, 0x10

    .line 12
    div-int/lit8 v3, v3, 0x8

    .line 13
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 14
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->indices:Ljava/nio/ShortBuffer;

    new-array v3, v4, [F

    .line 16
    fill-array-data v3, :array_1

    .line 17
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f400000    # 0.75f

    aput v4, v3, v2

    const/4 v4, 0x3

    aput v0, v3, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    int-to-float v5, v4

    const v6, 0x40490fda

    mul-float v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    int-to-float v7, p1

    div-float/2addr v5, v7

    float-to-double v8, v5

    .line 18
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v10, v10, p2

    aput v10, v3, v0

    .line 19
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, p2

    aput v8, v3, v1

    .line 20
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const v8, 0x40c90fda

    div-float/2addr v8, v7

    div-float/2addr v8, v6

    add-float/2addr v8, v5

    float-to-double v5, v8

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, p2

    aput v7, v3, v0

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, p2

    aput v5, v3, v1

    .line 23
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 24
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 25
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v6, 0x1

    int-to-short v7, v7

    invoke-virtual {v5, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 26
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->indices:Ljava/nio/ShortBuffer;

    add-int/2addr v6, v2

    int-to-short v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0xffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->draw()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setLightMode()V

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->drawRays()V

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->drawRays()V

    :goto_0
    return-void
.end method

.method public final drawRays()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v9

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v0}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 3
    iget-object v0, v9, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-virtual {v0, v1}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 4
    iget v1, p0, Lcom/watabou/noosa/Visual;->rm:F

    iget v2, p0, Lcom/watabou/noosa/Visual;->gm:F

    iget v3, p0, Lcom/watabou/noosa/Visual;->bm:F

    iget v4, p0, Lcom/watabou/noosa/Visual;->am:F

    iget v5, p0, Lcom/watabou/noosa/Visual;->ra:F

    iget v6, p0, Lcom/watabou/noosa/Visual;->ga:F

    iget v7, p0, Lcom/watabou/noosa/Visual;->ba:F

    iget v8, p0, Lcom/watabou/noosa/Visual;->aa:F

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    invoke-virtual {v9, v0}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->vertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->indices:Ljava/nio/ShortBuffer;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->nRays:I

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v9, v0, v1, v2}, Lcom/watabou/noosa/NoosaScript;->drawElements(Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;I)V

    return-void
.end method

.method public show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 2
    iget-object p1, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {p1, p0}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->duration:F

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lifespan:F

    const/4 p1, 0x0

    cmpl-float p2, p2, p1

    if-lez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 5
    iput p1, p2, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput p1, p2, Lcom/watabou/utils/PointF;->y:F

    :cond_0
    return-object p0
.end method

.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->duration:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lifespan:F

    sget v3, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lifespan:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v2

    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v1, v1, v0

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v1

    const v1, 0x3faa9fbe    # 1.333f

    mul-float v1, v1, v0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 7
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_2
    :goto_1
    return-void
.end method
