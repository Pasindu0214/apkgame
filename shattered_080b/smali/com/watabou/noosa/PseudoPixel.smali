.class public Lcom/watabou/noosa/PseudoPixel;
.super Lcom/watabou/noosa/Image;
.source "PseudoPixel.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Lcom/watabou/gltextures/TextureCache;->createSolid(I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 2
    iput p1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 3
    iput p1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method
