.class public La/b/a/o/m/h;
.super Ljava/lang/Object;
.source "TextureRegion.java"


# instance fields
.field public a:La/b/a/o/i;

.field public b:F

.field public c:F

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La/b/a/o/i;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, La/b/a/o/m/h;->a:La/b/a/o/i;

    .line 4
    invoke-virtual {p1}, La/b/a/o/i;->d()I

    move-result v0

    invoke-virtual {p1}, La/b/a/o/i;->c()I

    move-result p1

    .line 5
    iget-object v1, p0, La/b/a/o/m/h;->a:La/b/a/o/i;

    invoke-virtual {v1}, La/b/a/o/i;->d()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 6
    iget-object v3, p0, La/b/a/o/m/h;->a:La/b/a/o/i;

    invoke-virtual {v3}, La/b/a/o/i;->c()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    int-to-float v4, v3

    mul-float v5, v4, v1

    mul-float v4, v4, v2

    add-int v6, v3, v0

    int-to-float v6, v6

    mul-float v6, v6, v1

    add-int/2addr v3, p1

    int-to-float v1, v3

    mul-float v1, v1, v2

    .line 7
    iget-object v2, p0, La/b/a/o/m/h;->a:La/b/a/o/i;

    invoke-virtual {v2}, La/b/a/o/i;->d()I

    move-result v2

    iget-object v3, p0, La/b/a/o/m/h;->a:La/b/a/o/i;

    invoke-virtual {v3}, La/b/a/o/i;->c()I

    move-result v3

    sub-float/2addr v6, v5

    .line 8
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v2, v2

    mul-float v6, v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, La/b/a/o/m/h;->d:I

    sub-float/2addr v1, v4

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v3, v3

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, La/b/a/o/m/h;->e:I

    .line 10
    iget v6, p0, La/b/a/o/m/h;->d:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    if-ne v1, v7, :cond_0

    const/high16 v1, 0x3e800000    # 0.25f

    div-float v2, v1, v2

    add-float/2addr v5, v2

    div-float/2addr v1, v3

    add-float/2addr v4, v1

    .line 11
    :cond_0
    iput v5, p0, La/b/a/o/m/h;->b:F

    .line 12
    iput v4, p0, La/b/a/o/m/h;->c:F

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, La/b/a/o/m/h;->d:I

    .line 14
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, La/b/a/o/m/h;->e:I

    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "texture cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
