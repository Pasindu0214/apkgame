.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BlastParticle$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "BlastParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BlastParticle;
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
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BlastParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BlastParticle;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result p2

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    const/high16 p2, 0x41000000    # 8.0f

    .line 6
    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    .line 7
    iget-object p1, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const p2, 0x40490fda

    invoke-static {p2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p2

    neg-float p2, p2

    const/high16 p3, 0x42000000    # 32.0f

    const/high16 p4, 0x42800000    # 64.0f

    invoke-static {p3, p4}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    return-void
.end method

.method public lightMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
