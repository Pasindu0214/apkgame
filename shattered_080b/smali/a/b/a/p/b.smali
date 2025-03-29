.class public La/b/a/p/b;
.super Ljava/util/Random;
.source "RandomXS128.java"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/b/a/p/b;->setSeed(J)V

    return-void
.end method

.method public static final a(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p0, p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final next(I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, La/b/a/p/b;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    long-to-int p1, v0

    return p1
.end method

.method public nextBoolean()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, La/b/a/p/b;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes([B)V
    .locals 6

    .line 1
    array-length v0, p1

    :cond_0
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 2
    :goto_0
    invoke-virtual {p0}, La/b/a/p/b;->nextLong()J

    move-result-wide v3

    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    long-to-int v2, v3

    int-to-byte v2, v2

    .line 3
    aput-byte v2, p1, v0

    shr-long/2addr v3, v1

    move v2, v5

    goto :goto_1

    :cond_2
    return-void
.end method

.method public nextDouble()D
    .locals 4

    .line 1
    invoke-virtual {p0}, La/b/a/p/b;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 4

    .line 1
    invoke-virtual {p0}, La/b/a/p/b;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x28

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3e70000000000000L    # 5.960464477539063E-8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 1
    invoke-virtual {p0}, La/b/a/p/b;->nextLong()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public nextInt(I)I
    .locals 10

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, La/b/a/p/b;->nextLong()J

    move-result-wide v4

    const/4 p1, 0x1

    ushr-long/2addr v4, p1

    .line 3
    rem-long v6, v4, v0

    sub-long/2addr v4, v6

    const-wide/16 v8, 0x1

    sub-long v8, v0, v8

    add-long/2addr v8, v4

    cmp-long p1, v8, v2

    if-ltz p1, :cond_0

    long-to-int p1, v6

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public nextLong()J
    .locals 7

    .line 1
    iget-wide v0, p0, La/b/a/p/b;->a:J

    .line 2
    iget-wide v2, p0, La/b/a/p/b;->b:J

    .line 3
    iput-wide v2, p0, La/b/a/p/b;->a:J

    const/16 v4, 0x17

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    xor-long v4, v0, v2

    const/16 v6, 0x11

    ushr-long/2addr v0, v6

    xor-long/2addr v0, v4

    const/16 v4, 0x1a

    ushr-long v4, v2, v4

    xor-long/2addr v0, v4

    .line 4
    iput-wide v0, p0, La/b/a/p/b;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    .line 1
    :cond_0
    invoke-static {p1, p2}, La/b/a/p/b;->a(J)J

    move-result-wide p1

    .line 2
    invoke-static {p1, p2}, La/b/a/p/b;->a(J)J

    move-result-wide v0

    .line 3
    iput-wide p1, p0, La/b/a/p/b;->a:J

    .line 4
    iput-wide v0, p0, La/b/a/p/b;->b:J

    return-void
.end method
