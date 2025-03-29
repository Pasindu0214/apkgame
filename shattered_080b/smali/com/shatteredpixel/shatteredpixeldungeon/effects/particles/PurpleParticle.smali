.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "PurpleParticle.java"


# static fields
.field public static final BURST:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    .line 3
    iget v0, p0, Lcom/watabou/noosa/Visual;->am:F

    const v1, 0x220066

    const v2, 0xff0044

    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->interpolate(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    return-void
.end method
