.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlowParticle"
.end annotation


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# instance fields
.field public emitter:Lcom/watabou/noosa/particles/Emitter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    const v0, 0x664422

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle;->emitter:Lcom/watabou/noosa/particles/Emitter;

    iget v2, v1, Lcom/watabou/noosa/particles/Emitter;->x:F

    iget v3, p0, Lcom/watabou/noosa/Visual;->x:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v2, v2, v3

    iget v1, v1, Lcom/watabou/noosa/particles/Emitter;->y:F

    iget v4, p0, Lcom/watabou/noosa/Visual;->y:F

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    .line 4
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method
