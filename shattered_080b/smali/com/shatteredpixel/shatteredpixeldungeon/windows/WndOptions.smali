.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndOptions.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    goto :goto_0

    :cond_0
    const/16 v0, 0x78

    :goto_0
    const/16 v1, 0x9

    .line 3
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    const v1, 0xffff44

    .line 4
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    invoke-virtual {p1, v1, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    add-int/lit8 v2, v0, -0x4

    .line 6
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v3, 0x6

    .line 8
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v3

    .line 9
    iput v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    const/4 v4, 0x1

    .line 10
    iput-boolean v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->multiline:Z

    .line 11
    invoke-virtual {v3, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    const/high16 p2, 0x40c00000    # 6.0f

    add-float/2addr p1, p2

    invoke-virtual {v3, v1, p1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 13
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    add-float/2addr p1, p2

    const/4 p2, 0x0

    .line 15
    :goto_1
    array-length v3, p3

    if-ge p2, v3, :cond_1

    .line 16
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions$1;

    aget-object v4, p3, p2

    invoke-direct {v3, p0, v4, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;Ljava/lang/String;I)V

    int-to-float v4, v2

    const/high16 v5, 0x41a00000    # 20.0f

    .line 17
    invoke-virtual {v3, v1, p1, v4, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 18
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v3, 0x41b00000    # 22.0f

    add-float/2addr p1, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    float-to-int p1, p1

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 0

    const p0, 0x0

    throw p0
.end method
