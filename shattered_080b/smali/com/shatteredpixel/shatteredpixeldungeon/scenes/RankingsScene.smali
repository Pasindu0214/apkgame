.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "RankingsScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;
    }
.end annotation


# instance fields
.field public archs:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;


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

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene;

    invoke-super/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    sget-object v2, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    const/4 v3, 0x1

    const-string v4, "theme.ogg"

    invoke-virtual {v2, v4, v3}, Lcom/watabou/noosa/audio/Music;->play(Ljava/lang/String;Z)V

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 4
    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v5, v2, Lcom/watabou/noosa/Camera;->width:I

    .line 5
    iget v2, v2, Lcom/watabou/noosa/Camera;->height:I

    .line 6
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;-><init>()V

    iput-object v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene;->archs:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;

    int-to-float v5, v5

    int-to-float v2, v2

    .line 7
    invoke-virtual {v6, v5, v2}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    iget-object v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene;->archs:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;

    invoke-virtual {v0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->load()V

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "title"

    .line 10
    invoke-static {v1, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    .line 11
    invoke-static {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v6

    const v7, 0xffff44

    .line 12
    invoke-virtual {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 13
    iget v7, v6, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float v7, v5, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 14
    iget v9, v6, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v10, 0x41a00000    # 20.0f

    sub-float v9, v10, v9

    div-float/2addr v9, v8

    .line 15
    invoke-virtual {v6, v7, v9}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 16
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 17
    invoke-virtual {v0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const v9, 0xcccccc

    const/16 v11, 0x8

    if-lez v6, :cond_4

    const/high16 v6, 0x41400000    # 12.0f

    .line 19
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget v12, v12, Lcom/watabou/noosa/Camera;->height:I

    add-int/lit8 v12, v12, -0x1a

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget-object v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    div-int/2addr v12, v13

    int-to-float v12, v12

    invoke-static {v6, v12, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v6

    const/high16 v10, 0x43200000    # 160.0f

    .line 20
    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float v10, v5, v10

    div-float/2addr v10, v8

    const/high16 v12, 0x40800000    # 4.0f

    add-float/2addr v10, v12

    .line 21
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget-object v12, v12, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v6

    sub-float v12, v2, v12

    div-float/2addr v12, v8

    .line 22
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget-object v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    .line 23
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->lastRecord:I

    if-ne v14, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v7, v14, v4, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;-><init>(IZLcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;)V

    const/high16 v4, 0x41600000    # 14.0f

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_2

    .line 24
    rem-int/lit8 v4, v14, 0x2

    if-ne v4, v3, :cond_1

    const/high16 v4, 0x40a00000    # 5.0f

    goto :goto_2

    :cond_1
    const/high16 v4, -0x3f600000    # -5.0f

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    add-float/2addr v4, v10

    int-to-float v15, v14

    mul-float v15, v15, v6

    add-float/2addr v15, v12

    mul-float v16, v10, v8

    sub-float v8, v5, v16

    .line 25
    invoke-virtual {v7, v4, v15, v8, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 26
    invoke-virtual {v0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_0

    .line 27
    :cond_3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    const/16 v6, 0xb

    if-lt v4, v6, :cond_5

    .line 28
    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v4

    .line 29
    invoke-virtual {v4, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    const v6, 0x33bb33

    .line 30
    invoke-virtual {v4, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->setHightlighting(ZI)V

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "total"

    .line 32
    invoke-static {v1, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " _"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->wonNumber:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 35
    iget v1, v4, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v5, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v5, v1

    .line 36
    iget v1, v4, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v2, v1

    const/high16 v1, 0x41000000    # 8.0f

    sub-float/2addr v2, v1

    .line 37
    invoke-virtual {v4, v5, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 38
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "no_games"

    .line 39
    invoke-static {v1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 42
    iget v3, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v5, v3

    .line 43
    iget v4, v1, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    .line 44
    invoke-virtual {v1, v5, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 45
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 47
    :cond_5
    :goto_3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;-><init>()V

    .line 48
    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v2, v2, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v2, v2

    .line 49
    iget v3, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 51
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->switchNoFade(Ljava/lang/Class;)V

    return-void
.end method
