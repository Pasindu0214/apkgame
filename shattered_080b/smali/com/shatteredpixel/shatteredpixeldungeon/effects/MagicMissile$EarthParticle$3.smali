.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle$3;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
    .locals 3

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->reset(FF)V

    .line 3
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const v0, 0x40c90fda

    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 4
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v0, p2, Lcom/watabou/utils/PointF;->x:F

    iget v1, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    mul-float v0, v0, v1

    sub-float/2addr p3, v0

    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 5
    iget p2, p2, Lcom/watabou/utils/PointF;->y:F

    mul-float p2, p2, v1

    sub-float/2addr p4, p2

    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 6
    iget-object p1, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 p2, 0x0

    .line 7
    iput p2, p1, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method
