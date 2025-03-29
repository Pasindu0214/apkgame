.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;
.super Lcom/watabou/noosa/ColorBlock;
.source "PixelScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fader"
.end annotation


# static fields
.field public static FADE_TIME:F = 1.0f


# instance fields
.field public light:Z

.field public time:F


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget v1, v0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v1, v1

    iget v0, v0, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v0, v0

    invoke-direct {p0, v1, v0, p1}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 2
    iput-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;->light:Z

    .line 3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 5
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;->FADE_TIME:F

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;->time:F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;->light:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setLightMode()V

    .line 3
    invoke-super {p0}, Lcom/watabou/noosa/Image;->draw()V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/watabou/noosa/Image;->draw()V

    :goto_0
    return-void
.end method

.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;->time:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;->time:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;->FADE_TIME:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    :goto_0
    return-void
.end method
