.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;
.super Lcom/watabou/noosa/ui/Component;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;
    }
.end annotation


# instance fields
.field public content:Lcom/watabou/noosa/ui/Component;

.field public controller:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;

.field public thumb:Lcom/watabou/noosa/ColorBlock;


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/ui/Component;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 3
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    iget v0, p1, Lcom/watabou/noosa/ui/Component;->width:F

    .line 5
    iput v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 6
    iget v0, p1, Lcom/watabou/noosa/ui/Component;->height:F

    .line 7
    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 8
    new-instance v0, Lcom/watabou/noosa/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v6, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/watabou/noosa/Camera;-><init>(IIIIF)V

    iput-object v0, p1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 9
    invoke-static {v0}, Lcom/watabou/noosa/Camera;->add(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->controller:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, -0x847f8d

    invoke-direct {v0, v1, v1, v2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->thumb:Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    iput v1, v0, Lcom/watabou/noosa/Visual;->am:F

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    invoke-static {v0}, Lcom/watabou/noosa/Camera;->remove(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    return-void
.end method

.method public layout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->controller:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->width:F

    .line 5
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->height:F

    .line 6
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v0

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Camera;->cameraToScreen(FF)Lcom/watabou/utils/Point;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    iget-object v1, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 8
    iget v2, v0, Lcom/watabou/utils/Point;->x:I

    iput v2, v1, Lcom/watabou/noosa/Camera;->x:I

    .line 9
    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    iput v0, v1, Lcom/watabou/noosa/Camera;->y:I

    .line 10
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    float-to-int v0, v0

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/watabou/noosa/Camera;->resize(II)V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->thumb:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 12
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->height:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->thumb:Lcom/watabou/noosa/ColorBlock;

    iget-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    mul-float v3, v3, v3

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 16
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->height:F

    div-float/2addr v3, v4

    .line 17
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 18
    iput v3, v1, Lcom/watabou/utils/PointF;->y:F

    .line 19
    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->thumb:Lcom/watabou/noosa/ColorBlock;

    .line 20
    iget-object v3, v2, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v3, v3, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v1, v3

    .line 21
    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 22
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v0, v2, Lcom/watabou/noosa/Visual;->y:F

    :cond_1
    return-void
.end method

.method public onClick(FF)V
    .locals 0

    return-void
.end method

.method public scrollTo(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget-object v0, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    .line 2
    iput p1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 3
    iput p2, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method
