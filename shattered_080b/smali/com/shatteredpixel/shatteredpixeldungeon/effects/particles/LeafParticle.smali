.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;
.super Lcom/watabou/noosa/particles/PixelParticle$Shrinking;
.source "LeafParticle.java"


# static fields
.field public static final GENERAL:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final LEVEL_SPECIFIC:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->GENERAL:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->LEVEL_SPECIFIC:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;-><init>()V

    const v0, 0x3f99999a    # 1.2f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x41c80000    # 25.0f

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public reset(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 2
    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 p2, -0x3f000000    # -8.0f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p2, v0}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p2

    .line 5
    iput p2, p1, Lcom/watabou/utils/PointF;->x:F

    const/high16 p2, -0x3e600000    # -20.0f

    .line 6
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    .line 7
    iget p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    const/high16 p1, 0x40000000    # 2.0f

    const/high16 p2, 0x40400000    # 3.0f

    .line 8
    invoke-static {p1, p2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p1

    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    return-void
.end method
