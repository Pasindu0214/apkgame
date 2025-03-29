.class public Lcom/watabou/glwrap/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field public location:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/watabou/glwrap/Attribute;->location:I

    return-void
.end method


# virtual methods
.method public vertexBuffer(III)V
    .locals 7

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v1, p0, Lcom/watabou/glwrap/Attribute;->location:I

    mul-int/lit8 v5, p2, 0x4

    mul-int/lit8 v6, p3, 0x4

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move v2, p1

    .line 2
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public vertexPointer(IILjava/nio/FloatBuffer;)V
    .locals 7

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v1, p0, Lcom/watabou/glwrap/Attribute;->location:I

    mul-int/lit8 v5, p2, 0x4

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move v2, p1

    move-object v6, p3

    .line 2
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
