.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;
.super Lcom/watabou/noosa/ui/Button;
.source "StyledButton.java"


# instance fields
.field public bg:Lcom/watabou/noosa/NinePatch;

.field public icon:Lcom/watabou/noosa/Image;

.field public text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 2
    invoke-static {p1}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->bg:Lcom/watabou/noosa/NinePatch;

    .line 3
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 5
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->alpha(F)V

    return-void
.end method

.method public icon(Lcom/watabou/noosa/Image;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->layout()V

    :cond_1
    return-void
.end method

.method public layout()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->bg:Lcom/watabou/noosa/NinePatch;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    add-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text:Ljava/lang/String;

    const-string v4, ""

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 10
    iget v4, v0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float v5, v4, v1

    add-float/2addr v2, v5

    .line 11
    iget v5, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 12
    iget v6, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v6, v2

    div-float/2addr v6, v1

    add-float/2addr v6, v5

    sub-float/2addr v6, v4

    sub-float/2addr v6, v3

    .line 13
    iget v4, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 14
    iget v5, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v7, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v5, v7

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    .line 15
    invoke-virtual {v0, v6, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    if-eqz v0, :cond_2

    .line 18
    iget v4, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 19
    iget v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    add-float/2addr v5, v3

    .line 20
    iput v5, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 21
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 22
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 23
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iput v3, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 24
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    :cond_2
    return-void
.end method

.method public onPointerDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->bg:Lcom/watabou/noosa/NinePatch;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_click.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onPointerUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->bg:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    return-void
.end method

.method public reqHeight()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v0

    add-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text:Ljava/lang/String;

    const-string v3, ""

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 7
    iget v0, v0, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v0, v1

    .line 8
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_1
    return v2
.end method

.method public reqWidth()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    add-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text:Ljava/lang/String;

    const-string v3, ""

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 7
    iget v0, v0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v0, v1

    add-float/2addr v2, v0

    :cond_1
    return v2
.end method
