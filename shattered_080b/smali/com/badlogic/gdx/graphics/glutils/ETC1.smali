.class public Lcom/badlogic/gdx/graphics/glutils/ETC1;
.super Ljava/lang/Object;
.source "ETC1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/ETC1$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/badlogic/gdx/graphics/glutils/ETC1$a;La/b/a/o/g$c;)La/b/a/o/g;
    .locals 10

    .line 1
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->d:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getWidthPKM(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 3
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3, v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getHeightPKM(Ljava/nio/ByteBuffer;I)I

    move-result v2

    move v7, v0

    move v8, v2

    const/16 v4, 0x10

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->a:I

    .line 5
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->b:I

    move v7, v0

    move v8, v1

    const/4 v4, 0x0

    .line 6
    :goto_1
    sget-object v0, La/b/a/o/g$c;->d:La/b/a/o/g$c;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v9, 0x2

    goto :goto_2

    .line 7
    :cond_2
    sget-object v0, La/b/a/o/g$c;->f:La/b/a/o/g$c;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    const/4 v9, 0x3

    .line 8
    :goto_2
    new-instance v0, La/b/a/o/g;

    invoke-direct {v0, v7, v8, p1}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 9
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->decodeImage(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    return-object v0

    .line 10
    :cond_3
    new-instance p0, La/b/a/r/d;

    const-string p1, "Can only handle RGB565 or RGB888 images"

    invoke-direct {p0, p1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static native decodeImage(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V
.end method

.method public static native getHeightPKM(Ljava/nio/ByteBuffer;I)I
.end method

.method public static native getWidthPKM(Ljava/nio/ByteBuffer;I)I
.end method

.method public static native isValidPKM(Ljava/nio/ByteBuffer;I)Z
.end method
