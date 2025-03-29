.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ForceParticle;
.super Lcom/watabou/noosa/particles/PixelParticle$Shrinking;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForceParticle"
.end annotation


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ForceParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ForceParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ForceParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;-><init>()V

    return-void
.end method


# virtual methods
.method public reset(IFF)V
    .locals 6

    const v3, 0xffffff

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p2

    move v2, p3

    .line 1
    invoke-super/range {v0 .. v5}, Lcom/watabou/noosa/particles/PixelParticle;->reset(FFIFF)V

    .line 2
    iget-object p2, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    int-to-float p1, p1

    const p3, 0x3f490fda

    mul-float p1, p1, p3

    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {p2, p1, p3}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 3
    iget p1, p0, Lcom/watabou/noosa/Visual;->x:F

    iget-object p2, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget p3, p2, Lcom/watabou/utils/PointF;->x:F

    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    mul-float p3, p3, v0

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget p1, p0, Lcom/watabou/noosa/Visual;->y:F

    iget p2, p2, Lcom/watabou/utils/PointF;->y:F

    mul-float p2, p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    return-void
.end method
