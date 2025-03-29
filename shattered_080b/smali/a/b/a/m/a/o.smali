.class public La/b/a/m/a/o;
.super Ljava/lang/Object;
.source "AndroidMouseHandler.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/b/a/m/a/o;->a:I

    .line 3
    iput v0, p0, La/b/a/m/a/o;->b:I

    return-void
.end method


# virtual methods
.method public final a(La/b/a/m/a/m;IIIIJ)V
    .locals 1

    .line 16
    iget-object v0, p1, La/b/a/m/a/m;->b:La/b/a/r/l;

    invoke-virtual {v0}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/a/m/a/m$e;

    .line 17
    iput-wide p6, v0, La/b/a/m/a/m$e;->a:J

    .line 18
    iput p3, v0, La/b/a/m/a/m$e;->c:I

    .line 19
    iput p4, v0, La/b/a/m/a/m$e;->d:I

    .line 20
    iput p2, v0, La/b/a/m/a/m$e;->b:I

    .line 21
    iput p5, v0, La/b/a/m/a/m$e;->e:I

    .line 22
    iget-object p1, p1, La/b/a/m/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;La/b/a/m/a/m;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 4
    monitor-enter p2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    neg-float p1, p1

    float-to-int v6, p1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 6
    invoke-virtual/range {v1 .. v8}, La/b/a/m/a/o;->a(La/b/a/m/a/m;IIIIJ)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 9
    iget v1, p0, La/b/a/m/a/o;->a:I

    if-ne v0, v1, :cond_3

    iget v1, p0, La/b/a/m/a/o;->b:I

    if-eq p1, v1, :cond_4

    :cond_3
    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move v4, v0

    move v5, p1

    .line 10
    invoke-virtual/range {v1 .. v8}, La/b/a/m/a/o;->a(La/b/a/m/a/m;IIIIJ)V

    .line 11
    iput v0, p0, La/b/a/m/a/o;->a:I

    .line 12
    iput p1, p0, La/b/a/m/a/o;->b:I

    .line 13
    :cond_4
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-object p1, La/b/a/e;->a:La/b/a/a;

    invoke-interface {p1}, La/b/a/a;->getGraphics()La/b/a/f;

    move-result-object p1

    check-cast p1, La/b/a/m/a/l;

    invoke-virtual {p1}, La/b/a/m/a/l;->e()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
