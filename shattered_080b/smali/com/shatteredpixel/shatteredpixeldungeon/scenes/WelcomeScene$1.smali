.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$1;
.super Lcom/watabou/noosa/Image;
.source "WelcomeScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public time:F


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;Lcom/watabou/noosa/Image;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$1;->time:F

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
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$1;->time:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$1;->time:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$1;->time:F

    float-to-double v2, v0

    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$1;->time:F

    :cond_0
    return-void
.end method
