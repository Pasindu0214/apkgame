.class public Lcom/watabou/noosa/BitmapText;
.super Lcom/watabou/noosa/Visual;
.source "BitmapText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/watabou/noosa/BitmapText$Font;
    }
.end annotation


# instance fields
.field public buffer:Lcom/watabou/glwrap/Vertexbuffer;

.field public dirty:Z

.field public font:Lcom/watabou/noosa/BitmapText$Font;

.field public quads:Ljava/nio/FloatBuffer;

.field public realLength:I

.field public text:Ljava/lang/String;

.field public vertices:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/watabou/noosa/BitmapText;->dirty:Z

    .line 4
    iput-object p1, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    return-void
.end method


# virtual methods
.method public baseLine()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    iget v0, v0, Lcom/watabou/noosa/BitmapText$Font;->baseLine:F

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    mul-float v0, v0, v1

    return v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/BitmapText;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/glwrap/Vertexbuffer;->delete()V

    :cond_0
    return-void
.end method

.method public draw()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->draw()V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/BitmapText;->dirty:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/BitmapText;->updateVertices()V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/BitmapText;->quads:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/BitmapText;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/watabou/glwrap/Vertexbuffer;

    iget-object v1, p0, Lcom/watabou/noosa/BitmapText;->quads:Ljava/nio/FloatBuffer;

    invoke-direct {v0, v1}, Lcom/watabou/glwrap/Vertexbuffer;-><init>(Ljava/nio/FloatBuffer;)V

    iput-object v0, p0, Lcom/watabou/noosa/BitmapText;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/watabou/noosa/BitmapText;->quads:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;)V

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    iget-object v1, v1, Lcom/watabou/noosa/BitmapText$Font;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v1}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 10
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 11
    iget-object v1, v0, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v2, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-virtual {v1, v2}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 12
    iget v3, p0, Lcom/watabou/noosa/Visual;->rm:F

    iget v4, p0, Lcom/watabou/noosa/Visual;->gm:F

    iget v5, p0, Lcom/watabou/noosa/Visual;->bm:F

    iget v6, p0, Lcom/watabou/noosa/Visual;->am:F

    iget v7, p0, Lcom/watabou/noosa/Visual;->ra:F

    iget v8, p0, Lcom/watabou/noosa/Visual;->ga:F

    iget v9, p0, Lcom/watabou/noosa/Visual;->ba:F

    iget v10, p0, Lcom/watabou/noosa/Visual;->aa:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v10}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    .line 13
    iget-object v1, p0, Lcom/watabou/noosa/BitmapText;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    iget v2, p0, Lcom/watabou/noosa/BitmapText;->realLength:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/NoosaScript;->drawQuadSet(Lcom/watabou/glwrap/Vertexbuffer;II)V

    return-void
.end method

