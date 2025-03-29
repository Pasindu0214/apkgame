.class public Lcom/watabou/noosa/SkinnedBlock;
.super Lcom/watabou/noosa/Image;
.source "SkinnedBlock.java"


# instance fields
.field public autoAdjust:Z

.field public offsetX:F

.field public offsetY:F

.field public scaleX:F

.field public scaleY:F


# direct methods
.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 2
    invoke-virtual {p0, p3}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcom/watabou/noosa/SkinnedBlock;->autoAdjust:Z

    .line 4
    iget-object p3, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v0, 0x2901

    invoke-virtual {p3, v0, v0}, Lcom/watabou/gltextures/SmartTexture;->wrap(II)V

    .line 5
    iput p1, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 6
    iput p2, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 7
    invoke-virtual {p0}, Lcom/watabou/noosa/SkinnedBlock;->updateFrame()V

    .line 8
    invoke-virtual {p0}, Lcom/watabou/noosa/Image;->updateVertices()V

    return-void
.end method


# virtual methods
.method public frame(Lcom/watabou/utils/RectF;)V
    .locals 2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    iput p1, p0, Lcom/watabou/noosa/SkinnedBlock;->scaleX:F

    .line 2
    iput p1, p0, Lcom/watabou/noosa/SkinnedBlock;->scaleY:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    .line 4
    iput v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    .line 5
    new-instance v1, Lcom/watabou/utils/RectF;

    invoke-direct {v1, v0, v0, p1, p1}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    invoke-super {p0, v1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    return-void
.end method

.method public offset(FF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    .line 2
    iget p1, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/SkinnedBlock;->updateFrame()V

    return-void
.end method

.method public size(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 2
    iput p2, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/SkinnedBlock;->updateFrame()V

    .line 4
    invoke-virtual {p0}, Lcom/watabou/noosa/Image;->updateVertices()V

    return-void
.end method

.method public updateFrame()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/SkinnedBlock;->autoAdjust:Z

    if-eqz v0, :cond_3

    .line 2
    :goto_0
    iget v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v1, v1, Lcom/watabou/gltextures/SmartTexture;->width:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    iget v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v1, v1, Lcom/watabou/gltextures/SmartTexture;->width:I

    neg-int v2, v1

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    goto :goto_1

    .line 6
    :cond_1
    :goto_2
    iget v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v1, v1, Lcom/watabou/gltextures/SmartTexture;->height:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    goto :goto_2

    .line 8
    :cond_2
    :goto_3
    iget v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v1, v1, Lcom/watabou/gltextures/SmartTexture;->height:I

    neg-int v2, v1

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    goto :goto_3

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v1, v0, Lcom/watabou/gltextures/SmartTexture;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 11
    iget v0, v0, Lcom/watabou/gltextures/SmartTexture;->height:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 12
    iget v0, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    mul-float v0, v0, v1

    .line 13
    iget v3, p0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    mul-float v3, v3, v2

    .line 14
    iget v4, p0, Lcom/watabou/noosa/Visual;->width:F

    mul-float v4, v4, v1

    iget v1, p0, Lcom/watabou/noosa/SkinnedBlock;->scaleX:F

    div-float/2addr v4, v1

    add-float/2addr v4, v0

    .line 15
    iget v1, p0, Lcom/watabou/noosa/Visual;->height:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/watabou/noosa/SkinnedBlock;->scaleY:F

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 16
    iget-object v2, p0, Lcom/watabou/noosa/Image;->vertices:[F

    const/4 v5, 0x2

    aput v0, v2, v5

    const/4 v5, 0x3

    .line 17
    aput v3, v2, v5

    const/4 v5, 0x6

    .line 18
    aput v4, v2, v5

    const/4 v5, 0x7

    .line 19
    aput v3, v2, v5

    const/16 v3, 0xa

    .line 20
    aput v4, v2, v3

    const/16 v3, 0xb

    .line 21
    aput v1, v2, v3

    const/16 v3, 0xe

    .line 22
    aput v0, v2, v3

    const/16 v0, 0xf

    .line 23
    aput v1, v2, v0

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/watabou/noosa/Image;->dirty:Z

    return-void
.end method
