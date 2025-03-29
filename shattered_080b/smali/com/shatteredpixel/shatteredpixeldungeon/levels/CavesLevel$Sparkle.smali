.class public final Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel$Sparkle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "CavesLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sparkle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

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

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v0, v2, v1

    .line 3
    :goto_0
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
