.class public La/b/a/r/r;
.super Ljava/lang/Object;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field public static final c:[C


# instance fields
.field public a:[C

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, La/b/a/r/r;->c:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 2
    iput-object v0, p0, La/b/a/r/r;->a:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 4
    new-array p1, p1, [C

    iput-object p1, p0, La/b/a/r/r;->a:[C

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NegativeArraySizeException;

    invoke-direct {p1}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, La/b/a/r/r;->b:I

    add-int/lit8 v1, v0, 0x10

    .line 8
    new-array v1, v1, [C

    iput-object v1, p0, La/b/a/r/r;->a:[C

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method


# virtual methods
.method public a(I)La/b/a/r/r;
    .locals 8

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const-string p1, "-2147483648"

    .line 18
    invoke-virtual {p0, p1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/16 v0, 0x2d

    .line 19
    invoke-virtual {p0, v0}, La/b/a/r/r;->a(C)V

    neg-int p1, p1

    :cond_1
    const/16 v0, 0xa

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_7

    const v2, 0x3b9aca00

    if-lt p1, v2, :cond_2

    .line 20
    sget-object v3, La/b/a/r/r;->c:[C

    int-to-long v4, p1

    const-wide v6, 0x2540be400L

    rem-long/2addr v4, v6

    const-wide/32 v6, 0x3b9aca00

    div-long/2addr v4, v6

    long-to-int v5, v4

    aget-char v3, v3, v5

    invoke-virtual {p0, v3}, La/b/a/r/r;->a(C)V

    :cond_2
    const v3, 0x5f5e100

    if-lt p1, v3, :cond_3

    .line 21
    sget-object v4, La/b/a/r/r;->c:[C

    rem-int v2, p1, v2

    div-int/2addr v2, v3

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_3
    const v2, 0x989680

    if-lt p1, v2, :cond_4

    .line 22
    sget-object v4, La/b/a/r/r;->c:[C

    rem-int v3, p1, v3

    div-int/2addr v3, v2

    aget-char v3, v4, v3

    invoke-virtual {p0, v3}, La/b/a/r/r;->a(C)V

    :cond_4
    const v3, 0xf4240

    if-lt p1, v3, :cond_5

    .line 23
    sget-object v4, La/b/a/r/r;->c:[C

    rem-int v2, p1, v2

    div-int/2addr v2, v3

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_5
    const v2, 0x186a0

    if-lt p1, v2, :cond_6

    .line 24
    sget-object v4, La/b/a/r/r;->c:[C

    rem-int v3, p1, v3

    div-int/2addr v3, v2

    aget-char v3, v4, v3

    invoke-virtual {p0, v3}, La/b/a/r/r;->a(C)V

    .line 25
    :cond_6
    sget-object v3, La/b/a/r/r;->c:[C

    rem-int v2, p1, v2

    div-int/2addr v2, v1

    aget-char v1, v3, v2

    invoke-virtual {p0, v1}, La/b/a/r/r;->a(C)V

    :cond_7
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_8

    .line 26
    sget-object v2, La/b/a/r/r;->c:[C

    rem-int/lit16 v3, p1, 0x2710

    div-int/2addr v3, v1

    aget-char v1, v2, v3

    invoke-virtual {p0, v1}, La/b/a/r/r;->a(C)V

    :cond_8
    const/16 v1, 0x64

    if-lt p1, v1, :cond_9

    .line 27
    sget-object v2, La/b/a/r/r;->c:[C

    rem-int/lit16 v3, p1, 0x3e8

    div-int/2addr v3, v1

    aget-char v1, v2, v3

    invoke-virtual {p0, v1}, La/b/a/r/r;->a(C)V

    :cond_9
    if-lt p1, v0, :cond_a

    .line 28
    sget-object v1, La/b/a/r/r;->c:[C

    rem-int/lit8 v2, p1, 0x64

    div-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, La/b/a/r/r;->a(C)V

    .line 29
    :cond_a
    sget-object v1, La/b/a/r/r;->c:[C

    rem-int/2addr p1, v0

    aget-char p1, v1, p1

    invoke-virtual {p0, p1}, La/b/a/r/r;->a(C)V

    :goto_0
    return-object p0
.end method

.method public a(J)La/b/a/r/r;
    .locals 9

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, "-9223372036854775808"

    .line 30
    invoke-virtual {p0, p1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const/16 v0, 0x2d

    .line 31
    invoke-virtual {p0, v0}, La/b/a/r/r;->a(C)V

    neg-long p1, p1

    :cond_1
    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    const-wide v2, 0xde0b6b3a7640000L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    .line 32
    sget-object v4, La/b/a/r/r;->c:[C

    long-to-double v5, p1

    const-wide v7, 0x43e158e460913d00L    # 1.0E19

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr v5, v7

    const-wide v7, 0x43abc16d674ec800L    # 1.0E18

    div-double/2addr v5, v7

    double-to-int v5, v5

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, La/b/a/r/r;->a(C)V

    :cond_2
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_3

    .line 33
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v3, v2

    aget-char v2, v6, v3

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_3
    const-wide v2, 0x2386f26fc10000L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_4

    .line 34
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v5, v4

    aget-char v4, v6, v5

    invoke-virtual {p0, v4}, La/b/a/r/r;->a(C)V

    :cond_4
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_5

    .line 35
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v3, v2

    aget-char v2, v6, v3

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_5
    const-wide v2, 0x5af3107a4000L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_6

    .line 36
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v5, v4

    aget-char v4, v6, v5

    invoke-virtual {p0, v4}, La/b/a/r/r;->a(C)V

    :cond_6
    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_7

    .line 37
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v3, v2

    aget-char v2, v6, v3

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_7
    const-wide v2, 0xe8d4a51000L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_8

    .line 38
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v5, v4

    aget-char v4, v6, v5

    invoke-virtual {p0, v4}, La/b/a/r/r;->a(C)V

    :cond_8
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_9

    .line 39
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v3, v2

    aget-char v2, v6, v3

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_9
    const-wide v2, 0x2540be400L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_a

    .line 40
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v5, v4

    aget-char v4, v6, v5

    invoke-virtual {p0, v4}, La/b/a/r/r;->a(C)V

    :cond_a
    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-ltz v6, :cond_b

    .line 41
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v3, v2

    aget-char v2, v6, v3

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_b
    const-wide/32 v2, 0x5f5e100

    cmp-long v6, p1, v2

    if-ltz v6, :cond_c

    .line 42
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v5, v4

    aget-char v4, v6, v5

    invoke-virtual {p0, v4}, La/b/a/r/r;->a(C)V

    :cond_c
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-ltz v6, :cond_d

    .line 43
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v3, v2

    aget-char v2, v6, v3

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_d
    const-wide/32 v2, 0xf4240

    cmp-long v6, p1, v2

    if-ltz v6, :cond_e

    .line 44
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v5, v4

    aget-char v4, v6, v5

    invoke-virtual {p0, v4}, La/b/a/r/r;->a(C)V

    :cond_e
    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-ltz v6, :cond_f

    .line 45
    sget-object v6, La/b/a/r/r;->c:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v3, v2

    aget-char v2, v6, v3

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    .line 46
    :cond_f
    sget-object v2, La/b/a/r/r;->c:[C

    rem-long v3, p1, v4

    div-long/2addr v3, v0

    long-to-int v4, v3

    aget-char v2, v2, v4

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_10
    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v2

    if-ltz v4, :cond_11

    .line 47
    sget-object v4, La/b/a/r/r;->c:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, La/b/a/r/r;->a(C)V

    :cond_11
    const-wide/16 v0, 0x64

    cmp-long v4, p1, v0

    if-ltz v4, :cond_12

    .line 48
    sget-object v4, La/b/a/r/r;->c:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, La/b/a/r/r;->a(C)V

    :cond_12
    const-wide/16 v2, 0xa

    cmp-long v4, p1, v2

    if-ltz v4, :cond_13

    .line 49
    sget-object v4, La/b/a/r/r;->c:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, La/b/a/r/r;->a(C)V

    .line 50
    :cond_13
    sget-object v0, La/b/a/r/r;->c:[C

    rem-long/2addr p1, v2

    long-to-int p2, p1

    aget-char p1, v0, p2

    invoke-virtual {p0, p1}, La/b/a/r/r;->a(C)V

    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/Object;)La/b/a/r/r;
    .locals 0

    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0}, La/b/a/r/r;->a()V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, La/b/a/r/r;->b:I

    add-int/lit8 v0, v0, 0x4

    .line 2
    iget-object v1, p0, La/b/a/r/r;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, La/b/a/r/r;->b(I)V

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/r/r;->a:[C

    iget v1, p0, La/b/a/r/r;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/b/a/r/r;->b:I

    const/16 v3, 0x6e

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, La/b/a/r/r;->b:I

    const/16 v3, 0x75

    aput-char v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 6
    iput v2, p0, La/b/a/r/r;->b:I

    const/16 v3, 0x6c

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 7
    iput v1, p0, La/b/a/r/r;->b:I

    aput-char v3, v0, v2

    return-void
.end method

.method public final a(C)V
    .locals 3

    .line 8
    iget v0, p0, La/b/a/r/r;->b:I

    iget-object v1, p0, La/b/a/r/r;->a:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, La/b/a/r/r;->b(I)V

    .line 10
    :cond_0
    iget-object v0, p0, La/b/a/r/r;->a:[C

    iget v1, p0, La/b/a/r/r;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/b/a/r/r;->b:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p0}, La/b/a/r/r;->a()V

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 13
    iget v1, p0, La/b/a/r/r;->b:I

    add-int/2addr v1, v0

    .line 14
    iget-object v2, p0, La/b/a/r/r;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 15
    invoke-virtual {p0, v1}, La/b/a/r/r;->b(I)V

    :cond_1
    const/4 v2, 0x0

    .line 16
    iget-object v3, p0, La/b/a/r/r;->a:[C

    iget v4, p0, La/b/a/r/r;->b:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 17
    iput v1, p0, La/b/a/r/r;->b:I

    return-void
.end method

.method public append(C)Ljava/lang/Appendable;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, La/b/a/r/r;->a(C)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 5

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, La/b/a/r/r;->a()V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, La/b/a/r/r;

    if-eqz v0, :cond_4

    .line 7
    check-cast p1, La/b/a/r/r;

    .line 8
    iget-object v0, p1, La/b/a/r/r;->a:[C

    const/4 v1, 0x0

    iget p1, p1, La/b/a/r/r;->b:I

    .line 9
    array-length v2, v0

    if-ltz v2, :cond_3

    if-ltz p1, :cond_2

    .line 10
    array-length v2, v0

    sub-int/2addr v2, v1

    if-lt v2, p1, :cond_2

    .line 11
    iget v2, p0, La/b/a/r/r;->b:I

    add-int/2addr v2, p1

    .line 12
    iget-object v3, p0, La/b/a/r/r;->a:[C

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 13
    invoke-virtual {p0, v2}, La/b/a/r/r;->b(I)V

    .line 14
    :cond_1
    iget-object v3, p0, La/b/a/r/r;->a:[C

    iget v4, p0, La/b/a/r/r;->b:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput v2, p0, La/b/a/r/r;->b:I

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Length out of bounds: "

    invoke-static {v1, p1}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Offset out of bounds: 0"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p2, p3, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    .line 2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    return-object p0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/r/r;->a:[C

    array-length v1, v0

    shr-int/lit8 v1, v1, 0x1

    array-length v0, v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 2
    :goto_0
    new-array p1, p1, [C

    .line 3
    iget-object v0, p0, La/b/a/r/r;->a:[C

    iget v1, p0, La/b/a/r/r;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object p1, p0, La/b/a/r/r;->a:[C

    return-void
.end method

.method public charAt(I)C
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, La/b/a/r/r;->b:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, La/b/a/r/r;->a:[C

    aget-char p1, v0, p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, La/b/a/r/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, La/b/a/r/r;

    .line 3
    iget v2, p0, La/b/a/r/r;->b:I

    .line 4
    iget v3, p1, La/b/a/r/r;->b:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v3, p0, La/b/a/r/r;->a:[C

    iget-object p1, p1, La/b/a/r/r;->a:[C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    .line 6
    aget-char v5, v3, v4

    aget-char v6, p1, v4

    if-eq v5, v6, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, La/b/a/r/r;->b:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, La/b/a/r/r;->a:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, La/b/a/r/r;->b:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    .line 1
    iget v0, p0, La/b/a/r/r;->b:I

    if-gt p2, v0, :cond_1

    if-ne p1, p2, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, La/b/a/r/r;->a:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    move-object p1, v0

    :goto_0
    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, La/b/a/r/r;->b:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, La/b/a/r/r;->a:[C

    const/4 v2, 0x0

    iget v3, p0, La/b/a/r/r;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
