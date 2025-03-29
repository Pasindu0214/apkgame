.class public Lcom/watabou/noosa/NoosaScript;
.super Lcom/watabou/glscripts/Script;
.source "NoosaScript.java"


# instance fields
.field public aUV:Lcom/watabou/glwrap/Attribute;

.field public aXY:Lcom/watabou/glwrap/Attribute;

.field public lastCamera:Lcom/watabou/noosa/Camera;

.field public uCamera:Lcom/watabou/glwrap/Uniform;

.field public uColorA:Lcom/watabou/glwrap/Uniform;

.field public uColorM:Lcom/watabou/glwrap/Uniform;

.field public uModel:Lcom/watabou/glwrap/Uniform;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/watabou/glscripts/Script;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/NoosaScript;->shader()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    const v3, 0x8b31

    invoke-static {v3, v2}, Lcom/watabou/glwrap/Shader;->createCompiled(ILjava/lang/String;)Lcom/watabou/glwrap/Shader;

    move-result-object v2

    .line 5
    sget-object v3, La/b/a/e;->g:La/b/a/o/d;

    iget v4, p0, Lcom/watabou/glwrap/Program;->handle:I

    .line 6
    iget v2, v2, Lcom/watabou/glwrap/Shader;->handle:I

    .line 7
    check-cast v3, La/b/a/m/a/j;

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    .line 8
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const v2, 0x8b30

    const/4 v3, 0x1

    .line 9
    aget-object v0, v0, v3

    invoke-static {v2, v0}, Lcom/watabou/glwrap/Shader;->createCompiled(ILjava/lang/String;)Lcom/watabou/glwrap/Shader;

    move-result-object v0

    .line 10
    sget-object v2, La/b/a/e;->g:La/b/a/o/d;

    iget v4, p0, Lcom/watabou/glwrap/Program;->handle:I

    .line 11
    iget v0, v0, Lcom/watabou/glwrap/Shader;->handle:I

    .line 12
    check-cast v2, La/b/a/m/a/j;

    if-eqz v2, :cond_b

    .line 13
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 14
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v2, p0, Lcom/watabou/glwrap/Program;->handle:I

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_a

    .line 15
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 16
    invoke-static {v3}, Lcom/badlogic/gdx/utils/BufferUtils;->b(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 17
    sget-object v2, La/b/a/e;->g:La/b/a/o/d;

    iget v4, p0, Lcom/watabou/glwrap/Program;->handle:I

    const v6, 0x8b82

    check-cast v2, La/b/a/m/a/j;

    if-eqz v2, :cond_9

    .line 18
    invoke-static {v4, v6, v0}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 19
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Ljava/lang/Error;

    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    iget v2, p0, Lcom/watabou/glwrap/Program;->handle:I

    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_0

    .line 21
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    throw v5

    :cond_1
    const-string v0, "uCamera"

    .line 24
    invoke-virtual {p0, v0}, Lcom/watabou/glwrap/Program;->uniform(Ljava/lang/String;)Lcom/watabou/glwrap/Uniform;

    move-result-object v0

    iput-object v0, p0, Lcom/watabou/noosa/NoosaScript;->uCamera:Lcom/watabou/glwrap/Uniform;

    const-string v0, "uModel"

    .line 25
    invoke-virtual {p0, v0}, Lcom/watabou/glwrap/Program;->uniform(Ljava/lang/String;)Lcom/watabou/glwrap/Uniform;

    move-result-object v0

    iput-object v0, p0, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    const-string v0, "uTex"

    .line 26
    invoke-virtual {p0, v0}, Lcom/watabou/glwrap/Program;->uniform(Ljava/lang/String;)Lcom/watabou/glwrap/Uniform;

    const-string v0, "uColorM"

    .line 27
    invoke-virtual {p0, v0}, Lcom/watabou/glwrap/Program;->uniform(Ljava/lang/String;)Lcom/watabou/glwrap/Uniform;

    move-result-object v0

    iput-object v0, p0, Lcom/watabou/noosa/NoosaScript;->uColorM:Lcom/watabou/glwrap/Uniform;

    const-string v0, "uColorA"

    .line 28
    invoke-virtual {p0, v0}, Lcom/watabou/glwrap/Program;->uniform(Ljava/lang/String;)Lcom/watabou/glwrap/Uniform;

    move-result-object v0

    iput-object v0, p0, Lcom/watabou/noosa/NoosaScript;->uColorA:Lcom/watabou/glwrap/Uniform;

    const-string v0, "aXYZW"

    .line 29
    invoke-virtual {p0, v0}, Lcom/watabou/glwrap/Program;->attribute(Ljava/lang/String;)Lcom/watabou/glwrap/Attribute;

    move-result-object v0

    iput-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aXY:Lcom/watabou/glwrap/Attribute;

    const-string v0, "aUV"

    .line 30
    invoke-virtual {p0, v0}, Lcom/watabou/glwrap/Program;->attribute(Ljava/lang/String;)Lcom/watabou/glwrap/Attribute;

    move-result-object v0

    iput-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aUV:Lcom/watabou/glwrap/Attribute;

    .line 31
    sget v0, Lcom/watabou/glwrap/Quad;->indexSize:I

    const/16 v2, 0x7fff

    if-le v2, v0, :cond_3

    .line 32
    sput v2, Lcom/watabou/glwrap/Quad;->indexSize:I

    .line 33
    sget v0, Lcom/watabou/glwrap/Quad;->SIZE:I

    mul-int/lit16 v0, v0, 0x7fff

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x8

    .line 34
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    sput-object v0, Lcom/watabou/glwrap/Quad;->indices:Ljava/nio/ShortBuffer;

    const v0, 0x2fffa

    new-array v0, v0, [S

    const v2, 0x1fffc

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v4, 0x0

    int-to-short v8, v8

    .line 37
    aput-short v8, v0, v6

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v9, v4, 0x1

    int-to-short v9, v9

    .line 38
    aput-short v9, v0, v7

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v9, v4, 0x2

    int-to-short v9, v9

    .line 39
    aput-short v9, v0, v6

    add-int/lit8 v6, v7, 0x1

    .line 40
    aput-short v8, v0, v7

    add-int/lit8 v7, v6, 0x1

    .line 41
    aput-short v9, v0, v6

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v8, v4, 0x3

    int-to-short v8, v8

    .line 42
    aput-short v8, v0, v7

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 43
    :cond_2
    sget-object v2, Lcom/watabou/glwrap/Quad;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 44
    sget-object v0, Lcom/watabou/glwrap/Quad;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    :cond_3
    sget-object v0, Lcom/watabou/glwrap/Quad;->indices:Ljava/nio/ShortBuffer;

    .line 46
    sget v2, Lcom/watabou/glwrap/Quad;->bufferIndex:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 47
    sget-object v2, La/b/a/e;->g:La/b/a/o/d;

    check-cast v2, La/b/a/m/a/j;

    .line 48
    iget-object v4, v2, La/b/a/m/a/j;->a:[I

    invoke-static {v3, v4, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 49
    iget-object v2, v2, La/b/a/m/a/j;->a:[I

    aget v2, v2, v1

    .line 50
    sput v2, Lcom/watabou/glwrap/Quad;->bufferIndex:I

    .line 51
    :cond_4
    sget-object v2, La/b/a/e;->g:La/b/a/o/d;

    sget v3, Lcom/watabou/glwrap/Quad;->bufferIndex:I

    check-cast v2, La/b/a/m/a/j;

    if-eqz v2, :cond_8

    const v2, 0x8893

    .line 52
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 53
    sget-object v3, La/b/a/e;->g:La/b/a/o/d;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    const v6, 0x88e4

    check-cast v3, La/b/a/m/a/j;

    if-eqz v3, :cond_7

    .line 54
    invoke-static {v2, v4, v0, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 55
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_6

    .line 56
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 57
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    sget v1, Lcom/watabou/glwrap/Quad;->bufferIndex:I

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_5

    .line 58
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void

    :cond_5
    throw v5

    .line 59
    :cond_6
    throw v5

    .line 60
    :cond_7
    throw v5

    .line 61
    :cond_8
    throw v5

    .line 62
    :cond_9
    throw v5

    .line 63
    :cond_a
    throw v5

    .line 64
    :cond_b
    throw v5

    .line 65
    :cond_c
    goto :goto_2

    :goto_1
    throw v5

    :goto_2
    goto :goto_1
.end method

.method public static get()Lcom/watabou/noosa/NoosaScript;
    .locals 1

    .line 1
    const-class v0, Lcom/watabou/noosa/NoosaScript;

    invoke-static {v0}, Lcom/watabou/glscripts/Script;->use(Ljava/lang/Class;)Lcom/watabou/glscripts/Script;

    move-result-object v0

    check-cast v0, Lcom/watabou/noosa/NoosaScript;

    return-object v0
.end method


# virtual methods
.method public camera(Lcom/watabou/noosa/Camera;)V
    .locals 7

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->lastCamera:Lcom/watabou/noosa/Camera;

    if-eq p1, v0, :cond_5

    iget-object v0, p1, Lcom/watabou/noosa/Camera;->matrix:[F

    if-eqz v0, :cond_5

    .line 3
    iput-object p1, p0, Lcom/watabou/noosa/NoosaScript;->lastCamera:Lcom/watabou/noosa/Camera;

    .line 4
    iget-object v1, p0, Lcom/watabou/noosa/NoosaScript;->uCamera:Lcom/watabou/glwrap/Uniform;

    invoke-virtual {v1, v0}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 5
    iget-boolean v0, p1, Lcom/watabou/noosa/Camera;->fullScreen:Z

    const/16 v1, 0xc11

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 6
    sget-object v0, La/b/a/e;->h:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 8
    sget-object v0, La/b/a/e;->b:La/b/a/f;

    check-cast v0, La/b/a/m/a/l;

    .line 9
    iget v0, v0, La/b/a/m/a/l;->b:I

    int-to-float v0, v0

    .line 10
    sget v1, Lcom/watabou/noosa/Game;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 11
    sget-object v1, La/b/a/e;->b:La/b/a/f;

    check-cast v1, La/b/a/m/a/l;

    .line 12
    iget v1, v1, La/b/a/m/a/l;->c:I

    int-to-float v1, v1

    .line 13
    sget v3, Lcom/watabou/noosa/Game;->height:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 14
    sget-object v3, La/b/a/e;->h:La/b/a/o/d;

    iget v4, p1, Lcom/watabou/noosa/Camera;->x:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    .line 15
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sget v5, Lcom/watabou/noosa/Game;->height:I

    iget v6, p1, Lcom/watabou/noosa/Camera;->screenHeight:I

    sub-int/2addr v5, v6

    iget v6, p1, Lcom/watabou/noosa/Camera;->y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v1

    .line 16
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p1, Lcom/watabou/noosa/Camera;->screenWidth:I

    int-to-float v6, v6

    mul-float v6, v6, v0

    .line 17
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p1, p1, Lcom/watabou/noosa/Camera;->screenHeight:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 19
    check-cast v3, La/b/a/m/a/j;

    if-eqz v3, :cond_1

    .line 20
    invoke-static {v4, v5, v0, p1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto :goto_0

    :cond_1
    throw v2

    .line 21
    :cond_2
    throw v2

    .line 22
    :cond_3
    sget-object p1, La/b/a/e;->h:La/b/a/o/d;

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_4

    .line 23
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0

    :cond_4
    throw v2

    :cond_5
    :goto_0
    return-void
.end method

.method public drawElements(Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aXY:Lcom/watabou/glwrap/Attribute;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p1}, Lcom/watabou/glwrap/Attribute;->vertexPointer(IILjava/nio/FloatBuffer;)V

    .line 3
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aUV:Lcom/watabou/glwrap/Attribute;

    invoke-virtual {v0, v2, v1, p1}, Lcom/watabou/glwrap/Attribute;->vertexPointer(IILjava/nio/FloatBuffer;)V

    .line 5
    invoke-static {}, Lcom/watabou/glwrap/Quad;->releaseIndices()V

    .line 6
    sget-object p1, La/b/a/e;->h:La/b/a/o/d;

    check-cast p1, La/b/a/m/a/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x1403

    .line 7
    invoke-static {v1, p3, p1, p2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 8
    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    sget p2, Lcom/watabou/glwrap/Quad;->bufferIndex:I

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_0

    const p1, 0x8893

    .line 9
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void

    :cond_0
    throw v0

    .line 10
    :cond_1
    throw v0
.end method

.method public drawQuad(Lcom/watabou/glwrap/Vertexbuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/watabou/glwrap/Vertexbuffer;->updateGLData()V

    .line 2
    invoke-virtual {p1}, Lcom/watabou/glwrap/Vertexbuffer;->bind()V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aXY:Lcom/watabou/glwrap/Attribute;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/watabou/glwrap/Attribute;->vertexBuffer(III)V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aUV:Lcom/watabou/glwrap/Attribute;

    invoke-virtual {v0, v3, v2, v3}, Lcom/watabou/glwrap/Attribute;->vertexBuffer(III)V

    .line 5
    invoke-virtual {p1}, Lcom/watabou/glwrap/Vertexbuffer;->release()V

    .line 6
    sget-object p1, La/b/a/e;->h:La/b/a/o/d;

    sget v0, Lcom/watabou/glwrap/Quad;->SIZE:I

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_0

    const/16 p1, 0x1403

    .line 7
    invoke-static {v2, v0, p1, v1}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public drawQuadSet(Lcom/watabou/glwrap/Vertexbuffer;II)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/watabou/glwrap/Vertexbuffer;->updateGLData()V

    .line 2
    invoke-virtual {p1}, Lcom/watabou/glwrap/Vertexbuffer;->bind()V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aXY:Lcom/watabou/glwrap/Attribute;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/watabou/glwrap/Attribute;->vertexBuffer(III)V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aUV:Lcom/watabou/glwrap/Attribute;

    invoke-virtual {v0, v3, v2, v3}, Lcom/watabou/glwrap/Attribute;->vertexBuffer(III)V

    .line 5
    invoke-virtual {p1}, Lcom/watabou/glwrap/Vertexbuffer;->release()V

    .line 6
    sget-object p1, La/b/a/e;->h:La/b/a/o/d;

    sget v0, Lcom/watabou/glwrap/Quad;->SIZE:I

    mul-int v0, v0, p2

    const/16 p2, 0x1403

    sget v1, Lcom/watabou/glwrap/Quad;->SIZE:I

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    mul-int v1, v1, p3

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {v2, v0, p2, v1}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public lighting(FFFFFFFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->uColorM:Lcom/watabou/glwrap/Uniform;

    .line 2
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    iget v0, v0, Lcom/watabou/glwrap/Uniform;->location:I

    check-cast v1, La/b/a/m/a/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 4
    iget-object p1, p0, Lcom/watabou/noosa/NoosaScript;->uColorA:Lcom/watabou/glwrap/Uniform;

    .line 5
    sget-object p2, La/b/a/e;->g:La/b/a/o/d;

    iget p1, p1, Lcom/watabou/glwrap/Uniform;->location:I

    check-cast p2, La/b/a/m/a/j;

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p1, p5, p6, p7, p8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void

    :cond_0
    throw v2

    .line 7
    :cond_1
    throw v2
.end method

.method public shader()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uCamera;\nuniform mat4 uModel;\nattribute vec4 aXYZW;\nattribute vec2 aUV;\nvarying vec2 vUV;\nvoid main() {\n  gl_Position = uCamera * uModel * aXYZW;\n  vUV = aUV;\n}\n//\n#ifdef GL_ES\n  #define LOW lowp\n  #define MED mediump\n#else\n  #define LOW\n  #define MED\n#endif\nvarying MED vec2 vUV;\nuniform LOW sampler2D uTex;\nuniform LOW vec4 uColorM;\nuniform LOW vec4 uColorA;\nvoid main() {\n  gl_FragColor = texture2D( uTex, vUV ) * uColorM + uColorA;\n}\n"

    return-object v0
.end method

.method public use()V
    .locals 3

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v1, p0, Lcom/watabou/glwrap/Program;->handle:I

    check-cast v0, La/b/a/m/a/j;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aXY:Lcom/watabou/glwrap/Attribute;

    .line 4
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    iget v0, v0, Lcom/watabou/glwrap/Attribute;->location:I

    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 6
    iget-object v0, p0, Lcom/watabou/noosa/NoosaScript;->aUV:Lcom/watabou/glwrap/Attribute;

    .line 7
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    iget v0, v0, Lcom/watabou/glwrap/Attribute;->location:I

    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_0

    .line 8
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void

    :cond_0
    throw v2

    .line 9
    :cond_1
    throw v2

    .line 10
    :cond_2
    throw v2
.end method
