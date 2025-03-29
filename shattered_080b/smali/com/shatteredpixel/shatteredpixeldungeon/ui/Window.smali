.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.super Lcom/watabou/noosa/Group;
.source "Window.java"

# interfaces
.implements Lcom/watabou/utils/Signal$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/watabou/noosa/Group;",
        "Lcom/watabou/utils/Signal$Listener<",
        "Lcom/watabou/input/KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public blocker:Lcom/watabou/noosa/PointerArea;

.field public chrome:Lcom/watabou/noosa/NinePatch;

.field public height:I

.field public shadow:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;

.field public width:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->WINDOW:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v0}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>(IIILcom/watabou/noosa/NinePatch;)V

    return-void
.end method

.method public constructor <init>(IIILcom/watabou/noosa/NinePatch;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 3
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->yOffset:I

    .line 4
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window$1;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget v1, v0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v4, v1

    iget v0, v0, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;FFFF)V

    iput-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->blocker:Lcom/watabou/noosa/PointerArea;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v0, v6, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 6
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    .line 8
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    .line 9
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->shadow:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 11
    iput v1, v0, Lcom/watabou/noosa/Visual;->am:F

    .line 12
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    :goto_0
    iput-object v1, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->shadow:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    iget v0, p4, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 15
    iput v0, p4, Lcom/watabou/noosa/Visual;->x:F

    .line 16
    iget v1, p4, Lcom/watabou/noosa/NinePatch;->marginTop:I

    neg-int v1, v1

    int-to-float v1, v1

    .line 17
    iput v1, p4, Lcom/watabou/noosa/Visual;->y:F

    int-to-float p1, p1

    sub-float/2addr p1, v0

    .line 18
    iget v0, p4, Lcom/watabou/noosa/NinePatch;->marginRight:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    int-to-float p2, p2

    sub-float/2addr p2, v1

    .line 19
    iget v0, p4, Lcom/watabou/noosa/NinePatch;->marginBottom:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 20
    invoke-virtual {p4, p1, p2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    .line 21
    invoke-virtual {p0, p4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    new-instance p1, Lcom/watabou/noosa/Camera;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget p2, p4, Lcom/watabou/noosa/Visual;->width:F

    float-to-int v3, p2

    iget p2, p4, Lcom/watabou/noosa/Visual;->height:F

    float-to-int v4, p2

    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v5, p2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/watabou/noosa/Camera;-><init>(IIIIF)V

    iput-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 23
    sget p2, Lcom/watabou/noosa/Game;->width:I

    int-to-float p2, p2

    iget v0, p1, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v0, v0

    iget v1, p1, Lcom/watabou/noosa/Camera;->zoom:F

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/watabou/noosa/Camera;->x:I

    .line 24
    sget p2, Lcom/watabou/noosa/Game;->height:I

    int-to-float p2, p2

    iget v0, p1, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/watabou/noosa/Camera;->y:I

    int-to-float p2, p2

    int-to-float p3, p3

    mul-float p3, p3, v1

    sub-float/2addr p2, p3

    float-to-int p2, p2

    .line 25
    iput p2, p1, Lcom/watabou/noosa/Camera;->y:I

    .line 26
    iget-object p2, p1, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget p3, p4, Lcom/watabou/noosa/Visual;->x:F

    iget v0, p4, Lcom/watabou/noosa/Visual;->y:F

    .line 27
    iput p3, p2, Lcom/watabou/utils/PointF;->x:F

    .line 28
    iput v0, p2, Lcom/watabou/utils/PointF;->y:F

    .line 29
    invoke-static {p1}, Lcom/watabou/noosa/Camera;->add(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    .line 30
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->shadow:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;

    iget-object p2, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget p3, p2, Lcom/watabou/noosa/Camera;->x:I

    int-to-float p3, p3

    iget v0, p2, Lcom/watabou/noosa/Camera;->zoom:F

    div-float/2addr p3, v0

    iget p2, p2, Lcom/watabou/noosa/Camera;->y:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 31
    invoke-virtual {p4}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    iget p4, p4, Lcom/watabou/noosa/Visual;->height:F

    .line 32
    invoke-virtual {p1, p3, p2, v0, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;->boxRect(FFFF)V

    .line 33
    sget-object p1, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {p1, p0}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    invoke-static {v0}, Lcom/watabou/noosa/Camera;->remove(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    .line 3
    sget-object v0, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v0, p0}, Lcom/watabou/utils/Signal;->remove(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method

.method public hide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->erase(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->destroy()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method

.method public onSignal(Lcom/watabou/input/KeyEvent;)Z
    .locals 1

    .line 2
    iget-boolean v0, p1, Lcom/watabou/input/KeyEvent;->pressed:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->getActionForKey(Lcom/watabou/input/KeyEvent;)Lcom/watabou/input/GameAction;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->BACK:Lcom/watabou/input/GameAction;

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onSignal(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/watabou/input/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->onSignal(Lcom/watabou/input/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public resize(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    .line 2
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    .line 3
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    .line 4
    invoke-virtual {p2}, Lcom/watabou/noosa/NinePatch;->marginHor()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    .line 5
    invoke-virtual {v1}, Lcom/watabou/noosa/NinePatch;->marginVer()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    .line 7
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    iget v0, p2, Lcom/watabou/noosa/Visual;->width:F

    float-to-int v0, v0

    iget p2, p2, Lcom/watabou/noosa/Visual;->height:F

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/watabou/noosa/Camera;->resize(II)V

    .line 8
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    sget p2, Lcom/watabou/noosa/Game;->width:I

    int-to-float p2, p2

    .line 9
    iget v0, p1, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v0, v0

    iget v1, p1, Lcom/watabou/noosa/Camera;->zoom:F

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 10
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/watabou/noosa/Camera;->x:I

    .line 11
    sget v0, Lcom/watabou/noosa/Game;->height:I

    int-to-float v0, v0

    .line 12
    iget v2, p1, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 13
    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/watabou/noosa/Camera;->y:I

    int-to-float v0, v0

    .line 14
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->yOffset:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p1, Lcom/watabou/noosa/Camera;->y:I

    .line 15
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->shadow:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;

    int-to-float p2, p2

    div-float/2addr p2, v1

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->width()F

    move-result v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    iget v2, v2, Lcom/watabou/noosa/Visual;->height:F

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;->boxRect(FFFF)V

    return-void
.end method
