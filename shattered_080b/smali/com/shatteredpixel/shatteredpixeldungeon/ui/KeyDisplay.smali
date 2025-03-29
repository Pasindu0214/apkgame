.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;
.super Lcom/watabou/noosa/Visual;
.source "KeyDisplay.java"


# static fields
.field public static final keyMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public buffer:Lcom/watabou/glwrap/Vertexbuffer;

.field public dirty:Z

.field public keys:[I

.field public quads:Ljava/nio/FloatBuffer;

.field public totalKeys:I

.field public tx:Lcom/watabou/gltextures/SmartTexture;

.field public vertices:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/CrystalKey;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->vertices:[F

    const-string v0, "menu_button.png"

    .line 3
    invoke-static {v0}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->tx:Lcom/watabou/gltextures/SmartTexture;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->dirty:Z

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcom/watabou/noosa/Visual;->draw()V

    .line 2
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->dirty:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 3
    iget v1, v0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v4, 0x5

    div-int/2addr v1, v4

    .line 4
    iget v5, v0, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v6, 0x4

    div-int/2addr v5, v6

    mul-int v1, v1, v5

    .line 5
    :goto_0
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    const/4 v8, 0x1

    if-le v7, v1, :cond_2

    const/4 v7, 0x0

    .line 6
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    .line 7
    iget-object v12, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keys:[I

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget v12, v12, v13

    if-lt v12, v10, :cond_0

    .line 8
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keys:[I

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget v10, v7, v10

    move-object v7, v11

    goto :goto_1

    .line 9
    :cond_1
    iget-object v9, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keys:[I

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v10, v9, v7

    sub-int/2addr v10, v8

    aput v10, v9, v7

    .line 10
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    sub-int/2addr v7, v8

    iput v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    goto :goto_0

    :cond_2
    int-to-float v1, v7

    int-to-float v7, v5

    div-float/2addr v1, v7

    float-to-double v9, v1

    .line 11
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    mul-int/lit8 v7, v1, 0x8

    int-to-float v7, v7

    .line 12
    iget v9, v0, Lcom/watabou/noosa/Visual;->height:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 13
    :goto_2
    iget v9, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    const/high16 v10, 0x40000000    # 2.0f

    if-le v9, v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    .line 14
    :cond_4
    iget v5, v0, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v5, v3

    mul-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v10

    .line 15
    :goto_3
    iget v9, v0, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v9, v3

    const/16 v3, 0x8

    if-eqz v7, :cond_5

    const/4 v12, 0x5

    goto :goto_4

    :cond_5
    const/16 v12, 0x8

    :goto_4
    mul-int v1, v1, v12

    int-to-float v1, v1

    sub-float/2addr v9, v1

    div-float/2addr v9, v10

    .line 16
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    invoke-static {v1}, Lcom/watabou/glwrap/Quad;->createSet(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->quads:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 17
    :goto_5
    iget v10, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    if-ge v1, v10, :cond_f

    if-nez v1, :cond_6

    .line 18
    iget-object v10, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keys:[I

    aget v10, v10, v2

    if-lez v10, :cond_6

    goto :goto_7

    :cond_6
    const/4 v10, 0x1

    .line 19
    :goto_6
    iget-object v12, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keys:[I

    array-length v13, v12

    if-ge v10, v13, :cond_8

    .line 20
    aget v13, v12, v10

    if-lez v13, :cond_7

    .line 21
    aget v13, v12, v10

    sub-int/2addr v13, v8

    aput v13, v12, v10

    goto :goto_8

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    const/4 v10, 0x0

    .line 22
    :goto_8
    iget-object v12, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->tx:Lcom/watabou/gltextures/SmartTexture;

    const/4 v13, 0x3

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v14, v10, 0x2b

    int-to-float v14, v14

    if-eqz v7, :cond_9

    const/high16 v15, 0x41000000    # 8.0f

    goto :goto_9

    :cond_9
    const/4 v15, 0x0

    :goto_9
    add-int/lit8 v10, v10, 0x2e

    int-to-float v10, v10

    if-eqz v7, :cond_a

    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v11, 0x41400000    # 12.0f

    goto :goto_a

    :cond_a
    const/high16 v16, 0x40e00000    # 7.0f

    const/high16 v11, 0x40e00000    # 7.0f

    :goto_a
    invoke-virtual {v12, v14, v15, v10, v11}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object v10

    .line 23
    iget-object v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->vertices:[F

    const/4 v12, 0x2

    iget v14, v10, Lcom/watabou/utils/RectF;->left:F

    aput v14, v11, v12

    .line 24
    iget v12, v10, Lcom/watabou/utils/RectF;->top:F

    aput v12, v11, v13

    const/4 v13, 0x6

    .line 25
    iget v15, v10, Lcom/watabou/utils/RectF;->right:F

    aput v15, v11, v13

    const/4 v13, 0x7

    .line 26
    aput v12, v11, v13

    const/16 v12, 0xa

    .line 27
    aput v15, v11, v12

    const/16 v12, 0xb

    .line 28
    iget v10, v10, Lcom/watabou/utils/RectF;->bottom:F

    aput v10, v11, v12

    const/16 v12, 0xe

    .line 29
    aput v14, v11, v12

    const/16 v12, 0xf

    .line 30
    aput v10, v11, v12

    .line 31
    aput v5, v11, v2

    .line 32
    aput v9, v11, v8

    const/high16 v10, 0x40400000    # 3.0f

    add-float v12, v5, v10

    .line 33
    aput v12, v11, v6

    .line 34
    aput v9, v11, v4

    .line 35
    aput v12, v11, v3

    const/16 v12, 0x9

    if-eqz v7, :cond_b

    const/4 v14, 0x4

    goto :goto_b

    :cond_b
    const/4 v14, 0x7

    :goto_b
    int-to-float v14, v14

    add-float/2addr v14, v9

    .line 36
    aput v14, v11, v12

    .line 37
    iget-object v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->vertices:[F

    const/16 v12, 0xc

    aput v5, v11, v12

    const/16 v12, 0xd

    if-eqz v7, :cond_c

    const/4 v13, 0x4

    :cond_c
    int-to-float v13, v13

    add-float/2addr v13, v9

    .line 38
    aput v13, v11, v12

    .line 39
    iget-object v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->quads:Ljava/nio/FloatBuffer;

    iget-object v12, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->vertices:[F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/high16 v11, 0x40800000    # 4.0f

    add-float/2addr v5, v11

    add-float/2addr v10, v5

    .line 40
    iget v11, v0, Lcom/watabou/noosa/Visual;->width:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_e

    if-eqz v7, :cond_d

    const/4 v5, 0x5

    goto :goto_c

    :cond_d
    const/16 v5, 0x8

    :goto_c
    int-to-float v5, v5

    add-float/2addr v9, v5

    const/4 v5, 0x0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 41
    :cond_f
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->dirty:Z

    .line 42
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->quads:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 43
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v1, :cond_10

    .line 44
    new-instance v1, Lcom/watabou/glwrap/Vertexbuffer;

    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->quads:Ljava/nio/FloatBuffer;

    invoke-direct {v1, v3}, Lcom/watabou/glwrap/Vertexbuffer;-><init>(Ljava/nio/FloatBuffer;)V

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    goto :goto_d

    .line 45
    :cond_10
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->quads:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;)V

    .line 46
    :cond_11
    :goto_d
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v1

    .line 47
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->tx:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v3}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 49
    iget-object v3, v1, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v4, v0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-virtual {v3, v4}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 50
    iget v5, v0, Lcom/watabou/noosa/Visual;->rm:F

    iget v6, v0, Lcom/watabou/noosa/Visual;->gm:F

    iget v7, v0, Lcom/watabou/noosa/Visual;->bm:F

    iget v8, v0, Lcom/watabou/noosa/Visual;->am:F

    iget v9, v0, Lcom/watabou/noosa/Visual;->ra:F

    iget v10, v0, Lcom/watabou/noosa/Visual;->ga:F

    iget v11, v0, Lcom/watabou/noosa/Visual;->ba:F

    iget v12, v0, Lcom/watabou/noosa/Visual;->aa:F

    move-object v4, v1

    invoke-virtual/range {v4 .. v12}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    .line 51
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    invoke-virtual {v1, v3, v4, v2}, Lcom/watabou/noosa/NoosaScript;->drawQuadSet(Lcom/watabou/glwrap/Vertexbuffer;II)V

    return-void
.end method
