.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;
.super Lcom/watabou/noosa/PointerArea;
.source "OptionSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public pressed:Z

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/watabou/noosa/PointerArea;-><init>(FFFF)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->pressed:Z

    return-void
.end method


# virtual methods
.method public onDrag(Lcom/watabou/input/PointerEvent;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->pressed:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v0

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/watabou/noosa/Camera;->screenToCamera(II)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;

    .line 4
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    .line 6
    iget v2, v0, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    sub-float v4, v2, v3

    iget p1, p1, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    add-float/2addr v2, v0

    sub-float/2addr v2, v3

    .line 8
    invoke-static {v4, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result p1

    iput p1, v1, Lcom/watabou/noosa/Visual;->x:F

    :cond_0
    return-void
.end method

.method public onPointerDown(Lcom/watabou/input/PointerEvent;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->pressed:Z

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v0

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/watabou/noosa/Camera;->screenToCamera(II)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;

    .line 4
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    .line 6
    iget v2, v0, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    sub-float v4, v2, v3

    iget p1, p1, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    add-float/2addr v2, v0

    sub-float/2addr v2, v3

    .line 8
    invoke-static {v4, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result p1

    iput p1, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;

    .line 10
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 11
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method

.method public onPointerUp(Lcom/watabou/input/PointerEvent;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->pressed:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v0

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/watabou/noosa/Camera;->screenToCamera(II)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;

    .line 4
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    .line 6
    iget v2, v0, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    sub-float v4, v2, v3

    iget p1, p1, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    add-float/2addr v2, v0

    sub-float/2addr v2, v3

    .line 8
    invoke-static {v4, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result p1

    iput p1, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;

    .line 10
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    .line 11
    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;

    .line 13
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minVal:I

    .line 14
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    .line 15
    iget v1, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 16
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->tickDist:F

    div-float/2addr v1, v2

    .line 17
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->selectedVal:I

    .line 19
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;

    .line 20
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    .line 21
    iget v1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 22
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->tickDist:F

    .line 23
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->selectedVal:I

    .line 24
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minVal:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    .line 25
    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 26
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->onChange()V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;->pressed:Z

    :cond_0
    return-void
.end method
