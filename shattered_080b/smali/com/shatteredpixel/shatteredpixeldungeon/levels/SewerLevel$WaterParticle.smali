.class public final Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$WaterParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "SewerLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaterParticle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x42480000    # 50.0f

    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    const v0, 0xb6ccc2

    const v1, 0x3b6653

    .line 4
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
