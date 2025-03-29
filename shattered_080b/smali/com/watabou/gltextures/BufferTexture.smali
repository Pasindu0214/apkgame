.class public Lcom/watabou/gltextures/BufferTexture;
.super Lcom/watabou/gltextures/SmartTexture;
.source "BufferTexture.java"


# instance fields
.field public pixels:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/gltextures/SmartTexture;-><init>()V

    .line 2
    iput p1, p0, Lcom/watabou/gltextures/SmartTexture;->width:I

    .line 3
    iput p2, p0, Lcom/watabou/gltextures/SmartTexture;->height:I

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x4

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    invoke-virtual {v0}, La/b/a/m/a/j;->a()I

    move-result v0

    iput v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    return-void
.end method

.method public reload()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    .line 2
    invoke-virtual {p0}, Lcom/watabou/gltextures/SmartTexture;->generate()V

    .line 3
    invoke-virtual {p0}, Lcom/watabou/gltextures/BufferTexture;->update()V

    return-void
.end method

.method public update()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    const/16 v0, 0x2601

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/watabou/gltextures/SmartTexture;->filter(II)V

    const v0, 0x812f

    .line 3
    invoke-virtual {p0, v0, v0}, Lcom/watabou/gltextures/SmartTexture;->wrap(II)V

    .line 4
    iget-object v0, p0, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v4, p0, Lcom/watabou/gltextures/SmartTexture;->width:I

    iget v5, p0, Lcom/watabou/gltextures/SmartTexture;->height:I

    iget-object v9, p0, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    .line 6
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
