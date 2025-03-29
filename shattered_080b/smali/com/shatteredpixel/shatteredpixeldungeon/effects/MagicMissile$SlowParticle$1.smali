.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle;
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
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle;

    .line 2
    invoke-virtual {p2}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iput p3, p2, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iput p4, p2, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iput-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle;->emitter:Lcom/watabou/noosa/particles/Emitter;

    .line 6
    iget p1, p2, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p1, p2, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    .line 7
    iget-object p1, p2, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 p3, 0x0

    .line 8
    iput p3, p1, Lcom/watabou/utils/PointF;->x:F

    .line 9
    iput p3, p1, Lcom/watabou/utils/PointF;->y:F

    .line 10
    iget-object p1, p2, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 p2, 0x41a00000    # 20.0f

    const/high16 p3, -0x3e600000    # -20.0f

    invoke-static {p3, p2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p4

    invoke-static {p3, p2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p2

    .line 11
    iput p4, p1, Lcom/watabou/utils/PointF;->x:F

    .line 12
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public lightMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
