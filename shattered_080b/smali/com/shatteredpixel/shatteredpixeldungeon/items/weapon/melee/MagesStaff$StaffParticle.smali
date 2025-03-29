.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "MagesStaff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StaffParticle"
.end annotation


# instance fields
.field public maxSize:F

.field public minSize:F

.field public sizeJitter:F

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->sizeJitter:F

    return-void
.end method


# virtual methods
.method public radiateXY(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    float-to-double v1, v1

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/watabou/noosa/Visual;->x:F

    iget-object v2, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    div-float/2addr v3, v0

    mul-float v3, v3, p1

    add-float/2addr v3, v1

    iput v3, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/Visual;->y:F

    iget v2, v2, Lcom/watabou/utils/PointF;->y:F

    div-float/2addr v2, v0

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    iput v2, p0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public shuffleXY(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/watabou/noosa/Visual;->x:F

    neg-float v1, p1

    invoke-static {v1, p1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    add-float/2addr v2, v0

    iput v2, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v0, p0, Lcom/watabou/noosa/Visual;->y:F

    invoke-static {v1, p1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v2, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->sizeJitter:F

    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
