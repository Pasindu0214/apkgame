.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle$2;
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
    .locals 0

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->reset(FF)V

    .line 3
    iget-object p1, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const p2, 0x40c90fda

    invoke-static {p2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p2

    const/high16 p3, 0x42200000    # 40.0f

    const/high16 p4, 0x42700000    # 60.0f

    invoke-static {p3, p4}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    return-void
.end method
