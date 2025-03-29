.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle$2;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "PurpleParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle;
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
    .locals 1

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const p3, 0x40c90fda

    invoke-static {p3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p3

    const/high16 p4, 0x41800000    # 16.0f

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {p4, v0}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 6
    iget p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    return-void
.end method

.method public lightMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
