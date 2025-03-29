.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "BadgesScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;
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
    .locals 12

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    const/4 v1, 0x1

    const-string v2, "theme.ogg"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/audio/Music;->play(Ljava/lang/String;Z)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 4
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v3, v0, Lcom/watabou/noosa/Camera;->width:I

    .line 5
    iget v0, v0, Lcom/watabou/noosa/Camera;->height:I

    .line 6
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;-><init>()V

    int-to-float v3, v3

    int-to-float v0, v0

    .line 7
    invoke-virtual {v4, v3, v0}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array v4, v2, [Ljava/lang/Object;

    .line 9
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene;

    const-string v6, "title"

    invoke-static {v5, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    .line 10
    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v4

    const v5, 0xffff44

    .line 11
    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 12
    iget v5, v4, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float v5, v3, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 13
    iget v7, v4, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v8, 0x41a00000    # 20.0f

    sub-float v7, v8, v7

    div-float/2addr v7, v6

    .line 14
    invoke-virtual {v4, v5, v7}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 15
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 16
    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->loadGlobal()V

    .line 18
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->filtered(Z)Ljava/util/List;

    move-result-object v4

    .line 19
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x24

    .line 20
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, -0x6

    .line 21
    :cond_0
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->YASD:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v5, v5, -0x5

    .line 22
    :cond_1
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 23
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x7

    goto :goto_0

    :cond_2
    const/4 v7, 0x4

    .line 24
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v5

    const/16 v10, 0x20

    if-le v9, v10, :cond_3

    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 25
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v5

    div-int/2addr v9, v7

    add-int/2addr v9, v1

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v3, v1

    int-to-float v1, v7

    div-float/2addr v3, v1

    const/high16 v1, 0x42200000    # 40.0f

    sub-float/2addr v0, v1

    int-to-float v1, v9

    div-float/2addr v0, v1

    .line 26
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v5

    if-ge v2, v1, :cond_5

    .line 27
    div-int v1, v2, v7

    .line 28
    rem-int v9, v2, v7

    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 30
    :goto_2
    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;

    invoke-direct {v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    int-to-float v9, v9

    mul-float v9, v9, v3

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v9, v10

    .line 31
    iget v10, v11, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-static {v3, v10, v6, v9}, La/a/a/a/a;->a(FFFF)F

    move-result v9

    int-to-float v1, v1

    mul-float v1, v1, v0

    add-float/2addr v1, v8

    .line 32
    iget v10, v11, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float v10, v0, v10

    div-float/2addr v10, v6

    add-float/2addr v10, v1

    .line 33
    invoke-virtual {v11, v9, v10}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 34
    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 35
    invoke-virtual {p0, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    :cond_5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;-><init>()V

    .line 37
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v1, v1, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v1, v1

    .line 38
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 40
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 41
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveGlobal()V

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->destroy()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->switchNoFade(Ljava/lang/Class;)V

    return-void
.end method
