.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "WelcomeScene.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;I)V
    .locals 0

    if-eqz p0, :cond_4

    const/16 p0, 0x19c

    if-ge p1, p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->load()V

    .line 2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "rankings.dat"

    .line 3
    invoke-static {p0}, Lcom/watabou/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    const/16 p0, 0x137

    if-gt p1, p0, :cond_2

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->loadGlobal()V

    .line 5
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->addGlobal(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 6
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->addGlobal(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 7
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->isUnlocked(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->addGlobal(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveGlobal()V

    :cond_2
    const/16 p0, 0x108

    if-gt p1, p0, :cond_3

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->loadGlobal()V

    .line 11
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    const-string p1, "Potions"

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->addPage(Ljava/lang/String;)Z

    .line 12
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    const-string p1, "Stones"

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->addPage(Ljava/lang/String;)Z

    .line 13
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    const-string p1, "Energy_Food"

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->addPage(Ljava/lang/String;)Z

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->saveGlobal()V

    .line 15
    :cond_3
    sget p0, Lcom/watabou/noosa/Game;->versionCode:I

    const-string p1, "version"

    .line 16
    invoke-static {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    return-void

    :cond_4
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public create()V
    .locals 15

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    const/4 v2, 0x0

    const-string v3, "version"

    .line 2
    invoke-static {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3
    sget v4, Lcom/watabou/noosa/Game;->versionCode:I

    if-ne v4, v3, :cond_0

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->switchNoFade(Ljava/lang/Class;)V

    return-void

    .line 5
    :cond_0
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-boolean v2, v4, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 6
    sget-object v4, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v5, v4, Lcom/watabou/noosa/Camera;->width:I

    .line 7
    iget v4, v4, Lcom/watabou/noosa/Camera;->height:I

    .line 8
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->PIXEL_DUNGEON:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const v7, 0x3f19999a    # 0.6f

    .line 9
    invoke-virtual {v6, v7}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 10
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    iget v7, v6, Lcom/watabou/noosa/Visual;->height:F

    int-to-float v8, v4

    const v9, 0x3ee66666    # 0.45f

    mul-float v9, v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    int-to-float v9, v5

    .line 12
    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->width()F

    move-result v10

    sub-float v10, v9, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iput v10, v6, Lcom/watabou/noosa/Visual;->x:F

    .line 13
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 14
    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->height()F

    move-result v10

    sub-float/2addr v7, v10

    div-float/2addr v7, v11

    iput v7, v6, Lcom/watabou/noosa/Visual;->y:F

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->height()F

    move-result v10

    sub-float/2addr v7, v10

    const/high16 v10, 0x41a00000    # 20.0f

    sub-float/2addr v7, v10

    div-float/2addr v7, v11

    add-float/2addr v7, v10

    iput v7, v6, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    :goto_0
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 17
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$1;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->PIXEL_DUNGEON_SIGNS:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;)Lcom/watabou/noosa/Image;

    move-result-object v10

    invoke-direct {v7, p0, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;Lcom/watabou/noosa/Image;)V

    .line 18
    iget v10, v6, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->width()F

    move-result v12

    invoke-virtual {v7}, Lcom/watabou/noosa/Visual;->width()F

    move-result v13

    sub-float/2addr v12, v13

    div-float/2addr v12, v11

    add-float/2addr v12, v10

    iput v12, v7, Lcom/watabou/noosa/Visual;->x:F

    .line 19
    iget v10, v6, Lcom/watabou/noosa/Visual;->y:F

    iput v10, v7, Lcom/watabou/noosa/Visual;->y:F

    .line 20
    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 21
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$2;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->GREY_BUTTON_TR:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    new-array v12, v2, [Ljava/lang/Object;

    const-string v13, "continue"

    .line 22
    invoke-static {v1, v13, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-direct {v7, p0, v10, v12, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V

    const/high16 v10, 0x41a80000    # 21.0f

    if-eqz v3, :cond_2

    .line 24
    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$3;

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->GREY_BUTTON_TR:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v14, "changes"

    invoke-static {v0, v14, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, p0, v13, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V

    .line 25
    iget v0, v6, Lcom/watabou/noosa/Visual;->x:F

    add-int/lit8 v4, v4, -0x19

    int-to-float v2, v4

    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->width()F

    move-result v4

    div-float/2addr v4, v11

    sub-float/2addr v4, v11

    invoke-virtual {v7, v0, v2, v4, v10}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 26
    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 27
    invoke-virtual {v7}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v0

    add-float/2addr v0, v11

    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->width()F

    move-result v4

    div-float/2addr v4, v11

    sub-float/2addr v4, v11

    invoke-virtual {v12, v0, v2, v4, v10}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 28
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->CHANGES:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 29
    invoke-virtual {p0, v12}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_1

    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    const-string v12, "enter"

    .line 30
    invoke-static {v0, v12, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v2, v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->layout()V

    .line 33
    iget v0, v6, Lcom/watabou/noosa/Visual;->x:F

    add-int/lit8 v4, v4, -0x19

    int-to-float v2, v4

    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->width()F

    move-result v4

    invoke-virtual {v7, v0, v2, v4, v10}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 34
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->ENTER:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 35
    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_1
    const/4 v0, 0x6

    .line 36
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    if-nez v3, :cond_3

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "welcome_msg"

    .line 37
    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 38
    sget v4, Lcom/watabou/noosa/Game;->versionCode:I

    if-gt v3, v4, :cond_5

    const/16 v4, 0x19c

    if-ge v3, v4, :cond_4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "update_intro"

    .line 39
    invoke-static {v1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n\n"

    .line 40
    invoke-static {v3, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "update_msg"

    .line 41
    invoke-static {v1, v4, v2, v3}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "patch_intro"

    .line 42
    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    .line 43
    invoke-static {v2, v3}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v2, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    new-array v10, v4, [Ljava/lang/Object;

    const-string v12, "patch_bugfixes"

    .line 45
    invoke-static {v1, v12, v10, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "patch_translations"

    .line 47
    invoke-static {v1, v4, v3, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "what_msg"

    .line 48
    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    add-int/lit8 v5, v5, -0x14

    .line 49
    invoke-virtual {v0, v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;I)V

    .line 50
    iget v1, v6, Lcom/watabou/noosa/Visual;->y:F

    sub-float/2addr v8, v1

    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->height()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    sub-float/2addr v8, v1

    .line 51
    iget v1, v7, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v8, v1

    sub-float/2addr v8, v11

    .line 52
    iget v1, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v9, v1

    div-float/2addr v9, v11

    .line 53
    iget v1, v6, Lcom/watabou/noosa/Visual;->y:F

    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    sub-float/2addr v3, v2

    add-float/2addr v3, v1

    .line 54
    iget v1, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v8, v1

    div-float/2addr v8, v11

    add-float/2addr v8, v3

    .line 55
    invoke-virtual {v0, v9, v8}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 56
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
