.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBadge;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndBadge.java"


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->image(I)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    .line 4
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->desc()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    const/16 v3, 0x70

    .line 8
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 9
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    .line 12
    iget v4, v1, Lcom/watabou/noosa/ui/Component;->width:F

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    add-float/2addr v3, v4

    .line 14
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v4

    sub-float v4, v3, v4

    div-float/2addr v4, v2

    iput v4, v0, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v4, 0x40800000    # 4.0f

    .line 15
    iput v4, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 17
    iget v5, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float v5, v3, v5

    div-float/2addr v5, v2

    .line 18
    iget v2, v0, Lcom/watabou/noosa/Visual;->y:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v6, v4

    invoke-virtual {v1, v5, v6}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    float-to-int v2, v3

    .line 19
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    .line 20
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->highlight(Lcom/watabou/noosa/Image;I)V

    return-void
.end method
