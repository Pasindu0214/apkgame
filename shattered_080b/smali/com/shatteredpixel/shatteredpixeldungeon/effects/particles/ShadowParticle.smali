.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;
.super Lcom/watabou/noosa/particles/PixelParticle$Shrinking;
.source "ShadowParticle.java"


# static fields
.field public static final CURSE:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final MISSILE:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final UP:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->MISSILE:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->CURSE:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle$3;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle$3;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const v2, 0x440044

    .line 3
    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->interpolate(IIF)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Visual;->color(I)V

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    mul-float v0, v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 4
    :goto_0
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    return-void
.end method