.method public declared-synchronized measure()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 2
    iput v0, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    iget-object v3, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/watabou/noosa/BitmapText$Font;->get(C)Lcom/watabou/utils/RectF;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    invoke-virtual {v3, v2}, Lcom/watabou/noosa/TextureFilm;->width(Lcom/watabou/utils/RectF;)F

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    invoke-virtual {v4, v2}, Lcom/watabou/noosa/TextureFilm;->height(Lcom/watabou/utils/RectF;)F

    move-result v2

    .line 9
    iget v4, p0, Lcom/watabou/noosa/Visual;->width:F

    iget-object v5, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    iget v5, v5, Lcom/watabou/noosa/BitmapText$Font;->tracking:F

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 10
    iget v3, p0, Lcom/watabou/noosa/Visual;->height:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 11
    iput v2, p0, Lcom/watabou/noosa/Visual;->height:F

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 12
    iget v0, p0, Lcom/watabou/noosa/Visual;->width:F

    iget-object v1, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    iget v1, v1, Lcom/watabou/noosa/BitmapText$Font;->tracking:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->width:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized text(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/watabou/noosa/BitmapText;->dirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateMatrix()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-static {v0}, Lcom/watabou/glwrap/Matrix;->setIdentity([F)V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget v1, p0, Lcom/watabou/noosa/Visual;->x:F

    iget v2, p0, Lcom/watabou/noosa/Visual;->y:F

    invoke-static {v0, v1, v2}, Lcom/watabou/glwrap/Matrix;->translate([FFF)V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    invoke-static {v0, v2, v1}, Lcom/watabou/glwrap/Matrix;->scale([FFF)V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget v1, p0, Lcom/watabou/noosa/Visual;->angle:F

    invoke-static {v0, v1}, Lcom/watabou/glwrap/Matrix;->rotate([FF)V

    return-void
.end method

.method public declared-synchronized updateVertices()V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 2
    iput v0, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 3
    iget-object v1, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/watabou/glwrap/Quad;->createSet(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/watabou/noosa/BitmapText;->quads:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/watabou/noosa/BitmapText;->realLength:I

    .line 7
    iget-object v2, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 8
    iget-object v4, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    iget-object v5, p0, Lcom/watabou/noosa/BitmapText;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/watabou/noosa/BitmapText$Font;->get(C)Lcom/watabou/utils/RectF;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 9
    :cond_1
    iget-object v5, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    invoke-virtual {v5, v4}, Lcom/watabou/noosa/TextureFilm;->width(Lcom/watabou/utils/RectF;)F

    move-result v5

    .line 10
    iget-object v6, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    invoke-virtual {v6, v4}, Lcom/watabou/noosa/TextureFilm;->height(Lcom/watabou/utils/RectF;)F

    move-result v6

    .line 11
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    iget v8, p0, Lcom/watabou/noosa/Visual;->width:F

    aput v8, v7, v1

    .line 12
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/4 v8, 0x1

    aput v0, v7, v8

    .line 13
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/4 v9, 0x2

    iget v10, v4, Lcom/watabou/utils/RectF;->left:F

    aput v10, v7, v9

    .line 14
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/4 v9, 0x3

    iget v10, v4, Lcom/watabou/utils/RectF;->top:F

    aput v10, v7, v9

    .line 15
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/4 v9, 0x4

    iget v10, p0, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v10, v5

    aput v10, v7, v9

    .line 16
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/4 v9, 0x5

    aput v0, v7, v9

    .line 17
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/4 v9, 0x6

    iget v10, v4, Lcom/watabou/utils/RectF;->right:F

    aput v10, v7, v9

    .line 18
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/4 v9, 0x7

    iget v10, v4, Lcom/watabou/utils/RectF;->top:F

    aput v10, v7, v9

    .line 19
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/16 v9, 0x8

    iget v10, p0, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v10, v5

    aput v10, v7, v9

    .line 20
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/16 v9, 0x9

    aput v6, v7, v9

    .line 21
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/16 v9, 0xa

    iget v10, v4, Lcom/watabou/utils/RectF;->right:F

    aput v10, v7, v9

    .line 22
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/16 v9, 0xb

    iget v10, v4, Lcom/watabou/utils/RectF;->bottom:F

    aput v10, v7, v9

    .line 23
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/16 v9, 0xc

    iget v10, p0, Lcom/watabou/noosa/Visual;->width:F

    aput v10, v7, v9

    .line 24
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/16 v9, 0xd

    aput v6, v7, v9

    .line 25
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/16 v9, 0xe

    iget v10, v4, Lcom/watabou/utils/RectF;->left:F

    aput v10, v7, v9

    .line 26
    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    const/16 v9, 0xf

    iget v4, v4, Lcom/watabou/utils/RectF;->bottom:F

    aput v4, v7, v9

    .line 27
    iget-object v4, p0, Lcom/watabou/noosa/BitmapText;->quads:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->vertices:[F

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 28
    iget v4, p0, Lcom/watabou/noosa/BitmapText;->realLength:I

    add-int/2addr v4, v8

    iput v4, p0, Lcom/watabou/noosa/BitmapText;->realLength:I

    .line 29
    iget v4, p0, Lcom/watabou/noosa/Visual;->width:F

    iget-object v7, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    iget v7, v7, Lcom/watabou/noosa/BitmapText$Font;->tracking:F

    add-float/2addr v5, v7

    add-float/2addr v5, v4

    iput v5, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 30
    iget v4, p0, Lcom/watabou/noosa/Visual;->height:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_2

    .line 31
    iput v6, p0, Lcom/watabou/noosa/Visual;->height:F

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    if-lez v2, :cond_4

    .line 32
    iget v0, p0, Lcom/watabou/noosa/Visual;->width:F

    iget-object v2, p0, Lcom/watabou/noosa/BitmapText;->font:Lcom/watabou/noosa/BitmapText$Font;

    iget v2, v2, Lcom/watabou/noosa/BitmapText$Font;->tracking:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 33
    :cond_4
    iput-boolean v1, p0, Lcom/watabou/noosa/BitmapText;->dirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
