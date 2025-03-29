.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;
.super Lcom/watabou/noosa/particles/PixelParticle$Shrinking;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EarthParticle"
.end annotation


# static fields
.field public static final ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle$3;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle$3;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x42200000    # 40.0f

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public reset(FF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 2
    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 5
    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    const/16 p1, 0xa

    .line 6
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0xfff266

    const p2, 0x80771a

    .line 7
    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->color(I)V

    goto :goto_0

    :cond_0
    const p1, 0x805500

    const p2, 0x332500

    .line 8
    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->color(I)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 p2, 0x41200000    # 10.0f

    const/high16 v0, -0x3ee00000    # -10.0f

    invoke-static {v0, p2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    invoke-static {v0, p2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p2

    .line 10
    iput v1, p1, Lcom/watabou/utils/PointF;->x:F

    .line 11
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method
