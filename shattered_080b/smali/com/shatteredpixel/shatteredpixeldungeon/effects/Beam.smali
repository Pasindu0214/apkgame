.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;
.super Lcom/watabou/noosa/Image;
.source "Beam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$HealthRay;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$LightRay;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;
    }
.end annotation


# instance fields
.field public duration:F

.field public timeLeft:F


# direct methods
.method public synthetic constructor <init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;FLcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$1;)V
    .locals 4

    .line 1
    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;)Lcom/watabou/noosa/Image;

    move-result-object p3

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 3
    invoke-virtual {p0, p3}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 4
    iget-object p3, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    const/4 p5, 0x0

    iget v0, p0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 5
    iput p5, p3, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v0, p3, Lcom/watabou/utils/PointF;->y:F

    .line 7
    iget p3, p1, Lcom/watabou/utils/PointF;->x:F

    sub-float p5, p3, p5

    iput p5, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 8
    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    sub-float p5, p1, v0

    iput p5, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 9
    iget p5, p2, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr p5, p3

    .line 10
    iget p2, p2, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr p2, p1

    float-to-double v0, p2

    float-to-double v2, p5

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    double-to-float p1, v0

    iput p1, p0, Lcom/watabou/noosa/Visual;->angle:F

    .line 12
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    mul-float p5, p5, p5

    mul-float p2, p2, p2

    add-float/2addr p2, p5

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    iget p3, p0, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr p2, p3

    iput p2, p1, Lcom/watabou/utils/PointF;->x:F

    .line 13
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string p3, "snd_ray.mp3"

    .line 14
    invoke-virtual {p1, p3, p2, p2, p2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 15
    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;->duration:F

    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;->timeLeft:F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setLightMode()V

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Image;->draw()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    return-void
.end method

.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;->timeLeft:F

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;->duration:F

    div-float/2addr v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 4
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v0, v1, Lcom/watabou/utils/PointF;->y:F

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;->timeLeft:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;->timeLeft:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_0
    return-void
.end method
