.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "SnowParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle;
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
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget p2, p2, Lcom/watabou/utils/PointF;->y:F

    iget p3, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    mul-float p2, p2, p3

    sub-float/2addr p4, p2

    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iput p3, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    return-void
.end method
