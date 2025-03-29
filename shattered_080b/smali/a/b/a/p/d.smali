.class public final La/b/a/p/d;
.super Ljava/lang/Object;
.source "WindowedMean.java"


# instance fields
.field public a:[F

.field public b:I

.field public c:I

.field public d:F

.field public e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/b/a/p/d;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, La/b/a/p/d;->d:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, La/b/a/p/d;->e:Z

    .line 5
    new-array p1, p1, [F

    iput-object p1, p0, La/b/a/p/d;->a:[F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 5

    .line 1
    iget v0, p0, La/b/a/p/d;->b:I

    iget-object v1, p0, La/b/a/p/d;->a:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, La/b/a/p/d;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3
    :goto_1
    iget-object v3, p0, La/b/a/p/d;->a:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 4
    aget v3, v3, v0

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    array-length v0, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, La/b/a/p/d;->d:F

    .line 6
    iput-boolean v2, p0, La/b/a/p/d;->e:Z

    .line 7
    :cond_2
    iget v0, p0, La/b/a/p/d;->d:F

    return v0

    :cond_3
    return v1
.end method
