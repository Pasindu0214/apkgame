.class public Lcom/watabou/noosa/particles/PixelParticle;
.super Lcom/watabou/noosa/PseudoPixel;
.source "PixelParticle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/watabou/noosa/particles/PixelParticle$Shrinking;
    }
.end annotation


# instance fields
.field public left:F

.field public lifespan:F

.field public size:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/PseudoPixel;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 3
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public reset(FFIFF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 2
    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    invoke-virtual {p0, p3}, Lcom/watabou/noosa/Visual;->color(I)V

    .line 5
    iput p4, p0, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    .line 6
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 7
    iput p4, p1, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iput p4, p1, Lcom/watabou/utils/PointF;->y:F

    .line 9
    iput p5, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p5, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    :cond_0
    return-void
.end method
