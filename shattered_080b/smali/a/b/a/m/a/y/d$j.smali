.class public La/b/a/m/a/y/d$j;
.super Ljava/lang/Object;
.source "GLSurfaceViewAPI18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/m/a/y/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:La/b/a/m/a/y/d$i;


# direct methods
.method public synthetic constructor <init>(La/b/a/m/a/y/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 15
    iget-boolean v0, p0, La/b/a/m/a/y/d$j;->a:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x20000

    .line 16
    iput v0, p0, La/b/a/m/a/y/d$j;->b:I

    const/4 v1, 0x1

    if-lt v0, v0, :cond_0

    .line 17
    iput-boolean v1, p0, La/b/a/m/a/y/d$j;->d:Z

    .line 18
    :cond_0
    iput-boolean v1, p0, La/b/a/m/a/y/d$j;->a:Z

    :cond_1
    return-void
.end method

.method public declared-synchronized a(La/b/a/m/a/y/d$i;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p1, La/b/a/m/a/y/d$i;->b:Z

    .line 2
    iget-object v0, p0, La/b/a/m/a/y/d$j;->f:La/b/a/m/a/y/d$i;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, La/b/a/m/a/y/d$j;->f:La/b/a/m/a/y/d$i;

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, La/b/a/m/a/y/d$j;->c:Z

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, La/b/a/m/a/y/d$j;->a()V

    const/16 v0, 0x1f01

    .line 8
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget v0, p0, La/b/a/m/a/y/d$j;->b:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "Q3Dimension MSM7500 "

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, La/b/a/m/a/y/d$j;->d:Z

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 12
    :cond_1
    iget-boolean p1, p0, La/b/a/m/a/y/d$j;->d:Z

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, La/b/a/m/a/y/d$j;->e:Z

    .line 13
    iput-boolean v3, p0, La/b/a/m/a/y/d$j;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, La/b/a/m/a/y/d$j;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, La/b/a/m/a/y/d$j;->a()V

    .line 2
    iget-boolean v0, p0, La/b/a/m/a/y/d$j;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
