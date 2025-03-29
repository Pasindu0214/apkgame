.class public abstract La/b/a/o/e;
.super Ljava/lang/Object;
.source "GLTexture.java"


# instance fields
.field public final a:I

.field public b:I

.field public c:La/b/a/o/i$a;

.field public d:La/b/a/o/i$a;

.field public e:La/b/a/o/i$b;

.field public f:La/b/a/o/i$b;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, La/b/a/o/i$a;->b:La/b/a/o/i$a;

    iput-object v0, p0, La/b/a/o/e;->c:La/b/a/o/i$a;

    .line 3
    iput-object v0, p0, La/b/a/o/e;->d:La/b/a/o/i$a;

    .line 4
    sget-object v0, La/b/a/o/i$b;->c:La/b/a/o/i$b;

    iput-object v0, p0, La/b/a/o/e;->e:La/b/a/o/i$b;

    .line 5
    iput-object v0, p0, La/b/a/o/e;->f:La/b/a/o/i$b;

    .line 6
    iput p1, p0, La/b/a/o/e;->a:I

    .line 7
    iput p2, p0, La/b/a/o/e;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v1, p0, La/b/a/o/e;->a:I

    iget v2, p0, La/b/a/o/e;->b:I

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public a(La/b/a/o/i$a;La/b/a/o/i$a;)V
    .locals 3

    .line 31
    iput-object p1, p0, La/b/a/o/e;->c:La/b/a/o/i$a;

    .line 32
    iput-object p2, p0, La/b/a/o/e;->d:La/b/a/o/i$a;

    .line 33
    invoke-virtual {p0}, La/b/a/o/e;->a()V

    .line 34
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v1, p0, La/b/a/o/e;->a:I

    .line 35
    iget p1, p1, La/b/a/o/i$a;->a:I

    .line 36
    check-cast v0, La/b/a/m/a/j;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x2801

    .line 37
    invoke-static {v1, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 38
    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    iget v0, p0, La/b/a/o/e;->a:I

    const/16 v1, 0x2800

    .line 39
    iget p2, p2, La/b/a/o/i$a;->a:I

    .line 40
    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_0

    .line 41
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void

    :cond_0
    throw v2

    .line 42
    :cond_1
    throw v2
.end method

.method public a(La/b/a/o/i$a;La/b/a/o/i$a;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    .line 17
    iget-object v1, p0, La/b/a/o/e;->c:La/b/a/o/i$a;

    if-eq v1, p1, :cond_2

    .line 18
    :cond_0
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    iget v2, p0, La/b/a/o/e;->a:I

    const/16 v3, 0x2801

    .line 19
    iget v4, p1, La/b/a/o/i$a;->a:I

    .line 20
    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_1

    .line 21
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 22
    iput-object p1, p0, La/b/a/o/e;->c:La/b/a/o/i$a;

    goto :goto_0

    .line 23
    :cond_1
    throw v0

    :cond_2
    :goto_0
    if-eqz p2, :cond_5

    if-nez p3, :cond_3

    .line 24
    iget-object p1, p0, La/b/a/o/e;->d:La/b/a/o/i$a;

    if-eq p1, p2, :cond_5

    .line 25
    :cond_3
    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    iget p3, p0, La/b/a/o/e;->a:I

    const/16 v1, 0x2800

    .line 26
    iget v2, p2, La/b/a/o/i$a;->a:I

    .line 27
    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_4

    .line 28
    invoke-static {p3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 29
    iput-object p2, p0, La/b/a/o/e;->d:La/b/a/o/i$a;

    goto :goto_1

    .line 30
    :cond_4
    throw v0

    :cond_5
    :goto_1
    return-void
.end method

.method public a(La/b/a/o/i$b;La/b/a/o/i$b;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    .line 3
    iget-object v1, p0, La/b/a/o/e;->e:La/b/a/o/i$b;

    if-eq v1, p1, :cond_2

    .line 4
    :cond_0
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    iget v2, p0, La/b/a/o/e;->a:I

    const/16 v3, 0x2802

    .line 5
    iget v4, p1, La/b/a/o/i$b;->a:I

    .line 6
    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 8
    iput-object p1, p0, La/b/a/o/e;->e:La/b/a/o/i$b;

    goto :goto_0

    .line 9
    :cond_1
    throw v0

    :cond_2
    :goto_0
    if-eqz p2, :cond_5

    if-nez p3, :cond_3

    .line 10
    iget-object p1, p0, La/b/a/o/e;->f:La/b/a/o/i$b;

    if-eq p1, p2, :cond_5

    .line 11
    :cond_3
    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    iget p3, p0, La/b/a/o/e;->a:I

    const/16 v1, 0x2803

    .line 12
    iget v2, p2, La/b/a/o/i$b;->a:I

    .line 13
    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_4

    .line 14
    invoke-static {p3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 15
    iput-object p2, p0, La/b/a/o/e;->f:La/b/a/o/i$b;

    goto :goto_1

    .line 16
    :cond_4
    throw v0

    :cond_5
    :goto_1
    return-void
.end method
