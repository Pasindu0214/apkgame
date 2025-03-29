.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "AboutScene.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 17

    move-object/from16 v6, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->width:I

    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    div-int/2addr v0, v1

    int-to-float v7, v0

    .line 3
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->height:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1e

    goto :goto_1

    :cond_1
    const/16 v1, 0x5a

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v8, v0

    .line 4
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 5
    :goto_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz v0, :cond_5

    .line 6
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    sub-float v3, v7, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v3, v10

    iput v3, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 8
    iput v8, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 9
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 10
    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/high16 v11, 0x42800000    # 64.0f

    const/4 v12, 0x7

    invoke-direct {v3, v12, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v4, 0x225511

    .line 12
    iput-boolean v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 13
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 14
    invoke-virtual {v3, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, v3, Lcom/watabou/noosa/Visual;->angularSpeed:F

    const/16 v1, 0x8

    const-string v2, "Shattered Pixel Dungeon"

    .line 15
    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v2

    const v3, 0x33bb33

    .line 16
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 17
    invoke-virtual {v6, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float v4, v7, v4

    div-float/2addr v4, v10

    .line 19
    iget v5, v0, Lcom/watabou/noosa/Visual;->y:F

    iget v0, v0, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v5, v0

    const/high16 v0, 0x40a00000    # 5.0f

    add-float/2addr v5, v0

    .line 20
    invoke-virtual {v2, v4, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    const-string v0, "Design, Code, & Graphics: Evan"

    .line 22
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    const/high16 v4, 0x42f00000    # 120.0f

    .line 23
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 24
    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    iget v4, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float v4, v7, v4

    div-float/2addr v4, v10

    .line 26
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    const/high16 v13, 0x41400000    # 12.0f

    add-float/2addr v2, v13

    invoke-virtual {v0, v4, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 27
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    const-string v2, "ShatteredPixel.com"

    .line 28
    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v14

    .line 29
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    .line 30
    invoke-virtual {v14, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 31
    invoke-virtual {v14, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 32
    invoke-virtual {v6, v14}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 33
    iget v1, v14, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float v1, v7, v1

    div-float/2addr v1, v10

    .line 34
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v15, 0x40c00000    # 6.0f

    add-float/2addr v0, v15

    invoke-virtual {v14, v1, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 35
    invoke-static {v14}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 36
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene$1;

    .line 37
    iget v2, v14, Lcom/watabou/noosa/ui/Component;->x:F

    .line 38
    iget v3, v14, Lcom/watabou/noosa/ui/Component;->y:F

    .line 39
    iget v4, v14, Lcom/watabou/noosa/ui/Component;->width:F

    .line 40
    iget v1, v14, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v15, 0x41a00000    # 20.0f

    move-object v0, v5

    move/from16 v16, v1

    move-object/from16 v1, p0

    move-object v13, v5

    move/from16 v5, v16

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene;FFFF)V

    .line 42
    invoke-virtual {v6, v13}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 43
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->WATA:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz v0, :cond_4

    .line 44
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v1

    sub-float v1, v7, v1

    div-float/2addr v1, v10

    add-float/2addr v1, v9

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 46
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 47
    :cond_3
    iget v1, v14, Lcom/watabou/noosa/ui/Component;->y:F

    .line 48
    iget v2, v0, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v1, v2

    add-float v8, v1, v15

    :goto_3
    iput v8, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 49
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 50
    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 51
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    invoke-direct {v1, v12, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v2, 0x112233

    const/4 v3, 0x1

    .line 52
    iput-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 53
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    iput v15, v1, Lcom/watabou/noosa/Visual;->angularSpeed:F

    const-string v1, "Pixel Dungeon"

    const/16 v2, 0x8

    .line 55
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    const v3, 0xffff44

    .line 56
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 57
    invoke-virtual {v6, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 58
    iget v4, v1, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-static {v7, v4, v10, v9}, La/a/a/a/a;->a(FFFF)F

    move-result v4

    .line 59
    iget v5, v0, Lcom/watabou/noosa/Visual;->y:F

    iget v0, v0, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v5, v0

    const/high16 v0, 0x41300000    # 11.0f

    add-float/2addr v5, v0

    .line 60
    invoke-virtual {v1, v4, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 61
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    const-string v0, "Code & Graphics: Watabou\nMusic: Cube_Code"

    .line 62
    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    const/high16 v4, 0x42f00000    # 120.0f

    .line 63
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    const/4 v5, 0x0

    .line 64
    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->setHightlighting(Z)V

    .line 65
    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 66
    iget v5, v0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-static {v7, v5, v10, v9}, La/a/a/a/a;->a(FFFF)F

    move-result v5

    .line 67
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v8, 0x41400000    # 12.0f

    add-float/2addr v1, v8

    invoke-virtual {v0, v5, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 68
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    const-string v1, "pixeldungeon.watabou.ru"

    .line 69
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    .line 70
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 71
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 72
    invoke-virtual {v6, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 73
    iget v2, v1, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-static {v7, v2, v10, v9}, La/a/a/a/a;->a(FFFF)F

    move-result v2

    .line 74
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v3, 0x40c00000    # 6.0f

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 75
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 76
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene$2;

    .line 77
    iget v2, v1, Lcom/watabou/noosa/ui/Component;->x:F

    .line 78
    iget v3, v1, Lcom/watabou/noosa/ui/Component;->y:F

    .line 79
    iget v4, v1, Lcom/watabou/noosa/ui/Component;->width:F

    .line 80
    iget v5, v1, Lcom/watabou/noosa/ui/Component;->height:F

    move-object v0, v7

    move-object/from16 v1, p0

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene;FFFF)V

    .line 82
    invoke-virtual {v6, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 83
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;-><init>()V

    .line 84
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v2, v1, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v2, v2

    iget v1, v1, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 85
    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 86
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;-><init>()V

    .line 87
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v1, v1, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v1, v1

    .line 88
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 90
    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 92
    throw v0

    :cond_5
    const/4 v0, 0x0

    .line 93
    throw v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->switchNoFade(Ljava/lang/Class;)V

    return-void
.end method
