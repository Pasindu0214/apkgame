.class public Lcom/watabou/noosa/NinePatch;
.super Lcom/watabou/noosa/Visual;
.source "NinePatch.java"


# instance fields
.field public buffer:Lcom/watabou/glwrap/Vertexbuffer;

.field public dirty:Z

.field public flipHorizontal:Z

.field public innerF:Lcom/watabou/utils/RectF;

.field public marginBottom:I

.field public marginLeft:I

.field public marginRight:I

.field public marginTop:I

.field public outterF:Lcom/watabou/utils/RectF;

.field public quads:Ljava/nio/FloatBuffer;

.field public texture:Lcom/watabou/gltextures/SmartTexture;

.field public vertices:[F


# direct methods
.method public constructor <init>(Ljava/lang/Object;IIIII)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p6

    move/from16 v8, p6

    move/from16 v9, p6

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIIIIIII)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    .line 3
    invoke-static {p1}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/NinePatch;->texture:Lcom/watabou/gltextures/SmartTexture;

    if-nez p4, :cond_0

    .line 4
    iget p4, p1, Lcom/watabou/gltextures/SmartTexture;->width:I

    :cond_0
    if-nez p5, :cond_1

    .line 5
    iget-object p1, p0, Lcom/watabou/noosa/NinePatch;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget p5, p1, Lcom/watabou/gltextures/SmartTexture;->height:I

    :cond_1
    int-to-float p1, p4

    .line 6
    iput p1, p0, Lcom/watabou/noosa/Visual;->width:F

    int-to-float p1, p5

    .line 7
    iput p1, p0, Lcom/watabou/noosa/Visual;->height:F

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 8
    iput-object p1, p0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    const/16 p1, 0x9

    .line 9
    invoke-static {p1}, Lcom/watabou/glwrap/Quad;->createSet(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    .line 10
    iput p6, p0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    .line 11
    iput p8, p0, Lcom/watabou/noosa/NinePatch;->marginRight:I

    .line 12
    iput p7, p0, Lcom/watabou/noosa/NinePatch;->marginTop:I

    .line 13
    iput p9, p0, Lcom/watabou/noosa/NinePatch;->marginBottom:I

    .line 14
    iget-object p1, p0, Lcom/watabou/noosa/NinePatch;->texture:Lcom/watabou/gltextures/SmartTexture;

    int-to-float v0, p2

    int-to-float v1, p3

    add-int/2addr p4, p2

    int-to-float v2, p4

    add-int/2addr p5, p3

    int-to-float v3, p5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/NinePatch;->outterF:Lcom/watabou/utils/RectF;

    .line 15
    iget-object p1, p0, Lcom/watabou/noosa/NinePatch;->texture:Lcom/watabou/gltextures/SmartTexture;

    add-int/2addr p2, p6

    int-to-float p2, p2

    add-int/2addr p3, p7

    int-to-float p3, p3

    sub-int/2addr p4, p8

    int-to-float p4, p4

    sub-int/2addr p5, p9

    int-to-float p5, p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/NinePatch;->innerF:Lcom/watabou/utils/RectF;

    .line 16
    invoke-virtual {p0}, Lcom/watabou/noosa/NinePatch;->updateVertices()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/NinePatch;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/glwrap/Vertexbuffer;->delete()V

    :cond_0
    return-void
.end method

.method public draw()V
    .locals 12

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->draw()V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/NinePatch;->dirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/NinePatch;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/watabou/glwrap/Vertexbuffer;

    iget-object v2, p0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    invoke-direct {v0, v2}, Lcom/watabou/glwrap/Vertexbuffer;-><init>(Ljava/nio/FloatBuffer;)V

    iput-object v0, p0, Lcom/watabou/noosa/NinePatch;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;)V

    .line 6
    :goto_0
    iput-boolean v1, p0, Lcom/watabou/noosa/NinePatch;->dirty:Z

    .line 7
    :cond_1
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/watabou/noosa/NinePatch;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v2}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 9
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 10
    iget-object v2, v0, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v3, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-virtual {v2, v3}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 11
    iget v4, p0, Lcom/watabou/noosa/Visual;->rm:F

    iget v5, p0, Lcom/watabou/noosa/Visual;->gm:F

    iget v6, p0, Lcom/watabou/noosa/Visual;->bm:F

    iget v7, p0, Lcom/watabou/noosa/Visual;->am:F

    iget v8, p0, Lcom/watabou/noosa/Visual;->ra:F

    iget v9, p0, Lcom/watabou/noosa/Visual;->ga:F

    iget v10, p0, Lcom/watabou/noosa/Visual;->ba:F

    iget v11, p0, Lcom/watabou/noosa/Visual;->aa:F

    move-object v3, v0

    invoke-virtual/range {v3 .. v11}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    .line 12
    iget-object v2, p0, Lcom/watabou/noosa/NinePatch;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3, v1}, Lcom/watabou/noosa/NoosaScript;->drawQuadSet(Lcom/watabou/glwrap/Vertexbuffer;II)V

    return-void
