.class public abstract La/b/a/o/n/c;
.super Ljava/lang/Object;
.source "GLFrameBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "La/b/a/o/e;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "La/b/a/a;",
            "La/b/a/r/a<",
            "La/b/a/o/n/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public static d:I

.field public static e:Z


# instance fields
.field public a:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/b/a/o/n/c;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, La/b/a/o/n/c;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/o/n/c;->a:La/b/a/r/a;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Managed buffers/app: { "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    sget-object v1, La/b/a/o/n/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/a;

    .line 28
    sget-object v3, La/b/a/o/n/c;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/r/a;

    iget v2, v2, La/b/a/r/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "}"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(La/b/a/a;)V
    .locals 7

    .line 1
    sget-object v0, La/b/a/e;->h:La/b/a/o/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, La/b/a/o/n/c;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/b/a/r/a;

    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, La/b/a/r/a;->b:I

    if-lez v0, :cond_8

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/b/a/o/n/c;

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    .line 5
    sget-object v2, La/b/a/e;->h:La/b/a/o/d;

    .line 6
    sget-object v3, La/b/a/e;->b:La/b/a/f;

    check-cast v3, La/b/a/m/a/l;

    .line 7
    iget-object v3, v3, La/b/a/m/a/l;->f:La/b/a/m/a/k;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    .line 8
    sget-boolean v3, La/b/a/o/n/c;->e:Z

    if-nez v3, :cond_5

    .line 9
    sput-boolean v4, La/b/a/o/n/c;->e:Z

    .line 10
    sget-object v3, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v3}, La/b/a/a;->getType()La/b/a/a$a;

    move-result-object v3

    sget-object v5, La/b/a/a$a;->f:La/b/a/a$a;

    if-ne v3, v5, :cond_4

    const/16 v3, 0x40

    .line 11
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    const v5, 0x8ca6

    .line 12
    move-object v6, v2

    check-cast v6, La/b/a/m/a/j;

    if-eqz v6, :cond_3

    .line 13
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 14
    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    sput v3, La/b/a/o/n/c;->d:I

    goto :goto_1

    .line 15
    :cond_3
    throw v1

    .line 16
    :cond_4
    sput v0, La/b/a/o/n/c;->d:I

    .line 17
    :cond_5
    :goto_1
    check-cast v2, La/b/a/m/a/j;

    .line 18
    iget-object v3, v2, La/b/a/m/a/j;->a:[I

    invoke-static {v4, v3, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 19
    iget-object v2, v2, La/b/a/m/a/j;->a:[I

    aget v0, v2, v0

    .line 20
    iput v0, p0, La/b/a/o/n/c;->b:I

    const p0, 0x8d40

    .line 21
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 22
    throw v1

    .line 23
    :cond_6
    throw v1

    .line 24
    :cond_7
    throw v1

    :cond_8
    return-void
.end method
