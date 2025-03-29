.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;
.super Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShamanParticle"
.end annotation


# static fields
.field public static final BLUE:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final PURPLE:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final RED:Lcom/watabou/noosa/particles/Emitter$Factory;


# instance fields
.field public endColor:I

.field public startColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->RED:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->BLUE:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle$3;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle$3;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->PURPLE:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public reset(FFI)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->reset(FF)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    .line 3
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->endColor:I

    const p1, 0x805500

    const p2, 0x332500

    .line 4
    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->startColor:I

    .line 5
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 p2, 0x41200000    # 10.0f

    const/high16 p3, -0x3ee00000    # -10.0f

    invoke-static {p3, p2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    invoke-static {p3, p2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p2

    .line 6
    iput v0, p1, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->endColor:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->startColor:I

    iget v2, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v3, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->interpolate(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    return-void
.end method
