.class public Lcom/watabou/glwrap/Vertexbuffer;
.super Ljava/lang/Object;
.source "Vertexbuffer.java"


# static fields
.field public static final buffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/glwrap/Vertexbuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public updateEnd:I

.field public updateStart:I

.field public vertices:Ljava/nio/FloatBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/watabou/glwrap/Vertexbuffer;->buffers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/watabou/glwrap/Vertexbuffer;->buffers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    check-cast v1, La/b/a/m/a/j;

    .line 4
    iget-object v2, v1, La/b/a/m/a/j;->a:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 5
    iget-object v1, v1, La/b/a/m/a/j;->a:[I

    aget v1, v1, v4

    .line 6
    iput v1, p0, Lcom/watabou/glwrap/Vertexbuffer;->id:I

    .line 7
    iput-object p1, p0, Lcom/watabou/glwrap/Vertexbuffer;->vertices:Ljava/nio/FloatBuffer;

    .line 8
    sget-object v1, Lcom/watabou/glwrap/Vertexbuffer;->buffers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iput v4, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateStart:I

    .line 10
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result p1

    iput p1, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateEnd:I

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static refreshAllBuffers()V
    .locals 4

    .line 1
    sget-object v0, Lcom/watabou/glwrap/Vertexbuffer;->buffers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/watabou/glwrap/Vertexbuffer;->buffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/glwrap/Vertexbuffer;

    .line 3
    iget-object v3, v2, Lcom/watabou/glwrap/Vertexbuffer;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;)V

    .line 4
    invoke-virtual {v2}, Lcom/watabou/glwrap/Vertexbuffer;->updateGLData()V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public bind()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v1, p0, Lcom/watabou/glwrap/Vertexbuffer;->id:I

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const v0, 0x8892

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public delete()V
    .locals 4

    .line 1
    sget-object v0, Lcom/watabou/glwrap/Vertexbuffer;->buffers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    iget v2, p0, Lcom/watabou/glwrap/Vertexbuffer;->id:I

    check-cast v1, La/b/a/m/a/j;

    .line 3
    iget-object v1, v1, La/b/a/m/a/j;->a:[I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    .line 4
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 5
    sget-object v1, Lcom/watabou/glwrap/Vertexbuffer;->buffers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const v0, 0x8892

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public updateGLData()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/watabou/glwrap/Vertexbuffer;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p0}, Lcom/watabou/glwrap/Vertexbuffer;->bind()V

    .line 4
    iget v0, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateStart:I

    const/4 v2, 0x0

    const v3, 0x8892

    if-nez v0, :cond_2

    iget v0, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateEnd:I

    iget-object v4, p0, Lcom/watabou/glwrap/Vertexbuffer;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->limit()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 5
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget-object v4, p0, Lcom/watabou/glwrap/Vertexbuffer;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/watabou/glwrap/Vertexbuffer;->vertices:Ljava/nio/FloatBuffer;

    const v6, 0x88e8

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0

    :cond_1
    throw v2

    .line 7
    :cond_2
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v4, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateStart:I

    mul-int/lit8 v5, v4, 0x4

    iget v6, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateEnd:I

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x4

    iget-object v4, p0, Lcom/watabou/glwrap/Vertexbuffer;->vertices:Ljava/nio/FloatBuffer;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v3, v5, v6, v4}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/watabou/glwrap/Vertexbuffer;->release()V

    .line 10
    iput v1, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateEnd:I

    iput v1, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateStart:I

    return-void

    .line 11
    :cond_3
    throw v2
.end method

.method public updateVertices(Ljava/nio/FloatBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;II)V

    return-void
.end method

.method public updateVertices(Ljava/nio/FloatBuffer;II)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/watabou/glwrap/Vertexbuffer;->vertices:Ljava/nio/FloatBuffer;

    .line 3
    iget p1, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateStart:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 4
    iput p2, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateStart:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateStart:I

    .line 6
    :goto_0
    iget p1, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateEnd:I

    if-ne p1, v0, :cond_1

    .line 7
    iput p3, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateEnd:I

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/watabou/glwrap/Vertexbuffer;->updateEnd:I

    :goto_1
    return-void
.end method
