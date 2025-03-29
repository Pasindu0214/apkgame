.class public La/b/a/o/n/i;
.super Ljava/lang/Object;
.source "ShaderProgram.java"


# static fields
.field public static final f:La/b/a/r/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/j<",
            "La/b/a/a;",
            "La/b/a/r/a<",
            "La/b/a/o/n/i;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/b/a/r/j;

    invoke-direct {v0}, La/b/a/r/j;-><init>()V

    sput-object v0, La/b/a/o/n/i;->f:La/b/a/r/j;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->b(I)Ljava/nio/IntBuffer;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    const-string v0, "Managed shaders/app: { "

    .line 44
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    sget-object v1, La/b/a/o/n/i;->f:La/b/a/r/j;

    invoke-virtual {v1}, La/b/a/r/j;->b()La/b/a/r/j$c;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/a;

    .line 46
    sget-object v3, La/b/a/o/n/i;->f:La/b/a/r/j;

    invoke-virtual {v3, v2}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/r/a;

    iget v2, v2, La/b/a/r/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "}"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 50
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static a(La/b/a/a;)V
    .locals 8

    .line 13
    sget-object v0, La/b/a/e;->h:La/b/a/o/d;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    sget-object v0, La/b/a/o/n/i;->f:La/b/a/r/j;

    invoke-virtual {v0, p0}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/b/a/r/a;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    :goto_0
    iget v2, p0, La/b/a/r/a;->b:I

    if-ge v1, v2, :cond_b

    .line 16
    invoke-virtual {p0, v1}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/o/n/i;

    const/4 v3, 0x1

    iput-boolean v3, v2, La/b/a/o/n/i;->e:Z

    .line 17
    invoke-virtual {p0, v1}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/o/n/i;

    .line 18
    iget-boolean v3, v2, La/b/a/o/n/i;->e:Z

    if-eqz v3, :cond_a

    const v3, 0x8b31

    const/4 v4, 0x0

    .line 19
    invoke-virtual {v2, v3, v4}, La/b/a/o/n/i;->a(ILjava/lang/String;)I

    move-result v3

    iput v3, v2, La/b/a/o/n/i;->c:I

    const v3, 0x8b30

    .line 20
    invoke-virtual {v2, v3, v4}, La/b/a/o/n/i;->a(ILjava/lang/String;)I

    move-result v3

    iput v3, v2, La/b/a/o/n/i;->d:I

    .line 21
    iget v5, v2, La/b/a/o/n/i;->c:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    if-ne v3, v6, :cond_2

    goto :goto_3

    .line 22
    :cond_2
    sget-object v3, La/b/a/e;->h:La/b/a/o/d;

    .line 23
    check-cast v3, La/b/a/m/a/j;

    if-eqz v3, :cond_8

    .line 24
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    .line 25
    :goto_1
    sget-object v5, La/b/a/e;->h:La/b/a/o/d;

    if-ne v3, v6, :cond_4

    goto :goto_2

    .line 26
    :cond_4
    iget v7, v2, La/b/a/o/n/i;->c:I

    check-cast v5, La/b/a/m/a/j;

    if-eqz v5, :cond_7

    .line 27
    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 28
    iget v5, v2, La/b/a/o/n/i;->d:I

    .line 29
    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 30
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v5, 0x4

    .line 31
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 32
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    const v7, 0x8b82

    .line 34
    invoke-static {v3, v7, v5}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 35
    invoke-virtual {v5, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    if-nez v5, :cond_6

    .line 36
    sget-object v5, La/b/a/e;->h:La/b/a/o/d;

    check-cast v5, La/b/a/m/a/j;

    if-eqz v5, :cond_5

    .line 37
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    iput-object v3, v2, La/b/a/o/n/i;->a:Ljava/lang/String;

    goto :goto_2

    .line 39
    :cond_5
    throw v4

    :cond_6
    move v6, v3

    .line 40
    :goto_2
    iput v6, v2, La/b/a/o/n/i;->b:I

    goto :goto_3

    .line 41
    :cond_7
    throw v4

    .line 42
    :cond_8
    throw v4

    .line 43
    :cond_9
    :goto_3
    iput-boolean v0, v2, La/b/a/o/n/i;->e:Z

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, La/b/a/e;->h:La/b/a/o/d;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->b(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 3
    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_3

    .line 4
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 6
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const p2, 0x8b81

    .line 7
    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v1, p2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/b/a/o/n/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x8b31

    if-ne p1, v1, :cond_1

    const-string p1, "Vertex shader\n"

    goto :goto_0

    :cond_1
    const-string p1, "Fragment shader:\n"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La/b/a/o/n/i;->a:Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, La/b/a/o/n/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La/b/a/o/n/i;->a:Ljava/lang/String;

    return v2

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
