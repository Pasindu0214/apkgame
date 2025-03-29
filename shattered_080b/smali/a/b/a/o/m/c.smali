.class public La/b/a/o/m/c;
.super Ljava/lang/Object;
.source "BitmapFontCache.java"


# instance fields
.field public final a:La/b/a/o/m/b;

.field public b:Z

.field public final c:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/m/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/m/d;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public final f:La/b/a/o/a;

.field public g:[[F

.field public h:[I

.field public i:[La/b/a/r/f;

.field public j:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La/b/a/o/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, La/b/a/o/a;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(La/b/a/o/m/b;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/o/m/c;->c:La/b/a/r/a;

    .line 3
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/o/m/c;->d:La/b/a/r/a;

    .line 4
    new-instance v0, La/b/a/o/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, La/b/a/o/a;-><init>(FFFF)V

    iput-object v0, p0, La/b/a/o/m/c;->f:La/b/a/o/a;

    .line 5
    iput-object p1, p0, La/b/a/o/m/c;->a:La/b/a/o/m/b;

    .line 6
    iput-boolean p2, p0, La/b/a/o/m/c;->b:Z

    .line 7
    iget-object p1, p1, La/b/a/o/m/b;->b:La/b/a/r/a;

    iget p1, p1, La/b/a/r/a;->b:I

    if-eqz p1, :cond_1

    .line 8
    new-array p2, p1, [[F

    iput-object p2, p0, La/b/a/o/m/c;->g:[[F

    .line 9
    new-array p2, p1, [I

    iput-object p2, p0, La/b/a/o/m/c;->h:[I

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    .line 10
    new-array v0, p1, [La/b/a/r/f;

    iput-object v0, p0, La/b/a/o/m/c;->i:[La/b/a/r/f;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 11
    iget-object v1, p0, La/b/a/o/m/c;->i:[La/b/a/r/f;

    new-instance v2, La/b/a/r/f;

    const/16 v3, 0x10

    .line 12
    invoke-direct {v2, p2, v3}, La/b/a/r/f;-><init>(ZI)V

    .line 13
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-array p1, p1, [I

    iput-object p1, p0, La/b/a/o/m/c;->j:[I

    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The specified font must contain at least one texture page."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/o/m/c;->i:[La/b/a/r/f;

    if-eqz v0, :cond_2

    .line 2
    aget-object v1, v0, p1

    iget-object v1, v1, La/b/a/r/f;->a:[I

    array-length v1, v1

    if-le p2, v1, :cond_2

    .line 3
    aget-object v1, v0, p1

    aget-object v0, v0, p1

    iget-object v0, v0, La/b/a/r/f;->a:[I

    array-length v0, v0

    sub-int v0, p2, v0

    if-eqz v1, :cond_1

    if-ltz v0, :cond_0

    .line 4
    iget v2, v1, La/b/a/r/f;->b:I

    add-int/2addr v2, v0

    .line 5
    iget-object v0, v1, La/b/a/r/f;->a:[I

    array-length v0, v0

    if-le v2, v0, :cond_2

    const/16 v0, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, La/b/a/r/f;->b(I)[I

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "additionalCapacity must be >= 0: "

    invoke-static {p2, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, La/b/a/o/m/c;->h:[I

    aget v1, v0, p1

    mul-int/lit8 p2, p2, 0x14

    add-int/2addr p2, v1

    .line 9
    iget-object v1, p0, La/b/a/o/m/c;->g:[[F

    aget-object v2, v1, p1

    if-nez v2, :cond_3

    .line 10
    new-array p2, p2, [F

    aput-object p2, v1, p1

    goto :goto_1

    .line 11
    :cond_3
    array-length v1, v2

    if-ge v1, p2, :cond_4

    .line 12
    new-array p2, p2, [F

    .line 13
    aget v0, v0, p1

    const/4 v1, 0x0

    invoke-static {v2, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v0, p0, La/b/a/o/m/c;->g:[[F

    aput-object p2, v0, p1

    :cond_4
    :goto_1
    return-void
.end method
