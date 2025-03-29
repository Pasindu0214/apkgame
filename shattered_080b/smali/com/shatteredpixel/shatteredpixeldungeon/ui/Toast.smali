.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;
.super Lcom/watabou/noosa/ui/Component;
.source "Toast.java"


# instance fields
.field public bg:Lcom/watabou/noosa/NinePatch;

.field public close:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

.field public text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 4
    iget p1, p1, Lcom/watabou/noosa/ui/Component;->width:F

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->close:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    .line 6
    iget v0, v0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr p1, v0

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->bg:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {v0}, Lcom/watabou/noosa/NinePatch;->marginHor()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 9
    iget p1, p1, Lcom/watabou/noosa/ui/Component;->height:F

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->close:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    .line 11
    iget v0, v0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->bg:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {v0}, Lcom/watabou/noosa/NinePatch;->marginVer()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->TOAST_TR:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v0}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->bg:Lcom/watabou/noosa/NinePatch;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast$1;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->CLOSE:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;Lcom/watabou/noosa/Image;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->close:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/16 v0, 0x8

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->bg:Lcom/watabou/noosa/NinePatch;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->close:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->bg:Lcom/watabou/noosa/NinePatch;

    iget v2, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 5
    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->width()F

    move-result v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->bg:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {v2}, Lcom/watabou/noosa/NinePatch;->marginHor()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->close:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    .line 6
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v4

    .line 7
    iget v4, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 8
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    .line 9
    invoke-virtual {v0, v1, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->close:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->close:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    .line 12
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->x:F

    sub-float/2addr v1, v3

    .line 13
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v2

    .line 14
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 15
    iget v5, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    .line 16
    invoke-virtual {v0, v1, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method

.method public onClose()V
    .locals 0

    const p0, 0x0

    throw p0
.end method
