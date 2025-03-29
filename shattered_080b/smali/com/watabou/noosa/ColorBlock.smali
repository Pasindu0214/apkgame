.class public Lcom/watabou/noosa/ColorBlock;
.super Lcom/watabou/noosa/Image;
.source "ColorBlock.java"


# direct methods
.method public constructor <init>(FFI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/watabou/gltextures/TextureCache;->createSolid(I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object p3

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 3
    invoke-virtual {p0, p3}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 5
    iput p1, p3, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput p2, p3, Lcom/watabou/utils/PointF;->y:F

    .line 7
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    const/4 p2, 0x0

    .line 8
    iput p2, p1, Lcom/watabou/utils/PointF;->x:F

    .line 9
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public height()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    return v0
.end method

.method public size(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 2
    iput p1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 3
    iput p2, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public width()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    return v0
.end method
