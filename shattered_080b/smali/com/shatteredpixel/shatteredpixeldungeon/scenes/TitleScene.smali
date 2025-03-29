.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "TitleScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$TitleButton;
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
    .locals 18

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-super/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    sget-object v2, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    const-string v3, "theme.ogg"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/watabou/noosa/audio/Music;->play(Ljava/lang/String;Z)V

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 4
    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v4, v2, Lcom/watabou/noosa/Camera;->width:I

    .line 5
    iget v2, v2, Lcom/watabou/noosa/Camera;->height:I

    .line 6
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;-><init>()V

    int-to-float v4, v4

    int-to-float v6, v2

    .line 7
    invoke-virtual {v5, v4, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->PIXEL_DUNGEON:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;)Lcom/watabou/noosa/Image;

    move-result-object v5

    .line 10
    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    iget v7, v5, Lcom/watabou/noosa/Visual;->height:F

    const v8, 0x3ee66666    # 0.45f

    mul-float v8, v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 12
    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->width()F

    move-result v8

    sub-float v8, v4, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iput v8, v5, Lcom/watabou/noosa/Visual;->x:F

    .line 13
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v8

    const/high16 v10, 0x41a00000    # 20.0f

    if-eqz v8, :cond_0

    .line 14
    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->height()F

    move-result v8

    sub-float v8, v7, v8

    div-float/2addr v8, v9

    iput v8, v5, Lcom/watabou/noosa/Visual;->y:F

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->height()F

    move-result v8

    sub-float v8, v7, v8

    sub-float/2addr v8, v10

    div-float/2addr v8, v9

    add-float/2addr v8, v10

    iput v8, v5, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    :goto_0
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 17
    iget v8, v5, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v10, 0x41b00000    # 22.0f

    add-float/2addr v8, v10

    iget v11, v5, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v12, 0x42380000    # 46.0f

    add-float/2addr v11, v12

    .line 18
    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;

    invoke-direct {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;-><init>()V

    .line 19
    iput v8, v13, Lcom/watabou/noosa/ui/Component;->x:F

    .line 20
    iput v11, v13, Lcom/watabou/noosa/ui/Component;->y:F

    .line 21
    invoke-virtual {v13}, Lcom/watabou/noosa/ui/Component;->layout()V

    .line 22
    invoke-virtual {v0, v13}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 23
    iget v8, v5, Lcom/watabou/noosa/Visual;->x:F

    iget v11, v5, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v8, v11

    sub-float/2addr v8, v10

    iget v10, v5, Lcom/watabou/noosa/Visual;->y:F

    add-float/2addr v10, v12

    .line 24
    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;-><init>()V

    .line 25
    iput v8, v11, Lcom/watabou/noosa/ui/Component;->x:F

    .line 26
    iput v10, v11, Lcom/watabou/noosa/ui/Component;->y:F

    .line 27
    invoke-virtual {v11}, Lcom/watabou/noosa/ui/Component;->layout()V

    .line 28
    invoke-virtual {v0, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 29
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$1;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->PIXEL_DUNGEON_SIGNS:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;)Lcom/watabou/noosa/Image;

    move-result-object v10

    invoke-direct {v8, v0, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;Lcom/watabou/noosa/Image;)V

    .line 30
    iget v10, v5, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->width()F

    move-result v11

    invoke-virtual {v8}, Lcom/watabou/noosa/Visual;->width()F

    move-result v12

    sub-float/2addr v11, v12

    div-float/2addr v11, v9

    add-float/2addr v11, v10

    iput v11, v8, Lcom/watabou/noosa/Visual;->x:F

    .line 31
    iget v10, v5, Lcom/watabou/noosa/Visual;->y:F

    iput v10, v8, Lcom/watabou/noosa/Visual;->y:F

    .line 32
    invoke-virtual {v0, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 33
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$2;

    new-array v10, v3, [Ljava/lang/Object;

    const-string v11, "enter"

    .line 34
    invoke-static {v1, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 35
    invoke-direct {v8, v0, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;Ljava/lang/String;)V

    .line 36
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->ENTER:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 37
    invoke-virtual {v0, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 38
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$3;

    new-array v11, v3, [Ljava/lang/Object;

    const-string v12, "support"

    .line 39
    invoke-static {v1, v12, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 40
    invoke-direct {v10, v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;Ljava/lang/String;)V

    .line 41
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->GOLD:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 42
    invoke-virtual {v0, v10}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 43
    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$4;

    new-array v12, v3, [Ljava/lang/Object;

    const-string v13, "rankings"

    .line 44
    invoke-static {v1, v13, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 45
    invoke-direct {v11, v0, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;Ljava/lang/String;)V

    .line 46
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->RANKINGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 47
    invoke-virtual {v0, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 48
    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$5;

    new-array v13, v3, [Ljava/lang/Object;

    const-string v14, "badges"

    .line 49
    invoke-static {v1, v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 50
    invoke-direct {v12, v0, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$5;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;Ljava/lang/String;)V

    .line 51
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->BADGES:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 52
    invoke-virtual {v0, v12}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 53
    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$6;

    new-array v14, v3, [Ljava/lang/Object;

    const-string v15, "changes"

    .line 54
    invoke-static {v1, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 55
    invoke-direct {v13, v0, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$6;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;Ljava/lang/String;)V

    .line 56
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->CHANGES:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 57
    invoke-virtual {v0, v13}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 58
    new-instance v14, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$7;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v15, "about"

    .line 59
    invoke-static {v1, v15, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-direct {v14, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$7;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 62
    invoke-virtual {v0, v14}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    sub-float v1, v6, v7

    .line 63
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v3

    const/4 v15, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    mul-int/lit8 v3, v3, 0x15

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3

    .line 64
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v15, 0x3

    :cond_2
    div-int/2addr v1, v15

    const/4 v3, 0x2

    .line 65
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 66
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v3

    const/high16 v15, 0x41a80000    # 21.0f

    if-eqz v3, :cond_3

    .line 67
    iget v3, v5, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v17, 0x42480000    # 50.0f

    sub-float v3, v3, v17

    int-to-float v1, v1

    add-float/2addr v7, v1

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    const/high16 v17, 0x42c80000    # 100.0f

    add-float v5, v5, v17

    div-float/2addr v5, v9

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v5, v5, v16

    invoke-virtual {v8, v3, v7, v5, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 68
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 69
    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v3

    add-float/2addr v3, v9

    .line 70
    iget v5, v8, Lcom/watabou/noosa/ui/Component;->y:F

    .line 71
    iget v7, v8, Lcom/watabou/noosa/ui/Component;->width:F

    .line 72
    invoke-virtual {v10, v3, v5, v7, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 73
    iget v3, v8, Lcom/watabou/noosa/ui/Component;->x:F

    .line 74
    iget v5, v8, Lcom/watabou/noosa/ui/Component;->width:F

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float v5, v5, v7

    add-float/2addr v5, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v5, v3

    .line 75
    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v7

    add-float/2addr v7, v1

    .line 76
    iget v8, v8, Lcom/watabou/noosa/ui/Component;->width:F

    const v10, 0x3f2b851f    # 0.67f

    mul-float v8, v8, v10

    sub-float/2addr v8, v3

    .line 77
    invoke-virtual {v11, v5, v7, v8, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 78
    invoke-virtual {v11}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v3

    add-float/2addr v3, v9

    .line 79
    iget v5, v11, Lcom/watabou/noosa/ui/Component;->y:F

    .line 80
    iget v7, v11, Lcom/watabou/noosa/ui/Component;->width:F

    .line 81
    invoke-virtual {v12, v3, v5, v7, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 82
    iget v3, v11, Lcom/watabou/noosa/ui/Component;->x:F

    .line 83
    invoke-virtual {v11}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v5

    add-float/2addr v5, v1

    .line 84
    iget v1, v11, Lcom/watabou/noosa/ui/Component;->width:F

    .line 85
    invoke-virtual {v13, v3, v5, v1, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 86
    invoke-virtual {v13}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v1

    add-float/2addr v1, v9

    .line 87
    iget v3, v13, Lcom/watabou/noosa/ui/Component;->y:F

    .line 88
    iget v5, v11, Lcom/watabou/noosa/ui/Component;->width:F

    .line 89
    invoke-virtual {v14, v1, v3, v5, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    goto :goto_2

    .line 90
    :cond_3
    iget v3, v5, Lcom/watabou/noosa/Visual;->x:F

    int-to-float v1, v1

    add-float/2addr v7, v1

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    invoke-virtual {v8, v3, v7, v5, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 91
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 92
    iget v3, v8, Lcom/watabou/noosa/ui/Component;->x:F

    .line 93
    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v5

    add-float/2addr v5, v1

    .line 94
    iget v7, v8, Lcom/watabou/noosa/ui/Component;->width:F

    div-float/2addr v7, v9

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v7, v7, v16

    .line 95
    invoke-virtual {v11, v3, v5, v7, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 96
    invoke-virtual {v11}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v3

    add-float/2addr v3, v9

    .line 97
    iget v5, v11, Lcom/watabou/noosa/ui/Component;->y:F

    .line 98
    iget v7, v11, Lcom/watabou/noosa/ui/Component;->width:F

    .line 99
    invoke-virtual {v12, v3, v5, v7, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 100
    iget v3, v11, Lcom/watabou/noosa/ui/Component;->x:F

    .line 101
    invoke-virtual {v11}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v5

    add-float/2addr v5, v1

    .line 102
    iget v7, v11, Lcom/watabou/noosa/ui/Component;->width:F

    .line 103
    invoke-virtual {v13, v3, v5, v7, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 104
    invoke-virtual {v13}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v3

    add-float/2addr v3, v9

    .line 105
    iget v5, v13, Lcom/watabou/noosa/ui/Component;->y:F

    .line 106
    iget v7, v13, Lcom/watabou/noosa/ui/Component;->width:F

    .line 107
    invoke-virtual {v14, v3, v5, v7, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 108
    iget v3, v8, Lcom/watabou/noosa/ui/Component;->x:F

    .line 109
    invoke-virtual {v14}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v5

    add-float/2addr v5, v1

    .line 110
    iget v1, v8, Lcom/watabou/noosa/ui/Component;->width:F

    .line 111
    invoke-virtual {v10, v3, v5, v1, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 112
    :goto_2
    new-instance v1, Lcom/watabou/noosa/BitmapText;

    const-string v3, "v"

    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/watabou/noosa/Game;->version:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    invoke-direct {v1, v3, v5}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 113
    invoke-virtual {v1}, Lcom/watabou/noosa/BitmapText;->measure()V

    const v3, 0x888888

    .line 114
    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 115
    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    sub-float v3, v4, v3

    const/high16 v5, 0x40800000    # 4.0f

    sub-float/2addr v3, v5

    iput v3, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 116
    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    sub-float/2addr v6, v3

    sub-float/2addr v6, v9

    iput v6, v1, Lcom/watabou/noosa/Visual;->y:F

    .line 117
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 118
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/PrefsButton;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/PrefsButton;-><init>()V

    const/4 v3, 0x2

    int-to-float v3, v3

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    .line 119
    invoke-virtual {v1, v3, v7, v6, v8}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 120
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 121
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 122
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;-><init>()V

    int-to-float v1, v1

    .line 123
    invoke-virtual {v3, v1, v7, v6, v8}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 124
    invoke-virtual {v0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 125
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;-><init>()V

    .line 126
    iget v3, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v4, v3

    .line 127
    invoke-virtual {v1, v4, v7}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 128
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 129
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification;-><init>()V

    add-int/lit8 v2, v2, -0x15

    int-to-float v2, v2

    .line 130
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->reqWidth()F

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 131
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    return-void
.end method
