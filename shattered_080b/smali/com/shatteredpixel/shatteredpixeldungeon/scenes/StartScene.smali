.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "StartScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 13

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->loadGlobal()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->loadGlobal()V

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 5
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v2, v0, Lcom/watabou/noosa/Camera;->width:I

    .line 6
    iget v0, v0, Lcom/watabou/noosa/Camera;->height:I

    .line 7
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;-><init>()V

    int-to-float v4, v2

    int-to-float v5, v0

    .line 8
    invoke-virtual {v3, v4, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 9
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;-><init>()V

    .line 11
    iget v5, v3, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float v5, v4, v5

    const/4 v6, 0x0

    .line 12
    invoke-virtual {v3, v5, v6}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 13
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array v3, v1, [Ljava/lang/Object;

    .line 14
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene;

    const-string v6, "title"

    invoke-static {v5, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x9

    .line 15
    invoke-static {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v3

    const v5, 0xffff44

    .line 16
    invoke-virtual {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 17
    iget v5, v3, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 18
    iget v6, v3, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float/2addr v7, v6

    div-float/2addr v7, v5

    .line 19
    invoke-virtual {v3, v4, v7}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 20
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 21
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->checkAll()Ljava/util/ArrayList;

    move-result-object v3

    .line 23
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    .line 24
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit8 v8, v6, 0x1e

    add-int/lit8 v6, v6, -0x1

    mul-int v6, v6, v4

    add-int/2addr v6, v8

    sub-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 25
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v6

    if-eqz v6, :cond_1

    const/high16 v6, 0x41000000    # 8.0f

    add-float/2addr v0, v6

    .line 26
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/high16 v9, 0x41f00000    # 30.0f

    const/high16 v10, 0x42f00000    # 120.0f

    const/4 v11, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    .line 27
    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;

    invoke-direct {v12, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$1;)V

    .line 28
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->slot:I

    invoke-virtual {v12, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->set(I)V

    add-int/lit8 v8, v2, -0x78

    int-to-float v8, v8

    div-float/2addr v8, v5

    .line 29
    invoke-virtual {v12, v8, v0, v10, v9}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    add-int/lit8 v8, v4, 0x1e

    int-to-float v8, v8

    add-float/2addr v0, v8

    .line 30
    invoke-static {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 31
    invoke-virtual {p0, v12}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v7, :cond_3

    .line 33
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;

    invoke-direct {v3, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$1;)V

    .line 34
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->firstEmpty()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->set(I)V

    add-int/lit8 v2, v2, -0x78

    int-to-float v2, v2

    div-float/2addr v2, v5

    .line 35
    invoke-virtual {v3, v2, v0, v10, v9}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 36
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 37
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 38
    :cond_3
    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    .line 39
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->switchNoFade(Ljava/lang/Class;)V

    return-void
.end method
