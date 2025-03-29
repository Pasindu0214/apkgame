.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndStartGame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->loadGlobal()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->loadGlobal()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "title"

    .line 4
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    const v2, 0xffff44

    .line 5
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 6
    iget v2, v1, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v3, 0x42f00000    # 120.0f

    sub-float v2, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/high16 v5, 0x40400000    # 3.0f

    .line 7
    invoke-virtual {v1, v2, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    move-result-object v2

    array-length v5, v2

    const v6, 0x4099999a    # 4.8f

    const/4 v7, 0x0

    :goto_0
    const/high16 v8, 0x41800000    # 16.0f

    if-ge v7, v5, :cond_0

    aget-object v9, v2, v7

    .line 11
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;

    invoke-direct {v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;)V

    .line 12
    iget v9, v1, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v11, 0x40e00000    # 7.0f

    add-float/2addr v9, v11

    const/high16 v11, 0x41c00000    # 24.0f

    .line 13
    invoke-virtual {v10, v6, v9, v11, v8}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    const v8, 0x41e66666    # 28.8f

    add-float/2addr v6, v8

    .line 14
    invoke-virtual {p0, v10}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lcom/watabou/noosa/ColorBlock;

    const v5, -0xddddde

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6, v5}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 16
    invoke-virtual {v2, v3, v6}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    const/4 v5, 0x0

    .line 17
    iput v5, v2, Lcom/watabou/noosa/Visual;->x:F

    .line 18
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v6, 0x40c00000    # 6.0f

    add-float/2addr v1, v6

    add-float/2addr v1, v8

    iput v1, v2, Lcom/watabou/noosa/Visual;->y:F

    .line 19
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$1;)V

    .line 21
    iget v2, v2, Lcom/watabou/noosa/Visual;->y:F

    add-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v6, 0x42a00000    # 80.0f

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v1, v7, v2, v4, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 22
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 23
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$1;

    new-array v2, v0, [Ljava/lang/Object;

    .line 24
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;

    const-string v6, "start"

    invoke-static {v4, v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-direct {v1, p0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;Ljava/lang/String;I)V

    .line 26
    iput-boolean v0, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 27
    invoke-virtual {v1, v5, v3, v3, v7}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 28
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 29
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->isUnlocked(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 30
    :cond_1
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    const-string p1, "challenges"

    .line 31
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    goto :goto_3

    .line 32
    :cond_2
    :goto_1
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2;

    .line 33
    invoke-static {}, La/b/a/e;->challenges()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->CHALLENGE_ON:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->CHALLENGE_OFF:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    :goto_2
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;Lcom/watabou/noosa/Image;)V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 34
    invoke-virtual {p1, v1, v3, v7, v7}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 35
    iput-boolean v0, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 36
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_3
    const/16 p1, 0x78

    const/16 v0, 0x8c

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
