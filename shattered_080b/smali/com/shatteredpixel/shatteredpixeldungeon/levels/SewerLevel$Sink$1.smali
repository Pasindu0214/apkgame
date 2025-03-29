.class public final Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "SewerLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;
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
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$WaterParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$WaterParticle;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 p3, -0x40000000    # -2.0f

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p3, p4}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p3

    .line 6
    iput p3, p2, Lcom/watabou/utils/PointF;->x:F

    const/4 p3, 0x0

    .line 7
    iput p3, p2, Lcom/watabou/utils/PointF;->y:F

    const p2, 0x3ecccccd    # 0.4f

    .line 8
    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p2, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    return-void
.end method
