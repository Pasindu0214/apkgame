.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;
.super Lcom/watabou/noosa/Group;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayTab"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1
    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;

    invoke-direct/range {p0 .. p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 2
    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$1;

    const/4 v12, 0x0

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "scale"

    invoke-static {v8, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/watabou/noosa/Game;->density:F

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v1, v1, v13

    float-to-double v3, v1

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxDefaultZoom:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/watabou/noosa/Game;->density:F

    mul-float v0, v0, v13

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxDefaultZoom:I

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 5
    sget v0, Lcom/watabou/noosa/Game;->density:F

    mul-float v0, v0, v13

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxDefaultZoom:I

    const/4 v14, 0x0

    const/high16 v15, 0x42e00000    # 112.0f

    const/high16 v7, 0x41c00000    # 24.0f

    if-ge v0, v1, :cond_0

    .line 6
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    invoke-virtual {v11, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->setSelectedValue(I)V

    .line 7
    invoke-virtual {v11, v14, v14, v15, v7}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 8
    invoke-virtual {v8, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    :cond_0
    invoke-virtual {v11}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDesktop()Z

    move-result v1

    const/high16 v6, 0x41900000    # 18.0f

    const/4 v5, 0x2

    if-nez v1, :cond_3

    .line 11
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "saver"

    .line 12
    invoke-static {v10, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-direct {v0, v8, v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 14
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxScreenZoom:I

    if-lt v1, v5, :cond_1

    .line 15
    invoke-virtual {v11}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    add-float/2addr v1, v13

    invoke-virtual {v0, v14, v1, v15, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    const-string v1, "power_saver"

    .line 16
    invoke-static {v1, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 18
    invoke-virtual {v8, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 19
    :cond_1
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$3;

    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "portrait"

    .line 20
    invoke-static {v10, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "landscape"

    .line 21
    invoke-static {v10, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 22
    :goto_0
    invoke-direct {v1, v8, v2, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 23
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    add-float/2addr v0, v13

    invoke-virtual {v1, v14, v0, v15, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 24
    invoke-virtual {v8, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    :cond_3
    move v11, v0

    .line 26
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$4;

    new-array v0, v12, [Ljava/lang/Object;

    const-string v3, "brightness"

    .line 27
    invoke-static {v10, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "dark"

    .line 28
    invoke-static {v10, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "bright"

    invoke-static {v10, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, -0x1

    const/16 v19, 0x1

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v13, v3

    move-object/from16 v3, v16

    move-object v14, v4

    move-object/from16 v4, v17

    move/from16 v5, v18

    const/high16 v17, 0x41900000    # 18.0f

    move/from16 v6, v19

    const/high16 v15, 0x41c00000    # 24.0f

    move-object/from16 v7, p1

    .line 29
    invoke-direct/range {v0 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    const/4 v0, 0x1

    const/4 v7, -0x1

    .line 30
    invoke-static {v13, v12, v7, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result v0

    .line 31
    invoke-virtual {v14, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->setSelectedValue(I)V

    add-float v11, v11, v17

    const/4 v0, 0x0

    const/high16 v1, 0x42e00000    # 112.0f

    .line 32
    invoke-virtual {v14, v0, v11, v1, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 33
    invoke-virtual {v8, v14}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 34
    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$5;

    new-array v0, v12, [Ljava/lang/Object;

    const-string v13, "visual_grid"

    .line 35
    invoke-static {v10, v13, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "off"

    .line 36
    invoke-static {v10, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "high"

    invoke-static {v10, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    move-object v0, v11

    move-object/from16 v1, p0

    const/4 v10, -0x1

    move-object/from16 v7, p1

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$5;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    const/4 v0, 0x2

    .line 38
    invoke-static {v13, v12, v10, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result v0

    .line 39
    invoke-virtual {v11, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->setSelectedValue(I)V

    .line 40
    invoke-virtual {v14}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-virtual {v11, v1, v0, v2, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 41
    invoke-virtual {v8, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
