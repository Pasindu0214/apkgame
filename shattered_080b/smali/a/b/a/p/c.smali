.class public La/b/a/p/c;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, La/b/a/p/c;->a:F

    .line 4
    iput p2, p0, La/b/a/p/c;->b:F

    .line 5
    iput p3, p0, La/b/a/p/c;->c:F

    .line 6
    iput p4, p0, La/b/a/p/c;->d:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, La/b/a/p/c;

    .line 3
    iget v2, p0, La/b/a/p/c;->d:F

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 5
    iget v3, p1, La/b/a/p/c;->d:F

    .line 6
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 7
    :cond_3
    iget v2, p0, La/b/a/p/c;->c:F

    .line 8
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 9
    iget v3, p1, La/b/a/p/c;->c:F

    .line 10
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    .line 11
    :cond_4
    iget v2, p0, La/b/a/p/c;->a:F

    .line 12
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 13
    iget v3, p1, La/b/a/p/c;->a:F

    .line 14
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    .line 15
    :cond_5
    iget v2, p0, La/b/a/p/c;->b:F

    .line 16
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 17
    iget p1, p1, La/b/a/p/c;->b:F

    .line 18
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eq v2, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, La/b/a/p/c;->d:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v2, p0, La/b/a/p/c;->c:F

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v2, p0, La/b/a/p/c;->a:F

    .line 6
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, La/b/a/p/c;->b:F

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "["

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/a/p/c;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, La/b/a/p/c;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, La/b/a/p/c;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/b/a/p/c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
