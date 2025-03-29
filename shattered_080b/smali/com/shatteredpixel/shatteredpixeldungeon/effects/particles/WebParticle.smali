.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WebParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "WebParticle.java"


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WebParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WebParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WebParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const v0, 0xcccccc

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 3
    :goto_0
    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 4
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method
