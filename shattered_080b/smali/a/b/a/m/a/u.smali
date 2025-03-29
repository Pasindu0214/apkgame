.class public final La/b/a/m/a/u;
.super Ljava/lang/Object;
.source "AndroidSound.java"

# interfaces
.implements La/b/a/l/b;


# instance fields
.field public final a:Landroid/media/SoundPool;

.field public final b:I

.field public final c:La/b/a/r/f;


# direct methods
.method public constructor <init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, La/b/a/r/f;

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 3
    invoke-direct {p2, v0, v1}, La/b/a/r/f;-><init>(ZI)V

    .line 4
    iput-object p2, p0, La/b/a/m/a/u;->c:La/b/a/r/f;

    .line 5
    iput-object p1, p0, La/b/a/m/a/u;->a:Landroid/media/SoundPool;

    .line 6
    iput p3, p0, La/b/a/m/a/u;->b:I

    return-void
.end method


# virtual methods
.method public a(FFF)J
    .locals 10

    .line 2
    iget-object v0, p0, La/b/a/m/a/u;->c:La/b/a/r/f;

    iget v1, v0, La/b/a/r/f;->b:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v3, v0, La/b/a/r/f;->a:[I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, La/b/a/r/f;->b:I

    aget v0, v3, v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v3, p3, v1

    if-gez v3, :cond_1

    .line 4
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr v0, p3

    mul-float v0, v0, p1

    move v5, p1

    move v6, v0

    goto :goto_0

    :cond_1
    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr v0, p3

    mul-float v0, v0, p1

    move v6, p1

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, p1

    move v6, v5

    .line 6
    :goto_0
    iget-object v3, p0, La/b/a/m/a/u;->a:Landroid/media/SoundPool;

    iget v4, p0, La/b/a/m/a/u;->b:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v9, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 p1, -0x1

    return-wide p1

    .line 7
    :cond_3
    iget-object p2, p0, La/b/a/m/a/u;->c:La/b/a/r/f;

    const/4 p3, 0x0

    .line 8
    iget v0, p2, La/b/a/r/f;->b:I

    if-ltz v0, :cond_6

    .line 9
    iget-object v1, p2, La/b/a/r/f;->a:[I

    .line 10
    array-length v3, v1

    if-ne v0, v3, :cond_4

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2, v0}, La/b/a/r/f;->b(I)[I

    move-result-object v1

    .line 11
    :cond_4
    iget-boolean v0, p2, La/b/a/r/f;->c:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 12
    iget v0, p2, La/b/a/r/f;->b:I

    sub-int/2addr v0, p3

    invoke-static {v1, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 13
    :cond_5
    iget v0, p2, La/b/a/r/f;->b:I

    aget v3, v1, p3

    aput v3, v1, v0

    .line 14
    :goto_1
    iget v0, p2, La/b/a/r/f;->b:I

    add-int/2addr v0, v2

    iput v0, p2, La/b/a/r/f;->b:I

    .line 15
    aput p1, v1, p3

    int-to-long p1, p1

    return-wide p1

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, La/b/a/r/f;->b:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m/a/u;->a:Landroid/media/SoundPool;

    iget v1, p0, La/b/a/m/a/u;->b:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    return-void
.end method
