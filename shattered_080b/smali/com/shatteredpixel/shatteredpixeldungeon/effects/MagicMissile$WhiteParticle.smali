.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WhiteParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhiteParticle"
.end annotation


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WhiteParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WhiteParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WhiteParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const v0, 0x3ecccccd    # 0.4f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

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

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
