.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashFactory"
.end annotation


# instance fields
.field public color:I

.field public cone:F

.field public dir:F


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
    .locals 6

    .line 1
    const-class p2, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/watabou/noosa/particles/PixelParticle;

    .line 2
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;->color:I

    const/high16 p2, 0x3f000000    # 0.5f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v5

    const/high16 v4, 0x40800000    # 4.0f

    move-object v0, p1

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/watabou/noosa/particles/PixelParticle;->reset(FFIFF)V

    .line 3
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;->dir:F

    iget p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;->cone:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p4, v0

    sub-float v1, p3, v1

    div-float/2addr p4, v0

    add-float/2addr p4, p3

    invoke-static {v1, p4}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p3

    const/high16 p4, 0x42200000    # 40.0f

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p4, v0}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 4
    iget-object p1, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 p2, 0x0

    .line 5
    iput p2, p1, Lcom/watabou/utils/PointF;->x:F

    const/high16 p2, 0x42c80000    # 100.0f

    .line 6
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method
