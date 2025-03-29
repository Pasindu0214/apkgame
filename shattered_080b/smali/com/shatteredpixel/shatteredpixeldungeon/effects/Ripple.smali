.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;
.super Lcom/watabou/noosa/Image;
.source "Ripple.java"


# instance fields
.field public time:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->RIPPLE:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;->time:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;->time:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    .line 5
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 7
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    :goto_0
    return-void
.end method
