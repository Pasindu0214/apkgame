.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EarthParticle$2;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "EarthParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EarthParticle;
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
    .locals 0

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EarthParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EarthParticle;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 5
    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    const/high16 p2, 0x41800000    # 16.0f

    .line 6
    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 7
    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    const/high16 p2, 0x41000000    # 8.0f

    .line 8
    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    .line 9
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/high16 p3, 0x41f00000    # 30.0f

    iput p3, p2, Lcom/watabou/utils/PointF;->y:F

    .line 10
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 p3, -0x3f600000    # -5.0f

    iput p3, p2, Lcom/watabou/utils/PointF;->y:F

    const/high16 p2, -0x3d4c0000    # -90.0f

    const/high16 p3, 0x42b40000    # 90.0f

    .line 11
    invoke-static {p2, p3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p2

    iput p2, p1, Lcom/watabou/noosa/Visual;->angularSpeed:F

    return-void
.end method
