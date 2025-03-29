.class public Lcom/watabou/noosa/Image;
.super Lcom/watabou/noosa/Visual;
.source "Image.java"


# instance fields
.field public buffer:Lcom/watabou/glwrap/Vertexbuffer;

.field public dirty:Z

.field public flipHorizontal:Z

.field public frame:Lcom/watabou/utils/RectF;

.field public texture:Lcom/watabou/gltextures/SmartTexture;

.field public vertices:[F

.field public verticesBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/watabou/noosa/Image;->vertices:[F

    .line 3
    invoke-static {}, Lcom/watabou/glwrap/Quad;->create()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIII)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    int-to-float v0, p2

    int-to-float v1, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    return-void
.end method


# virtual methods
.method public copy(Lcom/watabou/noosa/Image;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iput-object v0, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 2
    new-instance v0, Lcom/watabou/utils/RectF;

    iget-object v1, p1, Lcom/watabou/noosa/Image;->frame:Lcom/watabou/utils/RectF;

    .line 3
    iget v2, v1, Lcom/watabou/utils/RectF;->left:F

    iget v3, v1, Lcom/watabou/utils/RectF;->top:F

    iget v4, v1, Lcom/watabou/utils/RectF;->right:F

    iget v1, v1, Lcom/watabou/utils/RectF;->bottom:F

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    .line 4
    iput-object v0, p0, Lcom/watabou/noosa/Image;->frame:Lcom/watabou/utils/RectF;

    .line 5
    iget v0, p1, Lcom/watabou/noosa/Visual;->width:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 6
    iget v0, p1, Lcom/watabou/noosa/Visual;->height:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 7
    iget-object p1, p1, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iput-object p1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 8
    invoke-virtual {p0}, Lcom/watabou/noosa/Image;->updateFrame()V

    .line 9
    invoke-virtual {p0}, Lcom/watabou/noosa/Image;->updateVertices()V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/glwrap/Vertexbuffer;->delete()V

    :cond_0
    return-void
.end method

.method public draw()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/watabou/noosa/Image;->dirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->draw()V

    .line 3
    iget-boolean v0, p0, Lcom/watabou/noosa/Image;->dirty:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/watabou/noosa/Image;->vertices:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 6
    iget-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/watabou/glwrap/Vertexbuffer;

    iget-object v2, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {v0, v2}, Lcom/watabou/glwrap/Vertexbuffer;-><init>(Ljava/nio/FloatBuffer;)V

    iput-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;)V

    .line 9
    :goto_0
    iput-boolean v1, p0, Lcom/watabou/noosa/Image;->dirty:Z

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/watabou/noosa/Image;->script()Lcom/watabou/noosa/NoosaScript;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v1}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 12
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 13
    iget-object v1, v0, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v2, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-virtual {v1, v2}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 14
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

    .line 15
    iget-object v1, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/NoosaScript;->drawQuad(Lcom/watabou/glwrap/Vertexbuffer;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public frame(IIII)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    return-void
.end method

.method public frame(Lcom/watabou/utils/RectF;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/watabou/noosa/Image;->frame:Lcom/watabou/utils/RectF;

    .line 2
    iget v0, p1, Lcom/watabou/utils/RectF;->right:F

    iget v1, p1, Lcom/watabou/utils/RectF;->left:F

    sub-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v2, v1, Lcom/watabou/gltextures/SmartTexture;->width:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    iput v0, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 4
    iget v0, p1, Lcom/watabou/utils/RectF;->bottom:F

    iget p1, p1, Lcom/watabou/utils/RectF;->top:F

    sub-float/2addr v0, p1

    .line 5
    iget p1, v1, Lcom/watabou/gltextures/SmartTexture;->height:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    iput v0, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 6
    invoke-virtual {p0}, Lcom/watabou/noosa/Image;->updateFrame()V

    .line 7
    invoke-virtual {p0}, Lcom/watabou/noosa/Image;->updateVertices()V

    return-void
.end method

.method public script()Lcom/watabou/noosa/NoosaScript;
    .locals 1

    .line 1
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v0

    return-object v0
.end method

.method public texture(Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/watabou/gltextures/SmartTexture;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/watabou/gltextures/SmartTexture;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 2
    new-instance p1, Lcom/watabou/utils/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v0}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    return-void
.end method

.method public updateFrame()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/Image;->flipHorizontal:Z

    const/16 v1, 0xe

    const/16 v2, 0xa

    const/4 v3, 0x6

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Image;->vertices:[F

    iget-object v5, p0, Lcom/watabou/noosa/Image;->frame:Lcom/watabou/utils/RectF;

    iget v6, v5, Lcom/watabou/utils/RectF;->right:F

    aput v6, v0, v4

    .line 3
    iget v4, v5, Lcom/watabou/utils/RectF;->left:F

    aput v4, v0, v3

    .line 4
    aput v4, v0, v2

    .line 5
    aput v6, v0, v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Image;->vertices:[F

    iget-object v5, p0, Lcom/watabou/noosa/Image;->frame:Lcom/watabou/utils/RectF;

    iget v6, v5, Lcom/watabou/utils/RectF;->left:F

    aput v6, v0, v4

    .line 7
    iget v4, v5, Lcom/watabou/utils/RectF;->right:F

    aput v4, v0, v3

    .line 8
    aput v4, v0, v2

    .line 9
    aput v6, v0, v1

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/watabou/noosa/Image;->vertices:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/watabou/noosa/Image;->frame:Lcom/watabou/utils/RectF;

    iget v3, v2, Lcom/watabou/utils/RectF;->top:F

    aput v3, v0, v1

    const/4 v1, 0x7

    .line 11
    aput v3, v0, v1

    const/16 v1, 0xb

    .line 12
    iget v2, v2, Lcom/watabou/utils/RectF;->bottom:F

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 13
    aput v2, v0, v1

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/watabou/noosa/Image;->dirty:Z

    return-void
.end method

.method public updateVertices()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Image;->vertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    .line 2
    aput v1, v0, v2

    .line 3
    iget v3, p0, Lcom/watabou/noosa/Visual;->width:F

    const/4 v4, 0x4

    aput v3, v0, v4

    const/4 v4, 0x5

    .line 4
    aput v1, v0, v4

    const/16 v4, 0x8

    .line 5
    aput v3, v0, v4

    .line 6
    iget v3, p0, Lcom/watabou/noosa/Visual;->height:F

    const/16 v4, 0x9

    aput v3, v0, v4

    const/16 v4, 0xc

    .line 7
    aput v1, v0, v4

    const/16 v1, 0xd

    .line 8
    aput v3, v0, v1

    .line 9
    iput-boolean v2, p0, Lcom/watabou/noosa/Image;->dirty:Z

    return-void
.end method
