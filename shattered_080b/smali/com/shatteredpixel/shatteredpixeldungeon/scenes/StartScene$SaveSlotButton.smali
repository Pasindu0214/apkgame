.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;
.super Lcom/watabou/noosa/ui/Button;
.source "StartScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveSlotButton"
.end annotation


# instance fields
.field public bg:Lcom/watabou/noosa/NinePatch;

.field public classIcon:Lcom/watabou/noosa/Image;

.field public depth:Lcom/watabou/noosa/BitmapText;

.field public hero:Lcom/watabou/noosa/Image;

.field public level:Lcom/watabou/noosa/BitmapText;

.field public name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public newGame:Z

.field public slot:I

.field public steps:Lcom/watabou/noosa/Image;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->GEM:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v0}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->bg:Lcom/watabou/noosa/NinePatch;

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/16 v0, 0x9

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->bg:Lcom/watabou/noosa/NinePatch;

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
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->hero:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 6
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v3, 0x41000000    # 8.0f

    add-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 7
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iput v3, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->hero:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->hero:Lcom/watabou/noosa/Image;

    iget v3, v2, Lcom/watabou/noosa/Visual;->x:F

    .line 10
    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    add-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 11
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 12
    invoke-virtual {v0, v2, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->classIcon:Lcom/watabou/noosa/Image;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    sub-float v3, v4, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iput v3, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->classIcon:Lcom/watabou/noosa/Image;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iput v3, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->classIcon:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->classIcon:Lcom/watabou/noosa/Image;

    iget v3, v2, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->classIcon:Lcom/watabou/noosa/Image;

    iget v3, v2, Lcom/watabou/noosa/Visual;->y:F

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->height()F

    move-result v2

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->height()F

    move-result v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->steps:Lcom/watabou/noosa/Image;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v2, v5

    const/high16 v5, 0x42200000    # 40.0f

    sub-float/2addr v2, v5

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    iput v4, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 21
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->steps:Lcom/watabou/noosa/Image;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    iput v4, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->steps:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 23
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->steps:Lcom/watabou/noosa/Image;

    iget v4, v2, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 24
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->steps:Lcom/watabou/noosa/Image;

    iget v4, v2, Lcom/watabou/noosa/Visual;->y:F

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->height()F

    move-result v2

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->height()F

    move-result v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 25
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 27
    iget v4, v0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-static {v3, v4, v1, v2}, La/a/a/a/a;->a(FFFF)F

    move-result v2

    .line 28
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 29
    iget v5, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 30
    invoke-virtual {v0, v2, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 31
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->newGame:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->slot:I

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 5
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->slot:I

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_0
    return-void
.end method

.method public set(I)V
    .locals 9

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->slot:I

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->check(I)Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->newGame:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "new"

    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->hero:Lcom/watabou/noosa/Image;

    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->hero:Lcom/watabou/noosa/Image;

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->steps:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->steps:Lcom/watabou/noosa/Image;

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->classIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 13
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->classIcon:Lcom/watabou/noosa/Image;

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    goto/16 :goto_3

    .line 16
    :cond_1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-eq v0, v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->title()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->hero:Lcom/watabou/noosa/Image;

    if-nez v0, :cond_3

    .line 20
    new-instance v0, Lcom/watabou/noosa/Image;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->spritesheet()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->armorTier:I

    mul-int/lit8 v4, v1, 0xf

    const/16 v5, 0xc

    const/16 v6, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->hero:Lcom/watabou/noosa/Image;

    .line 21
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    new-instance v0, Lcom/watabou/noosa/Image;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v1

    .line 23
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 24
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 25
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->steps:Lcom/watabou/noosa/Image;

    .line 26
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 27
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    const-string v2, ""

    .line 28
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 29
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    .line 30
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 31
    new-instance v0, Lcom/watabou/noosa/Image;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;)Lcom/watabou/noosa/Image;

    move-result-object v1

    .line 32
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 33
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 34
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->classIcon:Lcom/watabou/noosa/Image;

    .line 35
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 36
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    .line 37
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 38
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    .line 39
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_2

    .line 40
    :cond_3
    new-instance v1, Lcom/watabou/noosa/Image;

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->spritesheet()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->armorTier:I

    mul-int/lit8 v6, v2, 0xf

    const/16 v7, 0xc

    const/16 v8, 0xf

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 41
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->classIcon:Lcom/watabou/noosa/Image;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;)Lcom/watabou/noosa/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 42
    :goto_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->depth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 44
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 46
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->challenges:I

    if-lez p1, :cond_4

    .line 47
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v0, 0xffff44

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 48
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 49
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    goto :goto_3

    .line 50
    :cond_4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->resetColor()V

    .line 51
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 52
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 53
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene$SaveSlotButton;->layout()V

    return-void
.end method
