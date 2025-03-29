.class public Lcom/watabou/glwrap/Quad;
.super Ljava/lang/Object;
.source "Quad.java"


# static fields
.field public static final SIZE:I

.field public static final VALUES:[S

.field public static bufferIndex:I

.field public static indexSize:I

.field public static indices:Ljava/nio/ShortBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/watabou/glwrap/Quad;->VALUES:[S

    .line 2
    array-length v0, v0

    sput v0, Lcom/watabou/glwrap/Quad;->SIZE:I

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/watabou/glwrap/Quad;->indexSize:I

    const/4 v0, -0x1

    .line 4
    sput v0, Lcom/watabou/glwrap/Quad;->bufferIndex:I

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public static create()Ljava/nio/FloatBuffer;
    .locals 2

    const/16 v0, 0x40

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static createSet(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x10

    mul-int/lit8 p0, p0, 0x20

    .line 1
    div-int/lit8 p0, p0, 0x8

    .line 2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static fill([FFFFFFFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    aput p1, p0, v0

    const/4 v0, 0x1

    .line 2
    aput p3, p0, v0

    const/4 v0, 0x2

    .line 3
    aput p5, p0, v0

    const/4 v0, 0x3

    .line 4
    aput p7, p0, v0

    const/4 v0, 0x4

    .line 5
    aput p2, p0, v0

    const/4 v0, 0x5

    .line 6
    aput p3, p0, v0

    const/4 p3, 0x6

    .line 7
    aput p6, p0, p3

    const/4 p3, 0x7

    .line 8
    aput p7, p0, p3

    const/16 p3, 0x8

    .line 9
    aput p2, p0, p3

    const/16 p2, 0x9

    .line 10
    aput p4, p0, p2

    const/16 p2, 0xa

    .line 11
    aput p6, p0, p2

    const/16 p2, 0xb

    .line 12
    aput p8, p0, p2

    const/16 p2, 0xc

    .line 13
    aput p1, p0, p2

    const/16 p1, 0xd

    .line 14
    aput p4, p0, p1

    const/16 p1, 0xe

    .line 15
    aput p5, p0, p1

    const/16 p1, 0xf

    .line 16
    aput p8, p0, p1

    return-void
.end method

.method public static releaseIndices()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const v0, 0x8893

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
