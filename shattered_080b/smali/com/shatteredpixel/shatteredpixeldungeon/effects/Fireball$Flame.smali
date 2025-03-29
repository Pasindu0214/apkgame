.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;
.super Lcom/watabou/noosa/Image;
.source "Fireball.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flame"
.end annotation


# static fields
.field public static ACC:F = -20.0f

.field public static LIFESPAN:F = 1.0f

.field public static SPEED:F = -40.0f


# instance fields
.field public heightLimit:F

.field public timeLeft:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v0, "fireball.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->FLAME1:Lcom/watabou/utils/RectF;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->FLAME2:Lcom/watabou/utils/RectF;

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 7
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v3, v2

    .line 8
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 9
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    .line 10
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;->ACC:F

    .line 11
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 12
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/Visual;->y:F

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;->heightLimit:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 3
    iput v1, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v1, -0x3e600000    # -20.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    .line 7
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    .line 8
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 9
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    .line 10
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;->timeLeft:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;->timeLeft:F

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    goto :goto_1

    .line 12
    :cond_1
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;->LIFESPAN:F

    div-float/2addr v0, v1

    .line 13
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 14
    iput v0, v1, Lcom/watabou/utils/PointF;->x:F

    .line 15
    iput v0, v1, Lcom/watabou/utils/PointF;->y:F

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v1, v1, v0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v1, v1, v0

    .line 16
    :goto_0
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    :goto_1
    return-void
.end method
