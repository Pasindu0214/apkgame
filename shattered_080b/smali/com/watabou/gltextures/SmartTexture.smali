.class public Lcom/watabou/gltextures/SmartTexture;
.super Ljava/lang/Object;
.source "SmartTexture.java"


# static fields
.field public static bound_id:I


# instance fields
.field public bitmap:La/b/a/o/g;

.field public fModeMax:I

.field public fModeMin:I

.field public height:I

.field public id:I

.field public wModeH:I

.field public wModeV:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    return-void
.end method

.method public constructor <init>(La/b/a/o/g;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    .line 5
    iput-object p1, p0, Lcom/watabou/gltextures/SmartTexture;->bitmap:La/b/a/o/g;

    .line 6
    iget-object p1, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 7
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 8
    iput v0, p0, Lcom/watabou/gltextures/SmartTexture;->width:I

    .line 9
    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 10
    iput p1, p0, Lcom/watabou/gltextures/SmartTexture;->height:I

    const/16 p1, 0x2600

    .line 11
    iput p1, p0, Lcom/watabou/gltextures/SmartTexture;->fModeMax:I

    iput p1, p0, Lcom/watabou/gltextures/SmartTexture;->fModeMin:I

    const p1, 0x812f

    .line 12
    iput p1, p0, Lcom/watabou/gltextures/SmartTexture;->wModeV:I

    iput p1, p0, Lcom/watabou/gltextures/SmartTexture;->wModeH:I

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/gltextures/SmartTexture;->generate()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    sget v1, Lcom/watabou/gltextures/SmartTexture;->bound_id:I

    if-eq v0, v1, :cond_2

    .line 4
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    const/16 v2, 0xde1

    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    iget v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    sput v0, Lcom/watabou/gltextures/SmartTexture;->bound_id:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public filter(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/watabou/gltextures/SmartTexture;->fModeMin:I

    .line 2
    iput p2, p0, Lcom/watabou/gltextures/SmartTexture;->fModeMax:I

    .line 3
    iget v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 5
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    int-to-float p1, p1

    check-cast v0, La/b/a/m/a/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xde1

    const/16 v2, 0x2801

    .line 6
    invoke-static {v0, v2, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 7
    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    const/16 v2, 0x2800

    int-to-float p2, p2

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_0

    .line 8
    invoke-static {v0, v2, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    goto :goto_0

    :cond_0
    throw v1

    .line 9
    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public generate()V
    .locals 11

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    invoke-virtual {v0}, La/b/a/m/a/j;->a()I

    move-result v0

    iput v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    .line 2
    iget-object v0, p0, Lcom/watabou/gltextures/SmartTexture;->bitmap:La/b/a/o/g;

    .line 3
    invoke-virtual {p0}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 4
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    .line 5
    invoke-virtual {v0}, La/b/a/o/g;->e()I

    move-result v4

    .line 6
    iget-object v2, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 7
    iget v5, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 8
    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/4 v7, 0x0

    .line 9
    invoke-virtual {v0}, La/b/a/o/g;->d()I

    move-result v8

    .line 10
    invoke-virtual {v0}, La/b/a/o/g;->f()I

    move-result v9

    .line 11
    invoke-virtual {v0}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 12
    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    .line 13
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 14
    iput-object v0, p0, Lcom/watabou/gltextures/SmartTexture;->bitmap:La/b/a/o/g;

    .line 15
    iget-object v0, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 16
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 17
    iput v1, p0, Lcom/watabou/gltextures/SmartTexture;->width:I

    .line 18
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 19
    iput v0, p0, Lcom/watabou/gltextures/SmartTexture;->height:I

    .line 20
    iget v0, p0, Lcom/watabou/gltextures/SmartTexture;->fModeMin:I

    iget v1, p0, Lcom/watabou/gltextures/SmartTexture;->fModeMax:I

    invoke-virtual {p0, v0, v1}, Lcom/watabou/gltextures/SmartTexture;->filter(II)V

    .line 21
    iget v0, p0, Lcom/watabou/gltextures/SmartTexture;->wModeH:I

    iget v1, p0, Lcom/watabou/gltextures/SmartTexture;->wModeV:I

    invoke-virtual {p0, v0, v1}, Lcom/watabou/gltextures/SmartTexture;->wrap(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public reload()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    .line 2
    invoke-virtual {p0}, Lcom/watabou/gltextures/SmartTexture;->generate()V

    return-void
.end method

.method public uvRect(FFFF)Lcom/watabou/utils/RectF;
    .locals 4

    .line 1
    new-instance v0, Lcom/watabou/utils/RectF;

    iget v1, p0, Lcom/watabou/gltextures/SmartTexture;->width:I

    int-to-float v2, v1

    div-float/2addr p1, v2

    iget v2, p0, Lcom/watabou/gltextures/SmartTexture;->height:I

    int-to-float v3, v2

    div-float/2addr p2, v3

    int-to-float v1, v1

    div-float/2addr p3, v1

    int-to-float v1, v2

    div-float/2addr p4, v1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public wrap(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/watabou/gltextures/SmartTexture;->wModeH:I

    .line 2
    iput p2, p0, Lcom/watabou/gltextures/SmartTexture;->wModeV:I

    .line 3
    iget v0, p0, Lcom/watabou/gltextures/SmartTexture;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 5
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    int-to-float p1, p1

    check-cast v0, La/b/a/m/a/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xde1

    const/16 v2, 0x2802

    .line 6
    invoke-static {v0, v2, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 7
    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    const/16 v2, 0x2803

    int-to-float p2, p2

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_0

    .line 8
    invoke-static {v0, v2, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    goto :goto_0

    :cond_0
    throw v1

    .line 9
    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void
.end method
