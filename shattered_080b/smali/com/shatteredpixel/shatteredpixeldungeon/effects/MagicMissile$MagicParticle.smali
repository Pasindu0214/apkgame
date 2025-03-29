.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagicParticle"
.end annotation


# static fields
.field public static final ATTRACTING:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle;->ATTRACTING:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const v0, 0x88ccff

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-static {v2, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v3

    invoke-static {v2, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    .line 5
    iput v3, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
