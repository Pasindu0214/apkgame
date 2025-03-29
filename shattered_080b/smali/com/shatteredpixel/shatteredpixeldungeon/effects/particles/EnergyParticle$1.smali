.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EnergyParticle$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "EnergyParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EnergyParticle;
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
    .locals 2

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EnergyParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EnergyParticle;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iget p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    .line 4
    iget-object v0, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    mul-float v1, v1, p2

    sub-float/2addr p3, v1

    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 5
    iget p3, v0, Lcom/watabou/utils/PointF;->y:F

    mul-float p3, p3, p2

    sub-float/2addr p4, p3

    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public lightMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
