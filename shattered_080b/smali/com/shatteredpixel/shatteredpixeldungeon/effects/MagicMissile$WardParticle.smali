.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;
.super Lcom/watabou/noosa/particles/PixelParticle$Shrinking;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WardParticle"
.end annotation


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final UP:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    const v0, 0x8822ff

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    return-void
.end method


# virtual methods
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

    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    return-void
.end method
