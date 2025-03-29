.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;
.super Lcom/watabou/noosa/ui/Component;
.source "OptionSlider.java"


# instance fields
.field public BG:Lcom/watabou/noosa/NinePatch;

.field public maxTxt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public maxVal:I

.field public minTxt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public minVal:I

.field public pointerArea:Lcom/watabou/noosa/PointerArea;

.field public selectedVal:I

.field public sliderBG:Lcom/watabou/noosa/ColorBlock;

.field public sliderNode:Lcom/watabou/noosa/NinePatch;

.field public sliderTicks:[Lcom/watabou/noosa/ColorBlock;

.field public tickDist:F

.field public title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/4 v0, 0x0

    if-le p4, p5, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    move p4, p5

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minTxt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->maxTxt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 6
    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minVal:I

    .line 7
    iput p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->maxVal:I

    sub-int/2addr p5, p4

    add-int/lit8 p5, p5, 0x1

    .line 8
    new-array p1, p5, [Lcom/watabou/noosa/ColorBlock;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderTicks:[Lcom/watabou/noosa/ColorBlock;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderTicks:[Lcom/watabou/noosa/ColorBlock;

    array-length p2, p1

    if-ge v0, p2, :cond_1

    .line 10
    new-instance p2, Lcom/watabou/noosa/ColorBlock;

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 p4, 0x41300000    # 11.0f

    const p5, -0xddddde

    invoke-direct {p2, p3, p4, p5}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    aput-object p2, p1, v0

    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 9

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->RED_BUTTON:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v0}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->BG:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->BG:Lcom/watabou/noosa/NinePatch;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    const/16 v0, 0x9

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minTxt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->maxTxt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    new-instance v0, Lcom/watabou/noosa/ColorBlock;

    const v1, -0xddddde

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->RED_BUTTON:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v0}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41100000    # 9.0f

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;FFFF)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->pointerArea:Lcom/watabou/noosa/PointerArea;

    .line 10
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 2
    iget v3, v0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    .line 3
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v2, v4

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 7
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    sub-float/2addr v1, v2

    .line 8
    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 9
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 10
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    .line 12
    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    .line 13
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->maxVal:I

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minVal:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->tickDist:F

    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderTicks:[Lcom/watabou/noosa/ColorBlock;

    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 15
    aget-object v5, v1, v0

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    iget v6, v6, Lcom/watabou/noosa/Visual;->y:F

    sub-float/2addr v6, v2

    iput v6, v5, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    aget-object v1, v1, v0

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->x:F

    add-float/2addr v5, v4

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->tickDist:F

    int-to-float v7, v0

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    float-to-int v5, v6

    int-to-float v5, v5

    iput v5, v1, Lcom/watabou/noosa/Visual;->x:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minTxt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    iget v2, v2, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v2, v4

    .line 18
    iget v5, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v2, v5

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->maxTxt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 21
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    .line 22
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    iget v2, v2, Lcom/watabou/noosa/Visual;->y:F

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minTxt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 23
    iget v3, v3, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v2, v3

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 25
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->tickDist:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->selectedVal:I

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minVal:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 26
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    iget v2, v2, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 27
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->pointerArea:Lcom/watabou/noosa/PointerArea;

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 28
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 29
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 30
    iput v1, v0, Lcom/watabou/noosa/Visual;->width:F

    .line 31
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 32
    iput v2, v0, Lcom/watabou/noosa/Visual;->height:F

    .line 33
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->BG:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    .line 34
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->BG:Lcom/watabou/noosa/NinePatch;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 35
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public abstract onChange()V
.end method

.method public setSelectedValue(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->selectedVal:I

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderNode:Lcom/watabou/noosa/NinePatch;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->tickDist:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->minVal:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    int-to-float p1, p1

    iput p1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->sliderBG:Lcom/watabou/noosa/ColorBlock;

    iget p1, p1, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v1, 0x40800000    # 4.0f

    sub-float/2addr p1, v1

    iput p1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method
