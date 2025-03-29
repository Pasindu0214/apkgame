.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;
.super Lcom/watabou/noosa/ui/Component;
.source "IconTitle.java"


# instance fields
.field public health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

.field public healthLvl:F

.field public imIcon:Lcom/watabou/noosa/Image;

.field public tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->healthLvl:F

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 12
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->healthLvl:F

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 16
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->healthLvl:F

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-void
.end method

.method public constructor <init>(Lcom/watabou/noosa/Image;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 20
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->healthLvl:F

    .line 21
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 23
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/noosa/Image;

    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/16 v0, 0x9

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v1, 0xffff44

    .line 4
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->setHightlighting(Z)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    .line 8
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public icon(Lcom/watabou/noosa/Image;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->healthLvl:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x41000000    # 8.0f

    sub-float v2, v4, v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v4, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->height()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 7
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->width:F

    int-to-float v0, v0

    add-float v6, v0, v3

    sub-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->x:F

    add-float/2addr v4, v0

    add-float/2addr v4, v3

    int-to-float v0, v1

    .line 9
    iget v1, v2, Lcom/watabou/noosa/ui/Component;->height:F

    cmpl-float v6, v0, v1

    if-lez v6, :cond_0

    .line 10
    iget v6, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-static {v0, v1, v3, v6}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 11
    :goto_0
    invoke-virtual {v2, v4, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 12
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    iget-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 15
    iget v3, v2, Lcom/watabou/noosa/ui/Component;->x:F

    .line 16
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 17
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    int-to-float v4, v4

    .line 18
    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 19
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    goto :goto_1

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 21
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->height:F

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    :goto_1
    return-void
.end method
