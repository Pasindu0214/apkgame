.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "AmuletScene.java"


# static fields
.field public static noText:Z = false


# instance fields
.field public amulet:Lcom/watabou/noosa/Image;

.field public timer:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->timer:F

    return-void
.end method


# virtual methods
.method public create()V
    .locals 11

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->noText:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "text"

    .line 3
    invoke-static {v0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    const/16 v4, 0x78

    .line 5
    invoke-virtual {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    new-instance v4, Lcom/watabou/noosa/Image;

    .line 8
    invoke-direct {v4}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v5, "amulet.png"

    .line 9
    invoke-virtual {v4, v5}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 10
    iput-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->amulet:Lcom/watabou/noosa/Image;

    .line 11
    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene$1;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "exit"

    .line 13
    invoke-static {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-direct {v4, p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;Ljava/lang/String;)V

    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v6, 0x42f00000    # 120.0f

    .line 15
    invoke-virtual {v4, v6, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 16
    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 17
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene$2;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "stay"

    .line 18
    invoke-static {v0, v8, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v7, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v7, v6, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->noText:Z

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->amulet:Lcom/watabou/noosa/Image;

    iget v1, v0, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v1, v3

    .line 24
    iget v6, v4, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v1, v6

    add-float/2addr v1, v5

    iget v6, v7, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v1, v6

    .line 25
    sget-object v6, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v8, v6, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v8, v8

    iget v9, v0, Lcom/watabou/noosa/Visual;->width:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v5

    iput v8, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 26
    iget v6, v6, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    div-float/2addr v6, v5

    iput v6, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 27
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 28
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v0, v0

    .line 29
    iget v1, v4, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    .line 30
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->amulet:Lcom/watabou/noosa/Image;

    iget v6, v1, Lcom/watabou/noosa/Visual;->y:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v4, v0, v6}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 31
    iget v0, v4, Lcom/watabou/noosa/ui/Component;->x:F

    .line 32
    invoke-virtual {v4}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    add-float/2addr v1, v5

    invoke-virtual {v7, v0, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->amulet:Lcom/watabou/noosa/Image;

    iget v6, v0, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v6, v3

    .line 34
    iget v8, v1, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v6, v8

    add-float/2addr v6, v3

    iget v8, v4, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v6, v8

    add-float/2addr v6, v5

    iget v8, v7, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v6, v8

    .line 35
    sget-object v8, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v9, v8, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v9, v9

    iget v10, v0, Lcom/watabou/noosa/Visual;->width:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v5

    iput v9, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 36
    iget v8, v8, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v8, v8

    sub-float/2addr v8, v6

    div-float/2addr v8, v5

    iput v8, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 37
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 38
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v0, v0

    .line 39
    iget v6, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v0, v6

    div-float/2addr v0, v5

    .line 40
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->amulet:Lcom/watabou/noosa/Image;

    iget v8, v6, Lcom/watabou/noosa/Visual;->y:F

    iget v6, v6, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v8, v6

    add-float/2addr v8, v3

    invoke-virtual {v1, v0, v8}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 41
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 42
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v0, v0

    .line 43
    iget v6, v4, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v0, v6

    div-float/2addr v0, v5

    .line 44
    iget v6, v1, Lcom/watabou/noosa/ui/Component;->y:F

    .line 45
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v6, v1

    add-float/2addr v6, v3

    .line 46
    invoke-virtual {v4, v0, v6}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 47
    iget v0, v4, Lcom/watabou/noosa/ui/Component;->x:F

    .line 48
    invoke-virtual {v4}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    add-float/2addr v1, v5

    invoke-virtual {v7, v0, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 49
    :goto_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v1, 0xffddbb

    const/4 v2, 0x1

    .line 50
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 51
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 52
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->amulet:Lcom/watabou/noosa/Image;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 53
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->CONTINUE:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Scene;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->timer:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->timer:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 3
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->timer:F

    .line 4
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->amulet:Lcom/watabou/noosa/Image;

    iget v3, v2, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v4, 0x41280000    # 10.5f

    add-float/2addr v3, v4

    iget v2, v2, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v4, 0x40b00000    # 5.5f

    add-float/2addr v2, v4

    const/16 v4, 0x65

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->reset(IFFI)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method
