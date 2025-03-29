.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndTitledMessage.java"


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;-><init>(Lcom/watabou/noosa/ui/Component;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/watabou/noosa/ui/Component;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 3
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    goto :goto_0

    :cond_0
    const/16 v0, 0x78

    :goto_0
    int-to-float v1, v0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v2, v2, v1, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 5
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v1, 0x6

    .line 6
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    .line 7
    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->multiline:Z

    .line 9
    invoke-virtual {v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 10
    iget p2, p1, Lcom/watabou/noosa/ui/Component;->x:F

    .line 11
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr p1, v2

    invoke-virtual {v1, p2, p1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 12
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 13
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