.end method

.method public innerWidth()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/noosa/Visual;->width:F

    iget v1, p0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/watabou/noosa/NinePatch;->marginRight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public marginHor()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    iget v1, p0, Lcom/watabou/noosa/NinePatch;->marginRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public marginVer()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/noosa/NinePatch;->marginTop:I

    iget v1, p0, Lcom/watabou/noosa/NinePatch;->marginBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public size(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 2
    iput p2, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/NinePatch;->updateVertices()V

    return-void
.end method

.method public updateVertices()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget v1, v0, Lcom/watabou/noosa/Visual;->width:F

    iget v2, v0, Lcom/watabou/noosa/NinePatch;->marginRight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 3
    iget v2, v0, Lcom/watabou/noosa/Visual;->height:F

    iget v3, v0, Lcom/watabou/noosa/NinePatch;->marginBottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 4
    iget-boolean v3, v0, Lcom/watabou/noosa/NinePatch;->flipHorizontal:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->outterF:Lcom/watabou/utils/RectF;

    iget v3, v3, Lcom/watabou/utils/RectF;->right:F

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->outterF:Lcom/watabou/utils/RectF;

    iget v3, v3, Lcom/watabou/utils/RectF;->left:F

    :goto_0
    move v13, v3

    .line 5
    iget-boolean v3, v0, Lcom/watabou/noosa/NinePatch;->flipHorizontal:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->outterF:Lcom/watabou/utils/RectF;

    iget v3, v3, Lcom/watabou/utils/RectF;->left:F

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->outterF:Lcom/watabou/utils/RectF;

    iget v3, v3, Lcom/watabou/utils/RectF;->right:F

    :goto_1
    move v14, v3

    .line 6
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->outterF:Lcom/watabou/utils/RectF;

    iget v15, v3, Lcom/watabou/utils/RectF;->top:F

    .line 7
    iget v3, v3, Lcom/watabou/utils/RectF;->bottom:F

    .line 8
    iget-boolean v4, v0, Lcom/watabou/noosa/NinePatch;->flipHorizontal:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->innerF:Lcom/watabou/utils/RectF;

    iget v4, v4, Lcom/watabou/utils/RectF;->right:F

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->innerF:Lcom/watabou/utils/RectF;

    iget v4, v4, Lcom/watabou/utils/RectF;->left:F

    :goto_2
    move/from16 v16, v4

    .line 9
    iget-boolean v4, v0, Lcom/watabou/noosa/NinePatch;->flipHorizontal:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->innerF:Lcom/watabou/utils/RectF;

    iget v4, v4, Lcom/watabou/utils/RectF;->left:F

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->innerF:Lcom/watabou/utils/RectF;

    iget v4, v4, Lcom/watabou/utils/RectF;->right:F

    :goto_3
    move/from16 v17, v4

    .line 10
    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->innerF:Lcom/watabou/utils/RectF;

    iget v12, v4, Lcom/watabou/utils/RectF;->top:F

    .line 11
    iget v11, v4, Lcom/watabou/utils/RectF;->bottom:F

    .line 12
    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    const/4 v5, 0x0

    iget v6, v0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    int-to-float v6, v6

    const/4 v7, 0x0

    iget v8, v0, Lcom/watabou/noosa/NinePatch;->marginTop:I

    int-to-float v8, v8

    move v9, v13

    move/from16 v10, v16

    move/from16 v18, v11

    move v11, v15

    move/from16 v19, v12

    invoke-static/range {v4 .. v12}, Lcom/watabou/glwrap/Quad;->fill([FFFFFFFFF)V

    .line 13
    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    iget-object v5, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 14
    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    iget v5, v0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    int-to-float v5, v5

    const/4 v6, 0x0

    iget v7, v0, Lcom/watabou/noosa/NinePatch;->marginTop:I

    int-to-float v7, v7

    move/from16 v20, v3

    move-object v3, v4

    move v4, v5

    move v5, v1

    move/from16 v8, v16

    move/from16 v9, v17

    move v10, v15

    move/from16 v11, v19

    invoke-static/range {v3 .. v11}, Lcom/watabou/glwrap/Quad;->fill([FFFFFFFFF)V

    .line 15
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 16
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    iget v5, v0, Lcom/watabou/noosa/Visual;->width:F

    iget v4, v0, Lcom/watabou/noosa/NinePatch;->marginTop:I

    int-to-float v7, v4

    move v4, v1

    move/from16 v8, v17

    move v9, v14

    invoke-static/range {v3 .. v11}, Lcom/watabou/glwrap/Quad;->fill([FFFFFFFFF)V

    .line 17
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 18
    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    const/4 v5, 0x0

    iget v3, v0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    int-to-float v6, v3

    iget v3, v0, Lcom/watabou/noosa/NinePatch;->marginTop:I

    int-to-float v7, v3

    move v8, v2

    move v9, v13

    move/from16 v10, v16

    move/from16 v12, v18

    invoke-static/range {v4 .. v12}, Lcom/watabou/glwrap/Quad;->fill([FFFFFFFFF)V

    .line 19
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 20
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    iget v4, v0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    int-to-float v4, v4

    iget v5, v0, Lcom/watabou/noosa/NinePatch;->marginTop:I

    int-to-float v6, v5

    move v5, v1

    move v7, v2

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v19

    move/from16 v11, v18

    invoke-static/range {v3 .. v11}, Lcom/watabou/glwrap/Quad;->fill([FFFFFFFFF)V

    .line 21
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 22
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    iget v5, v0, Lcom/watabou/noosa/Visual;->width:F

    iget v4, v0, Lcom/watabou/noosa/NinePatch;->marginTop:I

    int-to-float v6, v4

    move v4, v1

    move/from16 v8, v17

    move v9, v14

    invoke-static/range {v3 .. v11}, Lcom/watabou/glwrap/Quad;->fill([FFFFFFFFF)V

    .line 23
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 24
    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    const/4 v5, 0x0

    iget v3, v0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    int-to-float v6, v3

    iget v8, v0, Lcom/watabou/noosa/Visual;->height:F

    move v9, v13

    move/from16 v10, v16

    move/from16 v12, v20

    invoke-static/range {v4 .. v12}, Lcom/watabou/glwrap/Quad;->fill([FFFFFFFFF)V

    .line 25
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 26
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    iget v4, v0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    int-to-float v4, v4

    iget v7, v0, Lcom/watabou/noosa/Visual;->height:F

    move v5, v1

    move v6, v2

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v20

    invoke-static/range {v3 .. v11}, Lcom/watabou/glwrap/Quad;->fill([FFFFFFFFF)V

    .line 27
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 28
    iget-object v3, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    iget v5, v0, Lcom/watabou/noosa/Visual;->width:F

    iget v7, v0, Lcom/watabou/noosa/Visual;->height:F

    move v4, v1

    move/from16 v8, v17

    move v9, v14

    invoke-static/range {v3 .. v11}, Lcom/watabou/glwrap/Quad;->fill([FFFFFFFFF)V

    .line 29
    iget-object v1, v0, Lcom/watabou/noosa/NinePatch;->quads:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/watabou/noosa/NinePatch;->vertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Lcom/watabou/noosa/NinePatch;->dirty:Z

    return-void
.end method
