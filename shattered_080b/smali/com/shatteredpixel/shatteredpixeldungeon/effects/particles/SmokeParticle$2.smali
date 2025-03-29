.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle$2;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "SmokeParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle;
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
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/high16 p3, -0x3de00000    # -40.0f

    .line 6
    iput p3, p2, Lcom/watabou/utils/PointF;->x:F

    const/high16 p3, 0x42200000    # 40.0f

    .line 7
    iput p3, p2, Lcom/watabou/utils/PointF;->y:F

    const p2, 0x3f19999a    # 0.6f

    const/high16 p3, 0x3f800000    # 1.0f

    .line 8
    invoke-static {p2, p3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p2

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    .line 9
    iget-object p1, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const p2, 0x40aae713

    const p3, 0x40b4f4aa

    invoke-static {p2, p3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p2

    const/high16 p3, 0x41f00000    # 30.0f

    const/high16 p4, 0x42700000    # 60.0f

    invoke-static {p3, p4}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    return-void
.end method
