.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;
.super Lcom/watabou/noosa/Group;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UITab"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
    .locals 12

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;

    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "mode"

    .line 2
    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v2

    .line 3
    iget v3, v2, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v4, 0x42e00000    # 112.0f

    sub-float v3, v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 4
    invoke-virtual {v2, v3, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 5
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 6
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$1;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "split"

    .line 8
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-direct {v3, p0, v6, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 10
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    add-float/2addr v2, v5

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x42100000    # 36.0f

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v2, v7, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 11
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$2;

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, "group"

    .line 13
    invoke-static {v0, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-direct {v2, p0, v9, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 15
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v9

    add-float/2addr v9, v5

    .line 16
    iget v10, v3, Lcom/watabou/noosa/ui/Component;->y:F

    .line 17
    invoke-virtual {v2, v9, v10, v7, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 18
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 19
    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$3;

    new-array v10, v1, [Ljava/lang/Object;

    const-string v11, "center"

    .line 20
    invoke-static {v0, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-direct {v9, p0, v10, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 22
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v10

    add-float/2addr v10, v5

    .line 23
    iget v3, v3, Lcom/watabou/noosa/ui/Component;->y:F

    .line 24
    invoke-virtual {v9, v10, v3, v7, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 25
    invoke-virtual {p0, v9}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 26
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$4;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "flip_toolbar"

    .line 27
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-direct {v3, p0, v6, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 29
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    add-float/2addr v2, v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v3, v8, v2, v4, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 30
    invoke-static {}, La/b/a/e;->flipToolbar()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 31
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 32
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$5;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v9, "flip_indicators"

    .line 33
    invoke-static {v0, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-direct {v2, p0, v7, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$5;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 35
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v3

    add-float/2addr v3, v5

    invoke-virtual {v2, v8, v3, v4, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 36
    invoke-static {}, La/b/a/e;->flipTags()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 38
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$6;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v9, "fullscreen"

    .line 39
    invoke-static {v0, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-direct {v3, p0, v7, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$6;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 41
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    const/high16 v7, 0x40c00000    # 6.0f

    add-float/2addr v2, v7

    invoke-virtual {v3, v8, v2, v4, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 42
    invoke-static {v9, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 44
    sget-object v2, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v2}, La/b/a/a;->getType()La/b/a/a$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    sget-object v2, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v2}, La/b/a/a;->getVersion()I

    move-result v2

    const/16 v9, 0x13

    if-lt v2, v9, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_1
    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 48
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7;

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, "system_font"

    .line 49
    invoke-static {v0, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 50
    invoke-direct {v2, p0, v9, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 51
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v3

    add-float/2addr v3, v5

    invoke-virtual {v2, v8, v3, v4, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 52
    invoke-static {}, La/b/a/e;->systemFont()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 54
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$8;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "key_bindings"

    .line 56
    invoke-static {v0, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-direct {v3, p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$8;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 58
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    add-float/2addr p1, v7

    invoke-virtual {v3, v8, p1, v4, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 59
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_2
    return-void
.end method
