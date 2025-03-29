.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;
.super Lcom/watabou/noosa/ScrollArea;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PointerController"
.end annotation


# instance fields
.field public dragThreshold:F

.field public dragging:Z

.field public lastPos:Lcom/watabou/utils/PointF;

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/watabou/noosa/ScrollArea;-><init>(FFFF)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->dragging:Z

    .line 4
    new-instance p1, Lcom/watabou/utils/PointF;

    invoke-direct {p1}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->lastPos:Lcom/watabou/utils/PointF;

    .line 5
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    mul-int/lit8 p1, p1, 0x8

    int-to-float p1, p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->dragThreshold:F

    return-void
.end method


# virtual methods
.method public onDrag(Lcom/watabou/input/PointerEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->dragging:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->scroll(Lcom/watabou/utils/PointF;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget-object v1, p1, Lcom/watabou/input/PointerEvent;->start:Lcom/watabou/utils/PointF;

    invoke-static {v0, v1}, Lcom/watabou/utils/PointF;->distance(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)F

    move-result v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->dragThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->dragging:Z

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->lastPos:Lcom/watabou/utils/PointF;

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    invoke-virtual {v0, p1}, Lcom/watabou/utils/PointF;->set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->thumb:Lcom/watabou/noosa/ColorBlock;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    :cond_1
    :goto_0
    return-void
.end method

.method public onPointerUp(Lcom/watabou/input/PointerEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->dragging:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->dragging:Z

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->thumb:Lcom/watabou/noosa/ColorBlock;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/watabou/noosa/Camera;->screenToCamera(II)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->onClick(FF)V

    :goto_0
    return-void
.end method

.method public onScroll(Lcom/watabou/input/ScrollEvent;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->lastPos:Lcom/watabou/utils/PointF;

    invoke-direct {v0, v1}, Lcom/watabou/utils/PointF;-><init>(Lcom/watabou/utils/PointF;)V

    .line 2
    iget v1, v0, Lcom/watabou/utils/PointF;->y:F

    iget p1, p1, Lcom/watabou/input/ScrollEvent;->amount:I

    int-to-float p1, p1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    iget-object v2, v2, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget v2, v2, Lcom/watabou/noosa/Camera;->zoom:F

    mul-float p1, p1, v2

    const/high16 v2, 0x41200000    # 10.0f

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 3
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->scroll(Lcom/watabou/utils/PointF;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->dragging:Z

    return-void
.end method

.method public final scroll(Lcom/watabou/utils/PointF;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->lastPos:Lcom/watabou/utils/PointF;

    invoke-static {v1, p1}, Lcom/watabou/utils/PointF;->diff(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    move-result-object v1

    iget v2, v0, Lcom/watabou/noosa/Camera;->zoom:F

    invoke-virtual {v1, v2}, Lcom/watabou/utils/PointF;->invScale(F)Lcom/watabou/utils/PointF;

    .line 3
    iget-object v2, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    invoke-virtual {v2, v1}, Lcom/watabou/utils/PointF;->offset(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/watabou/noosa/Camera;->panIntensity:F

    .line 5
    iget-object v2, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    iget v4, p0, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v3, v4

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 6
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->width:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    sub-float/2addr v5, v4

    .line 7
    iput v5, v2, Lcom/watabou/utils/PointF;->x:F

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    .line 9
    iput v1, v2, Lcom/watabou/utils/PointF;->x:F

    .line 10
    :cond_1
    iget-object v2, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->y:F

    iget v4, p0, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v3, v4

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 11
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->height:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    sub-float/2addr v5, v4

    .line 12
    iput v5, v2, Lcom/watabou/utils/PointF;->y:F

    .line 13
    :cond_2
    iget-object v2, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->y:F

    cmpg-float v3, v3, v1

    if-gez v3, :cond_3

    .line 14
    iput v1, v2, Lcom/watabou/utils/PointF;->y:F

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->thumb:Lcom/watabou/noosa/ColorBlock;

    iget v3, p0, Lcom/watabou/noosa/Visual;->y:F

    iget v4, p0, Lcom/watabou/noosa/Visual;->height:F

    iget-object v0, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    mul-float v4, v4, v0

    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 16
    iget v0, v0, Lcom/watabou/noosa/ui/Component;->height:F

    div-float/2addr v4, v0

    add-float/2addr v4, v3

    .line 17
    iput v4, v2, Lcom/watabou/noosa/Visual;->y:F

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane$PointerController;->lastPos:Lcom/watabou/utils/PointF;

    invoke-virtual {v0, p1}, Lcom/watabou/utils/PointF;->set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    return-void
.end method
