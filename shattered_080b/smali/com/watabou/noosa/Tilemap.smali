.class public Lcom/watabou/noosa/Tilemap;
.super Lcom/watabou/noosa/Visual;
.source "Tilemap.java"


# instance fields
.field public bottomRightUpdating:I

.field public buffer:Lcom/watabou/glwrap/Vertexbuffer;

.field public cellH:F

.field public cellW:F

.field public data:[I

.field public fullUpdate:Z

.field public mapHeight:I

.field public mapWidth:I

.field public quads:Ljava/nio/FloatBuffer;

.field public size:I

.field public texture:Lcom/watabou/gltextures/SmartTexture;

.field public tileset:Lcom/watabou/noosa/TextureFilm;

.field public topLeftUpdating:I

.field public volatile updated:Lcom/watabou/utils/Rect;

.field public updating:Lcom/watabou/utils/Rect;

.field public vertices:[F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/watabou/noosa/TextureFilm;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    .line 2
    invoke-static {p1}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/Tilemap;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 3
    iput-object p2, p0, Lcom/watabou/noosa/Tilemap;->tileset:Lcom/watabou/noosa/TextureFilm;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/watabou/noosa/TextureFilm;->width(Lcom/watabou/utils/RectF;)F

    move-result v1

    iput v1, p0, Lcom/watabou/noosa/Tilemap;->cellW:F

    .line 6
    invoke-virtual {p2, v0}, Lcom/watabou/noosa/TextureFilm;->height(Lcom/watabou/utils/RectF;)F

    move-result p2

    iput p2, p0, Lcom/watabou/noosa/Tilemap;->cellH:F

    const/16 p2, 0x10

    new-array p2, p2, [F

    .line 7
    iput-object p2, p0, Lcom/watabou/noosa/Tilemap;->vertices:[F

    .line 8
    new-instance p2, Lcom/watabou/utils/Rect;

    .line 9
    invoke-direct {p2, p1, p1, p1, p1}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    .line 10
    iput-object p2, p0, Lcom/watabou/noosa/Tilemap;->updated:Lcom/watabou/utils/Rect;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/glwrap/Vertexbuffer;->delete()V

    :cond_0
    return-void
.end method

.method public draw()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcom/watabou/noosa/Visual;->draw()V

    .line 2
    iget-object v1, v0, Lcom/watabou/noosa/Tilemap;->updated:Lcom/watabou/utils/Rect;

    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/watabou/noosa/Tilemap;->moveToUpdating()V

    .line 4
    iget v1, v0, Lcom/watabou/noosa/Tilemap;->cellH:F

    iget-object v3, v0, Lcom/watabou/noosa/Tilemap;->updating:Lcom/watabou/utils/Rect;

    iget v3, v3, Lcom/watabou/utils/Rect;->top:I

    int-to-float v4, v3

    mul-float v4, v4, v1

    add-float/2addr v1, v4

    .line 5
    :goto_0
    iget-object v5, v0, Lcom/watabou/noosa/Tilemap;->updating:Lcom/watabou/utils/Rect;

    iget v6, v5, Lcom/watabou/utils/Rect;->bottom:I

    const/4 v7, -0x1

    if-ge v3, v6, :cond_3

    .line 6
    iget v6, v0, Lcom/watabou/noosa/Tilemap;->cellW:F

    iget v5, v5, Lcom/watabou/utils/Rect;->left:I

    int-to-float v8, v5

    mul-float v8, v8, v6

    add-float/2addr v6, v8

    .line 7
    iget v9, v0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    mul-int v9, v9, v3

    add-int/2addr v9, v5

    .line 8
    :goto_1
    iget-object v10, v0, Lcom/watabou/noosa/Tilemap;->updating:Lcom/watabou/utils/Rect;

    iget v10, v10, Lcom/watabou/utils/Rect;->right:I

    if-ge v5, v10, :cond_2

    .line 9
    iget v10, v0, Lcom/watabou/noosa/Tilemap;->topLeftUpdating:I

    if-ne v10, v7, :cond_0

    .line 10
    iput v9, v0, Lcom/watabou/noosa/Tilemap;->topLeftUpdating:I

    :cond_0
    add-int/lit8 v10, v9, 0x1

    .line 11
    iput v10, v0, Lcom/watabou/noosa/Tilemap;->bottomRightUpdating:I

    .line 12
    iget-object v11, v0, Lcom/watabou/noosa/Tilemap;->quads:Ljava/nio/FloatBuffer;

    mul-int/lit8 v12, v9, 0x10

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    iget-object v11, v0, Lcom/watabou/noosa/Tilemap;->tileset:Lcom/watabou/noosa/TextureFilm;

    iget-object v12, v0, Lcom/watabou/noosa/Tilemap;->data:[I

    aget v12, v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v11

    .line 14
    invoke-virtual {v0, v9}, Lcom/watabou/noosa/Tilemap;->needsRender(I)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v11, :cond_1

    .line 15
    iget-object v9, v0, Lcom/watabou/noosa/Tilemap;->vertices:[F

    aput v8, v9, v2

    const/4 v12, 0x1

    .line 16
    aput v4, v9, v12

    const/4 v12, 0x2

    .line 17
    iget v13, v11, Lcom/watabou/utils/RectF;->left:F

    aput v13, v9, v12

    const/4 v12, 0x3

    .line 18
    iget v14, v11, Lcom/watabou/utils/RectF;->top:F

    aput v14, v9, v12

    const/4 v12, 0x4

    .line 19
    aput v6, v9, v12

    const/4 v12, 0x5

    .line 20
    aput v4, v9, v12

    const/4 v12, 0x6

    .line 21
    iget v15, v11, Lcom/watabou/utils/RectF;->right:F

    aput v15, v9, v12

    const/4 v12, 0x7

    .line 22
    aput v14, v9, v12

    const/16 v12, 0x8

    .line 23
    aput v6, v9, v12

    const/16 v12, 0x9

    .line 24
    aput v1, v9, v12

    const/16 v12, 0xa

    .line 25
    aput v15, v9, v12

    const/16 v12, 0xb

    .line 26
    iget v11, v11, Lcom/watabou/utils/RectF;->bottom:F

    aput v11, v9, v12

    const/16 v12, 0xc

    .line 27
    aput v8, v9, v12

    const/16 v8, 0xd

    .line 28
    aput v1, v9, v8

    const/16 v8, 0xe

    .line 29
    aput v13, v9, v8

    const/16 v8, 0xf

    .line 30
    aput v11, v9, v8

    goto :goto_2

    .line 31
    :cond_1
    iget-object v8, v0, Lcom/watabou/noosa/Tilemap;->vertices:[F

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([FF)V

    .line 32
    :goto_2
    iget-object v8, v0, Lcom/watabou/noosa/Tilemap;->quads:Ljava/nio/FloatBuffer;

    iget-object v9, v0, Lcom/watabou/noosa/Tilemap;->vertices:[F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 33
    iget v8, v0, Lcom/watabou/noosa/Tilemap;->cellW:F

    add-float/2addr v8, v6

    add-int/lit8 v5, v5, 0x1

    move v9, v10

    move/from16 v16, v8

    move v8, v6

    move/from16 v6, v16

    goto/16 :goto_1

    .line 34
    :cond_2
    iget v4, v0, Lcom/watabou/noosa/Tilemap;->cellH:F

    add-float/2addr v4, v1

    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v4

    move v4, v1

    move/from16 v1, v16

    goto/16 :goto_0

    .line 35
    :cond_3
    iget-object v1, v0, Lcom/watabou/noosa/Tilemap;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v1, :cond_4

    .line 36
    new-instance v1, Lcom/watabou/glwrap/Vertexbuffer;

    iget-object v3, v0, Lcom/watabou/noosa/Tilemap;->quads:Ljava/nio/FloatBuffer;

    invoke-direct {v1, v3}, Lcom/watabou/glwrap/Vertexbuffer;-><init>(Ljava/nio/FloatBuffer;)V

    iput-object v1, v0, Lcom/watabou/noosa/Tilemap;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    goto :goto_3

    .line 37
    :cond_4
    iget-boolean v3, v0, Lcom/watabou/noosa/Tilemap;->fullUpdate:Z

    if-eqz v3, :cond_5

    .line 38
    iget-object v3, v0, Lcom/watabou/noosa/Tilemap;->quads:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;)V

    .line 39
    iput-boolean v2, v0, Lcom/watabou/noosa/Tilemap;->fullUpdate:Z

    goto :goto_3

    .line 40
    :cond_5
    iget-object v3, v0, Lcom/watabou/noosa/Tilemap;->quads:Ljava/nio/FloatBuffer;

    iget v4, v0, Lcom/watabou/noosa/Tilemap;->topLeftUpdating:I

    mul-int/lit8 v4, v4, 0x10

    iget v5, v0, Lcom/watabou/noosa/Tilemap;->bottomRightUpdating:I

    mul-int/lit8 v5, v5, 0x10

    invoke-virtual {v1, v3, v4, v5}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;II)V

    .line 41
    :goto_3
    iput v7, v0, Lcom/watabou/noosa/Tilemap;->topLeftUpdating:I

    .line 42
    iget-object v1, v0, Lcom/watabou/noosa/Tilemap;->updating:Lcom/watabou/utils/Rect;

    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->setEmpty()Lcom/watabou/utils/Rect;

    .line 43
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/watabou/noosa/Tilemap;->script()Lcom/watabou/noosa/NoosaScript;

    move-result-object v1

    .line 44
    iget-object v3, v0, Lcom/watabou/noosa/Tilemap;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v3}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 45
    iget-object v3, v1, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v4, v0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-virtual {v3, v4}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 46
    iget v4, v0, Lcom/watabou/noosa/Visual;->rm:F

    iget v5, v0, Lcom/watabou/noosa/Visual;->gm:F

    iget v6, v0, Lcom/watabou/noosa/Visual;->bm:F

    iget v7, v0, Lcom/watabou/noosa/Visual;->am:F

    iget v8, v0, Lcom/watabou/noosa/Visual;->ra:F

    iget v9, v0, Lcom/watabou/noosa/Visual;->ga:F

    iget v10, v0, Lcom/watabou/noosa/Visual;->ba:F

    iget v11, v0, Lcom/watabou/noosa/Visual;->aa:F

    move-object v3, v1

    invoke-virtual/range {v3 .. v11}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    .line 47
    iget-object v3, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 48
    iget-object v3, v0, Lcom/watabou/noosa/Tilemap;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    iget v4, v0, Lcom/watabou/noosa/Tilemap;->size:I

    invoke-virtual {v1, v3, v4, v2}, Lcom/watabou/noosa/NoosaScript;->drawQuadSet(Lcom/watabou/glwrap/Vertexbuffer;II)V

    return-void
.end method

.method public map([II)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    .line 2
    iput p2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    .line 3
    array-length p1, p1

    div-int/2addr p1, p2

    iput p1, p0, Lcom/watabou/noosa/Tilemap;->mapHeight:I

    mul-int v0, p2, p1

    .line 4
    iput v0, p0, Lcom/watabou/noosa/Tilemap;->size:I

    .line 5
    iget v1, p0, Lcom/watabou/noosa/Tilemap;->cellW:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    iput v1, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 6
    iget p2, p0, Lcom/watabou/noosa/Tilemap;->cellH:F

    int-to-float p1, p1

    mul-float p2, p2, p1

    iput p2, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 7
    invoke-static {v0}, Lcom/watabou/glwrap/Quad;->createSet(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/Tilemap;->quads:Ljava/nio/FloatBuffer;

    .line 8
    invoke-virtual {p0}, Lcom/watabou/noosa/Tilemap;->updateMap()V

    return-void
.end method

.method public final declared-synchronized moveToUpdating()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/watabou/utils/Rect;

    iget-object v1, p0, Lcom/watabou/noosa/Tilemap;->updated:Lcom/watabou/utils/Rect;

    .line 2
    iget v2, v1, Lcom/watabou/utils/Rect;->left:I

    iget v3, v1, Lcom/watabou/utils/Rect;->top:I

    iget v4, v1, Lcom/watabou/utils/Rect;->right:I

    iget v1, v1, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    .line 3
    iput-object v0, p0, Lcom/watabou/noosa/Tilemap;->updating:Lcom/watabou/utils/Rect;

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->updated:Lcom/watabou/utils/Rect;

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->setEmpty()Lcom/watabou/utils/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needsRender(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    aget p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public script()Lcom/watabou/noosa/NoosaScript;
    .locals 1

    .line 1
    invoke-static {}, Lcom/watabou/noosa/NoosaScriptNoLighting;->get()Lcom/watabou/noosa/NoosaScriptNoLighting;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updateMap()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->updated:Lcom/watabou/utils/Rect;

    iget v1, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/watabou/noosa/Tilemap;->fullUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateMapCell(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->updated:Lcom/watabou/utils/Rect;

    iget v1, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v1, p1, v1

    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    div-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/watabou/utils/Rect;->union(II)Lcom/watabou/utils/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
