.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PitfallParticle;
.super Lcom/watabou/noosa/particles/PixelParticle$Shrinking;
.source "PitfallParticle.java"


# static fields
.field public static final FACTORY4:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final FACTORY8:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PitfallParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PitfallParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PitfallParticle;->FACTORY4:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PitfallParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PitfallParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PitfallParticle;->FACTORY8:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const/high16 v0, -0x3e100000    # -30.0f

    const/high16 v1, 0x41f00000    # 30.0f

    .line 3
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->angle:F

    return-void
.end method
