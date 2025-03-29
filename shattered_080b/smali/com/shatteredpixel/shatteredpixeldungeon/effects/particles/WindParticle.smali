.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "WindParticle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;
    }
.end annotation


# static fields
.field public static angle:F

.field public static speed:Lcom/watabou/utils/PointF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x40c90fda

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;->angle:F

    .line 2
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0}, Lcom/watabou/utils/PointF;-><init>()V

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;->angle:F

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;->speed:Lcom/watabou/utils/PointF;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 2
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public reset(FF)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;->speed:Lcom/watabou/utils/PointF;

    invoke-virtual {v0, v1}, Lcom/watabou/utils/PointF;->set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    invoke-virtual {v0, v1}, Lcom/watabou/utils/PointF;->scale(F)Lcom/watabou/utils/PointF;

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget v2, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    mul-float v1, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 6
    iget p1, v0, Lcom/watabou/utils/PointF;->y:F

    mul-float p1, p1, v2

    div-float/2addr p1, v3

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 7
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;->angle:F

    const p2, -0x42333333    # -0.1f

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p2, v0}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p2

    add-float/2addr p2, p1

    sput p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;->angle:F

    .line 8
    new-instance p1, Lcom/watabou/utils/PointF;

    invoke-direct {p1}, Lcom/watabou/utils/PointF;-><init>()V

    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;->angle:F

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2, v0}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle;->speed:Lcom/watabou/utils/PointF;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/watabou/noosa/Visual;->am:F

    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 3
    :goto_0
    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    mul-float v0, v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    return-void
.end method
