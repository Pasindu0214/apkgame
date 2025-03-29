.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle$3;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "ShadowParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;
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
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v0, -0x3f000000    # -8.0f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    const/high16 v1, -0x3e000000    # -32.0f

    const/high16 v2, -0x3dc00000    # -48.0f

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    .line 4
    iput v0, p2, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v1, p2, Lcom/watabou/utils/PointF;->y:F

    .line 6
    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 7
    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    const/high16 p2, 0x40c00000    # 6.0f

    .line 8
    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    return-void
.end method
