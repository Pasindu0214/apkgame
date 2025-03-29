.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;
.super Lcom/watabou/noosa/Group;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioTab"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1
    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;

    invoke-direct/range {p0 .. p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 2
    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$1;

    const/4 v12, 0x0

    new-array v0, v12, [Ljava/lang/Object;

    const-string v13, "music_vol"

    invoke-static {v8, v13, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const-string v4, "10"

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    const/16 v14, 0xa

    .line 3
    invoke-static {v13, v14, v12, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result v0

    .line 4
    invoke-virtual {v11, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->setSelectedValue(I)V

    const/4 v13, 0x0

    const/high16 v15, 0x41c00000    # 24.0f

    const/high16 v7, 0x42e00000    # 112.0f

    .line 5
    invoke-virtual {v11, v13, v13, v7, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 6
    invoke-virtual {v8, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$2;

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "music_mute"

    .line 8
    invoke-static {v10, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {v6, v8, v0, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 10
    invoke-virtual {v11}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v0, v11

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v6, v13, v0, v7, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    const/4 v4, 0x1

    const-string v0, "music"

    .line 11
    invoke-static {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 12
    invoke-virtual {v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 13
    invoke-virtual {v8, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$3;

    new-array v0, v12, [Ljava/lang/Object;

    const-string v2, "sfx_vol"

    .line 15
    invoke-static {v10, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0xa

    const-string v19, "0"

    const-string v20, "10"

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v11, v2

    move-object/from16 v2, v16

    move-object v13, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    const/high16 v15, 0x41900000    # 18.0f

    move/from16 v5, v17

    move-object/from16 v17, v6

    move/from16 v6, v18

    move-object/from16 v7, p1

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 17
    invoke-static {v11, v14, v12, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result v0

    .line 18
    invoke-virtual {v13, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->setSelectedValue(I)V

    .line 19
    invoke-virtual/range {v17 .. v17}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    add-float/2addr v0, v15

    const/4 v1, 0x0

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-virtual {v13, v1, v0, v3, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 20
    invoke-virtual {v8, v13}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 21
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$4;

    new-array v2, v12, [Ljava/lang/Object;

    const-string v4, "sfx_mute"

    .line 22
    invoke-static {v10, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-direct {v0, v8, v2, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    .line 24
    invoke-virtual {v13}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    const-string v1, "soundfx"

    const/4 v2, 0x1

    .line 25
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 26
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 27
    invoke-virtual {v8, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 28
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x70

    invoke-virtual {v9, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->resize(II)V

    return-void
.end method
