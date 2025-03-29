.class public La/b/a/o/m/e$a;
.super Ljava/lang/Object;
.source "PixmapPacker.java"

# interfaces
.implements La/b/a/o/m/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/m/e$a$a;,
        La/b/a/o/m/e$a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/b/a/o/m/e$a$b;La/b/a/p/c;)La/b/a/o/m/e$a$b;
    .locals 9

    .line 18
    iget-boolean v0, p1, La/b/a/o/m/e$a$b;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p1, La/b/a/o/m/e$a$b;->a:La/b/a/o/m/e$a$b;

    if-eqz v0, :cond_1

    iget-object v1, p1, La/b/a/o/m/e$a$b;->b:La/b/a/o/m/e$a$b;

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p0, v0, p2}, La/b/a/o/m/e$a;->a(La/b/a/o/m/e$a$b;La/b/a/p/c;)La/b/a/o/m/e$a$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20
    iget-object p1, p1, La/b/a/o/m/e$a$b;->b:La/b/a/o/m/e$a$b;

    invoke-virtual {p0, p1, p2}, La/b/a/o/m/e$a;->a(La/b/a/o/m/e$a$b;La/b/a/p/c;)La/b/a/o/m/e$a$b;

    move-result-object v0

    :cond_0
    return-object v0

    .line 21
    :cond_1
    iget-boolean v0, p1, La/b/a/o/m/e$a$b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 22
    :cond_2
    iget-object v0, p1, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    iget v2, v0, La/b/a/p/c;->c:F

    iget v3, p2, La/b/a/p/c;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v0, v0, La/b/a/p/c;->d:F

    iget v2, p2, La/b/a/p/c;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    return-object p1

    .line 23
    :cond_3
    iget-object v0, p1, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    iget v2, v0, La/b/a/p/c;->c:F

    iget v3, p2, La/b/a/p/c;->c:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6

    iget v0, v0, La/b/a/p/c;->d:F

    iget v2, p2, La/b/a/p/c;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    goto :goto_1

    .line 24
    :cond_4
    new-instance v0, La/b/a/o/m/e$a$b;

    invoke-direct {v0}, La/b/a/o/m/e$a$b;-><init>()V

    iput-object v0, p1, La/b/a/o/m/e$a$b;->a:La/b/a/o/m/e$a$b;

    .line 25
    new-instance v0, La/b/a/o/m/e$a$b;

    invoke-direct {v0}, La/b/a/o/m/e$a$b;-><init>()V

    iput-object v0, p1, La/b/a/o/m/e$a$b;->b:La/b/a/o/m/e$a$b;

    .line 26
    iget-object v1, p1, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    iget v2, v1, La/b/a/p/c;->c:F

    float-to-int v3, v2

    iget v4, p2, La/b/a/p/c;->c:F

    float-to-int v5, v4

    sub-int/2addr v3, v5

    .line 27
    iget v5, v1, La/b/a/p/c;->d:F

    float-to-int v6, v5

    iget v7, p2, La/b/a/p/c;->d:F

    float-to-int v8, v7

    sub-int/2addr v6, v8

    if-le v3, v6, :cond_5

    .line 28
    iget-object v2, p1, La/b/a/o/m/e$a$b;->a:La/b/a/o/m/e$a$b;

    iget-object v2, v2, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    iget v3, v1, La/b/a/p/c;->a:F

    iput v3, v2, La/b/a/p/c;->a:F

    .line 29
    iget v3, v1, La/b/a/p/c;->b:F

    iput v3, v2, La/b/a/p/c;->b:F

    .line 30
    iput v4, v2, La/b/a/p/c;->c:F

    .line 31
    iput v5, v2, La/b/a/p/c;->d:F

    .line 32
    iget-object v0, v0, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    iget v2, v1, La/b/a/p/c;->a:F

    iget v3, p2, La/b/a/p/c;->c:F

    add-float/2addr v2, v3

    iput v2, v0, La/b/a/p/c;->a:F

    .line 33
    iget v2, v1, La/b/a/p/c;->b:F

    iput v2, v0, La/b/a/p/c;->b:F

    .line 34
    iget v2, v1, La/b/a/p/c;->c:F

    sub-float/2addr v2, v3

    iput v2, v0, La/b/a/p/c;->c:F

    .line 35
    iget v1, v1, La/b/a/p/c;->d:F

    iput v1, v0, La/b/a/p/c;->d:F

    goto :goto_0

    .line 36
    :cond_5
    iget-object v3, p1, La/b/a/o/m/e$a$b;->a:La/b/a/o/m/e$a$b;

    iget-object v3, v3, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    iget v4, v1, La/b/a/p/c;->a:F

    iput v4, v3, La/b/a/p/c;->a:F

    .line 37
    iget v4, v1, La/b/a/p/c;->b:F

    iput v4, v3, La/b/a/p/c;->b:F

    .line 38
    iput v2, v3, La/b/a/p/c;->c:F

    .line 39
    iput v7, v3, La/b/a/p/c;->d:F

    .line 40
    iget-object v0, v0, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    iget v2, v1, La/b/a/p/c;->a:F

    iput v2, v0, La/b/a/p/c;->a:F

    .line 41
    iget v2, v1, La/b/a/p/c;->b:F

    iget v3, p2, La/b/a/p/c;->d:F

    add-float/2addr v2, v3

    iput v2, v0, La/b/a/p/c;->b:F

    .line 42
    iget v2, v1, La/b/a/p/c;->c:F

    iput v2, v0, La/b/a/p/c;->c:F

    .line 43
    iget v1, v1, La/b/a/p/c;->d:F

    sub-float/2addr v1, v3

    iput v1, v0, La/b/a/p/c;->d:F

    .line 44
    :goto_0
    iget-object p1, p1, La/b/a/o/m/e$a$b;->a:La/b/a/o/m/e$a$b;

    invoke-virtual {p0, p1, p2}, La/b/a/o/m/e$a;->a(La/b/a/o/m/e$a$b;La/b/a/p/c;)La/b/a/o/m/e$a$b;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public a(La/b/a/o/m/e;Ljava/lang/String;La/b/a/p/c;)La/b/a/o/m/e$c;
    .locals 4

    .line 1
    iget-object p2, p1, La/b/a/o/m/e;->k:La/b/a/r/a;

    iget v0, p2, La/b/a/r/a;->b:I

    if-nez v0, :cond_0

    .line 2
    new-instance p2, La/b/a/o/m/e$a$a;

    invoke-direct {p2, p1}, La/b/a/o/m/e$a$a;-><init>(La/b/a/o/m/e;)V

    .line 3
    iget-object v0, p1, La/b/a/o/m/e;->k:La/b/a/r/a;

    invoke-virtual {v0, p2}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, La/b/a/r/a;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La/b/a/o/m/e$a$a;

    .line 5
    :goto_0
    iget v0, p1, La/b/a/o/m/e;->f:I

    .line 6
    iget v1, p3, La/b/a/p/c;->c:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p3, La/b/a/p/c;->c:F

    .line 7
    iget v1, p3, La/b/a/p/c;->d:F

    add-float/2addr v1, v0

    iput v1, p3, La/b/a/p/c;->d:F

    .line 8
    iget-object v1, p2, La/b/a/o/m/e$a$a;->f:La/b/a/o/m/e$a$b;

    invoke-virtual {p0, v1, p3}, La/b/a/o/m/e$a;->a(La/b/a/o/m/e$a$b;La/b/a/p/c;)La/b/a/o/m/e$a$b;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    new-instance p2, La/b/a/o/m/e$a$a;

    invoke-direct {p2, p1}, La/b/a/o/m/e$a$a;-><init>(La/b/a/o/m/e;)V

    .line 10
    iget-object p1, p1, La/b/a/o/m/e;->k:La/b/a/r/a;

    invoke-virtual {p1, p2}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p2, La/b/a/o/m/e$a$a;->f:La/b/a/o/m/e$a$b;

    invoke-virtual {p0, p1, p3}, La/b/a/o/m/e$a;->a(La/b/a/o/m/e$a$b;La/b/a/p/c;)La/b/a/o/m/e$a$b;

    move-result-object v1

    :cond_1
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, v1, La/b/a/o/m/e$a$b;->d:Z

    .line 13
    iget-object p1, v1, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    iget v1, p1, La/b/a/p/c;->a:F

    iget v2, p1, La/b/a/p/c;->b:F

    iget v3, p1, La/b/a/p/c;->c:F

    sub-float/2addr v3, v0

    iget p1, p1, La/b/a/p/c;->d:F

    sub-float/2addr p1, v0

    .line 14
    iput v1, p3, La/b/a/p/c;->a:F

    .line 15
    iput v2, p3, La/b/a/p/c;->b:F

    .line 16
    iput v3, p3, La/b/a/p/c;->c:F

    .line 17
    iput p1, p3, La/b/a/p/c;->d:F

    return-object p2
.end method
