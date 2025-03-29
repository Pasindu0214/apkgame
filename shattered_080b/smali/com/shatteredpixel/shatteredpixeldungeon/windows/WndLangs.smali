.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndLangs.java"


# instance fields
.field public BTN_HEIGHT:I

.field public BTN_WIDTH:I

.field public MIN_HEIGHT:I

.field public WIDTH_L:I

.field public WIDTH_P:I


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    const/16 v1, 0x78

    .line 2
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->WIDTH_P:I

    const/16 v1, 0xab

    .line 3
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->WIDTH_L:I

    const/16 v1, 0x6e

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->MIN_HEIGHT:I

    const/16 v1, 0x32

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->BTN_WIDTH:I

    const/16 v1, 0xc

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->BTN_HEIGHT:I

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->matchCode(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 12
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const v7, 0xffff44

    const/4 v8, 0x1

    if-ge v4, v6, :cond_5

    .line 14
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 15
    iget-object v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->name:Ljava/lang/String;

    .line 16
    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p0, v9, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 17
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v2, v9, :cond_0

    .line 18
    iget-object v9, v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 20
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->status:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    .line 21
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_2

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const v7, 0xbbbbbb

    .line 22
    iget-object v9, v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    goto :goto_1

    :cond_2
    const v7, 0x888888

    .line 23
    iget-object v9, v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 24
    :goto_1
    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->BTN_WIDTH:I

    int-to-float v7, v7

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->BTN_HEIGHT:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v9}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 25
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v7

    if-eqz v7, :cond_3

    rem-int/lit8 v7, v4, 0x2

    if-ne v7, v8, :cond_3

    .line 26
    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->BTN_WIDTH:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->BTN_HEIGHT:I

    add-int/2addr v9, v8

    sub-int v8, v5, v9

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    int-to-float v8, v5

    .line 27
    invoke-virtual {v6, v7, v8}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 28
    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->BTN_HEIGHT:I

    add-int/2addr v5, v7

    .line 29
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 30
    :cond_4
    :goto_2
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    :cond_5
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->MIN_HEIGHT:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 32
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->WIDTH_L:I

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->WIDTH_P:I

    :goto_3
    invoke-virtual {p0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    .line 33
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    add-int/lit8 v5, v4, -0x41

    sub-int/2addr v4, v5

    .line 34
    new-instance v6, Lcom/watabou/noosa/ColorBlock;

    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v10, v1

    const/high16 v11, -0x1000000

    invoke-direct {v6, v9, v10, v11}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    int-to-float v9, v5

    const/high16 v10, 0x40200000    # 2.5f

    sub-float v10, v9, v10

    .line 35
    iput v10, v6, Lcom/watabou/noosa/Visual;->x:F

    .line 36
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 37
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->name:Ljava/lang/String;

    .line 38
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x9

    invoke-static {v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v6

    int-to-float v4, v4

    .line 39
    iget v10, v6, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float v10, v4, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    .line 40
    invoke-virtual {v6, v10, v11}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 41
    invoke-virtual {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 42
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 43
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 44
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ENGLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v12, 0x6

    if-ne v2, v7, :cond_7

    .line 45
    invoke-static {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    .line 46
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    sub-int/2addr v1, v5

    .line 47
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    .line 48
    iput-boolean v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->multiline:Z

    const-string v1, "This is the source language, written by the developer."

    .line 49
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v6}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    add-float/2addr v1, v10

    invoke-virtual {v0, v9, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 51
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto/16 :goto_5

    .line 52
    :cond_7
    invoke-static {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v7

    .line 53
    iget-object v13, v2, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->status:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    .line 54
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-eqz v13, :cond_a

    if-eq v13, v8, :cond_9

    const/4 v8, 0x2

    if-eq v13, v8, :cond_8

    goto :goto_4

    :cond_8
    new-array v8, v3, [Ljava/lang/Object;

    const-string v13, "completed"

    .line 55
    invoke-static {v0, v13, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 56
    iget v13, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    sub-int/2addr v13, v5

    invoke-virtual {v7, v8, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;I)V

    goto :goto_4

    :cond_9
    new-array v8, v3, [Ljava/lang/Object;

    const-string v13, "unreviewed"

    .line 57
    invoke-static {v0, v13, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 58
    iget v13, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    sub-int/2addr v13, v5

    invoke-virtual {v7, v8, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;I)V

    goto :goto_4

    :cond_a
    new-array v8, v3, [Ljava/lang/Object;

    const-string v13, "unfinished"

    .line 59
    invoke-static {v0, v13, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 60
    iget v13, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    sub-int/2addr v13, v5

    invoke-virtual {v7, v8, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;I)V

    .line 61
    :goto_4
    invoke-virtual {v6}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v6

    add-float/2addr v6, v10

    invoke-virtual {v7, v9, v6}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 62
    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 63
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$2;

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "credits"

    .line 64
    invoke-static {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;)V

    .line 66
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->reqWidth()F

    move-result v2

    add-float/2addr v2, v11

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v2, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 67
    iget v2, v6, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-static {v4, v2, v11, v9}, La/a/a/a/a;->a(FFFF)F

    move-result v2

    add-int/lit8 v1, v1, -0x12

    int-to-float v1, v1

    .line 68
    invoke-virtual {v6, v2, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 69
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 70
    invoke-static {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "transifex"

    .line 71
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    sub-int/2addr v2, v5

    invoke-virtual {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;I)V

    .line 73
    iget v0, v6, Lcom/watabou/noosa/ui/Component;->y:F

    sub-float/2addr v0, v11

    .line 74
    iget v2, v1, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v0, v2

    .line 75
    invoke-virtual {v1, v9, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 76
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_5
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$3;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->seamlessResetScene(Lcom/watabou/noosa/Game$SceneChangeCallback;)V

    return-void
.end method
