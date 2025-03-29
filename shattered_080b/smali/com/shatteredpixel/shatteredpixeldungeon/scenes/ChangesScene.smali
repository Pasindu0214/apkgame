.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "ChangesScene.java"


# static fields
.field public static changesSelected:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;

    invoke-super/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    sget-object v2, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    const/4 v3, 0x1

    const-string v4, "theme.ogg"

    invoke-virtual {v2, v4, v3}, Lcom/watabou/noosa/audio/Music;->play(Ljava/lang/String;Z)V

    .line 3
    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v4, v2, Lcom/watabou/noosa/Camera;->width:I

    .line 4
    iget v2, v2, Lcom/watabou/noosa/Camera;->height:I

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "title"

    .line 5
    invoke-static {v1, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    .line 6
    invoke-static {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v6

    const v7, 0xffff44

    .line 7
    invoke-virtual {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    int-to-float v8, v4

    .line 8
    iget v9, v6, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 9
    iget v10, v6, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v11, 0x41a00000    # 20.0f

    sub-float/2addr v11, v10

    div-float/2addr v11, v9

    .line 10
    invoke-virtual {v6, v8, v11}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 11
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 12
    invoke-virtual {v0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 13
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;-><init>()V

    .line 14
    sget-object v10, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v10, v10, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v10, v10

    .line 15
    iget v11, v8, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    .line 16
    invoke-virtual {v8, v10, v11}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 17
    invoke-virtual {v0, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->TOAST:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v8}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v8

    .line 19
    iget v10, v8, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    add-int/lit16 v10, v10, 0x87

    .line 20
    iget v11, v8, Lcom/watabou/noosa/NinePatch;->marginRight:I

    add-int/2addr v10, v11

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    add-int/lit8 v2, v2, -0x23

    int-to-float v12, v10

    int-to-float v2, v2

    .line 21
    invoke-virtual {v8, v12, v2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    sub-int/2addr v4, v10

    int-to-float v2, v4

    div-float/2addr v2, v9

    .line 22
    iput v2, v8, Lcom/watabou/noosa/Visual;->x:F

    .line 23
    invoke-virtual {v6}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v2, v4

    iput v2, v8, Lcom/watabou/noosa/Visual;->y:F

    .line 24
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 25
    invoke-virtual {v0, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;->changesSelected:I

    const/4 v6, 0x3

    if-eq v4, v3, :cond_3

    if-eq v4, v11, :cond_2

    const-string v9, "misc"

    const-string v10, "Developer Commentary"

    const/high16 v11, 0x41800000    # 16.0f

    const-string v12, ""

    const/4 v13, 0x0

    if-eq v4, v6, :cond_1

    .line 28
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v6, "v0.8.0"

    invoke-direct {v4, v6, v3, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 29
    iget-object v3, v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "0.8.0b"

    invoke-direct {v3, v4, v5, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 32
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "_-_ Yog-Dzewa\'s fists are now considered bosses, not minibosses.\n\n_-_ Updated translations."

    invoke-direct {v4, v6, v12, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 37
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 38
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 39
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    const/16 v16, 0x90

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x10

    const-string v15, "spinner.png"

    move-object v14, v6

    invoke-direct/range {v14 .. v19}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    new-array v12, v5, [Ljava/lang/Object;

    const-string v14, "bugfixes"

    invoke-static {v1, v14, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "Fixed (caused by 0.8.0):\n_-_ Various rare freezes when descending\n_-_ Various rare crash bugs\n_-_ Yog-Dzewa fight glitching in rare cases where the eye and last fist are killed at the same time\n_-_ Bright/Dark fist very rarely teleporting into enclosed spaces"

    invoke-direct {v4, v6, v12, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 42
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 43
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 44
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "0.8.0a"

    invoke-direct {v3, v4, v5, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 45
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v4, Lcom/watabou/noosa/Image;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/YogSprite;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/YogSprite;-><init>()V

    .line 48
    invoke-direct {v4}, Lcom/watabou/noosa/Image;-><init>()V

    .line 49
    invoke-virtual {v4, v6}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 50
    iget-object v6, v4, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const v12, 0x3f4ccccd    # 0.8f

    .line 51
    iput v12, v6, Lcom/watabou/utils/PointF;->x:F

    .line 52
    iput v12, v6, Lcom/watabou/utils/PointF;->y:F

    .line 53
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    const-string v12, "Enemy and Boss adjustments"

    const-string v15, "Based on player feedback and gameplay data, I\'m making the following tweaks to enemy/boss balance. These changes mainly make particular enemies/bosses a bit easier:\n\n_-_ Turns taken for DM-300 to dig through rock increased to 3 from 2.5\n_-_ DM-300 pylons now resist damage above 15, up from 10\n\n_-_ Ripper Demon leap ability now has a short cooldown\n_-_ Ripper Demon damage reduced by ~8%\n_-_ Ripper Demon leap now deals large bleed damage less often\n\n_-_ Yog\'s laser damage reduced by ~8%\n_-_ Bright fist blind duration reduced by 40%\n_-_ Dark fist ranged damage reduced by 20%\n_-_ Soiled fist now spreads slightly more furrowed grass\n_-_ Soiled fist now resists burning\n_-_ Rusted fist melee damage increased by 10%"

    invoke-direct {v6, v4, v12, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v3, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 56
    invoke-virtual {v6, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 57
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 58
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;-><init>()V

    const-string v12, "Sniper shot is currently performing quite poorly versus the sniper\'s other abilities, so I\'m giving it a significant buff:\n\n_-_ Base sniper shot damage increased by 20%\n_-_ Sniper shot damage scaling with distance increased. At high distance sniper shot will deal up to 40% more total damage."

    invoke-direct {v4, v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 59
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 61
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 62
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 63
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "Following feedback I\'ve tweaked the sensitivity of the new \'red flash\' effect. It should now trigger in far fewer cases where the hero isn\'t taking serious damage, but should still trigger when the hero is at risk of death.\n\nI\'ve tweaked the behaviour of ranged enemies slightly, which should eliminate cases where they don\'t follow the hero through a door despite seeing them go through it.\n\n_-_ Increased the size of the descending region at the end of Dwarf King\'s level.\n\n_-_ Decreased the minimum window size for desktop users.\n\n_-_ Updated translations."

    invoke-direct {v4, v6, v12, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 66
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 67
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 68
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    const/16 v17, 0x90

    const/16 v18, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x10

    const/16 v20, 0x10

    const-string v16, "spinner.png"

    move-object v15, v6

    invoke-direct/range {v15 .. v20}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v1, v14, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "Fixed (caused by 0.8.0):\n_-_ Various errors/crashed caused by new imp shop\n_-_ Several cases where water could spread to tiles that it shouldn\'t spread to.\n_-_ Water of health being used up on items that cannot be cursed\n_-_ Golems being able to teleport immovable characters\n_-_ Armored statues appearing in faith is my armor challenge\n_-_ Yog-dzewa being able to totally blind the player if into darkness is enabled\n_-_ Large enemies being able to move into enclosed spaces when vertigoed\n_-_ Infinite loop bug when attempting to teleport DM-300\n_-_ Various rare crash bugs"

    invoke-direct {v4, v6, v12, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 71
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 72
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 73
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "new"

    invoke-static {v1, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 74
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 75
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v7, "_-_ Released April 16th, 2020\n_-_ 546 days after Shattered v0.7.0\n_-_ 197 days after Shattered v0.7.5\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v6, v10, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 79
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 80
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 81
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM100Sprite;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM100Sprite;-><init>()V

    .line 82
    invoke-direct {v6}, Lcom/watabou/noosa/Image;-><init>()V

    .line 83
    invoke-virtual {v6, v7}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const-string v7, "Misc Enemies"

    const-string v10, "_DM-100s_ have been added to the prison to replace gnoll shamans. They behave very similarly to prison shamans, but have a few stat tweaks:\n_-_ Health increased to 20 from 18.\n_-_ Removed bonus damage vs enemies in water.\n_-_ The Max level for hero to earn exp from them is reduced to 13 from 14.\n\n_Mimics_ have been reworked! I don\'t want to fully spoil the surprise, but they are now deadlier but offer more counterplay. Keep an eye on chests before you open them...\n\n_Golden and Crystal Mimics_ have also been added! Golden mimics have higher stats but a better reward, and crystal mimics will try to run away with their loot! Neither require a key to open.\n\n_Armored Statues_ have been added as a rare variant to regular statues. These statues have much higher defense and HP, but will give you both a weapon and armor if you kill them."

    .line 84
    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 87
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 88
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 89
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShamanSprite$Purple;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShamanSprite$Purple;-><init>()V

    .line 90
    invoke-direct {v6}, Lcom/watabou/noosa/Image;-><init>()V

    .line 91
    invoke-virtual {v6, v7}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const-string v7, "Caves"

    const-string v10, "Vision range in the caves is now the same as other regions.\n\n_Bats_ have had their damage reduced by 13%, and heal for less when they attack. This should make them less oppressive in the early caves.\n\n_Gnoll Brutes_ now deal ~8% less damage, and rage at 0 hp instead of 1/4 HP. This rage grants them shielding that slowly fades over time. When the shield runs out, they die.\n\n_Gnoll shamans_ have been completely reworked for the caves. They are more powerful and inflict different debuffs depending on the color of their mask.\n\n_Spinners_ are now 20% more evasive, 10% more accurate, and now spit their webs toward the hero from a distance. Their webs block projectiles, but can be cleared.\n\n_DM-200s_ are a new enemy in the later parts of the caves. They are too big to move into tunnels and doors, but make up for it with high stats and a toxic gas attack."

    .line 92
    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 95
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 96
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 97
    new-instance v4, Lcom/watabou/noosa/Image;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;-><init>()V

    .line 98
    invoke-direct {v4}, Lcom/watabou/noosa/Image;-><init>()V

    .line 99
    invoke-virtual {v4, v6}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 100
    iget-object v6, v4, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const v7, 0x3f3d70a4    # 0.74f

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(F)F

    move-result v7

    .line 101
    iput v7, v6, Lcom/watabou/utils/PointF;->x:F

    .line 102
    iput v7, v6, Lcom/watabou/utils/PointF;->y:F

    .line 103
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    new-array v10, v5, [Ljava/lang/Object;

    const-string v12, "name"

    invoke-static {v7, v12, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "The DM-300 fight has been reworked! DM-300 now has redesigned abilities, a new boss arena, and multiple phases!\n\nAs a part of this rework, DM-300\'s direct stats have been adjusted:\n_-_ Health increased to 300 from 200\n_-_ Evasion reduced by ~17%\n_-_ Damage reduced by ~11%\n_-_ Accuracy reduced by ~28%"

    invoke-direct {v6, v4, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v3, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 106
    invoke-virtual {v6, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 107
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 108
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Frost;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Frost;-><init>()V

    .line 109
    invoke-direct {v6}, Lcom/watabou/noosa/Image;-><init>()V

    .line 110
    invoke-virtual {v6, v7}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const-string v7, "Dwarven City"

    const-string v10, "_Dwarven Ghouls_ are a new enemy which replace elementals as the most simple opponent in the city. They are fairly weak on their own, but always travel in groups.\n\n_Elementals_ now have ~10% less HP, multiple different types, and will occasionally fire debuffing ranged attacks. The debuffs they inflict, and their resistances, vary by the elemental type.\n\n_Monks_ no longer disarm, but instead build focus which allows them to always dodge one physical attack. Monks start combat with full focus and build it faster when on the move.\n\n_Warlocks_ now deal ~21% less damage in melee, but have a nasty new debuff. They inflict \'degraded\', which temporarily weakens heavily upgraded gear.\n\n_Golems_ have been entirely reworked and are now large enemies like DM-200s. Unlike DM-200s they have no ranged attacks, but instead use dwarven teleportation magic to compensate for their low mobility."

    .line 111
    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 114
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 115
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 116
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/KingSprite;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/KingSprite;-><init>()V

    .line 117
    invoke-direct {v6}, Lcom/watabou/noosa/Image;-><init>()V

    .line 118
    invoke-virtual {v6, v7}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 119
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v7, v12, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "The Dwarf King fight has received a full rework! His fight still heavily features minion summoning, but now also features new abilities, a new arena, and multiple phases!\n\nAs a part of this fight rework DK\'s stats have been adjusted:\n_-_ Damage reduced by ~40%\n_-_ Accuracy reduced by ~18%\n_-_ Armor reduced by ~30%\n_-_ Evasion reduced by ~12%"

    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 122
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 123
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 124
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpawnerSprite;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpawnerSprite;-><init>()V

    .line 125
    invoke-direct {v6}, Lcom/watabou/noosa/Image;-><init>()V

    .line 126
    invoke-virtual {v6, v7}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const-string v7, "Demon Halls"

    const-string v10, "Floor 21 is now a regular demon halls floor\n\n_Ripper Demons_ are a new basic enemy. They have high damage attacks and a leap ability, but have weaker defensive stats. Instead of spawning normally, they are created by the next enemy...\n\n_Demon Spawners_ exist in special rooms within the demon halls, and create a steady stream of ripper demons as long as they are alive. Spawners do not return once killed, and award a bunch of EXP and a guaranteed potion of healing.\n\nMinor adjustments have been made to existing demon halls enemies:\n_-_ Spawn rates reduced slightly, to account for ripper demons.\n_-_ Succubi now drop scrolls which are more likely to be rare.\n_-_ Evil Eyes now always drop dew, a seed, or a runestone.\n_-_ Scorpios now drop potions which are more likely to be rare. They cannot drop healing.\n_-_ Acidic scorpios now inflict ooze and don\'t reflect damage."

    .line 127
    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 130
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 131
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 132
    new-instance v4, Lcom/watabou/noosa/Image;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/YogSprite;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/YogSprite;-><init>()V

    .line 133
    invoke-direct {v4}, Lcom/watabou/noosa/Image;-><init>()V

    .line 134
    invoke-virtual {v4, v6}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 135
    iget-object v6, v4, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const v7, 0x3f4ccccd    # 0.8f

    .line 136
    iput v7, v6, Lcom/watabou/utils/PointF;->x:F

    .line 137
    iput v7, v6, Lcom/watabou/utils/PointF;->y:F

    .line 138
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    const-string v7, "Yog-Dzewa"

    const-string v10, "The Yog-Dzewa fight has been reworked! The key ingredients (eye, fists, and larva) are still present, but the specific stats, mechanics, and pacing of the fight have been almost totally redone.\n\nMost notably, the fight is now much more evenly paced. Rather than summoning the same two fists every time at the start of the fight, Yog now summons fists steadily as the fight progresses. The fists also won\'t be the same each time, which gives the fight some variance.\n\nTo discourage skipping the demon halls, the fight is also affected by how many demon spawners were left alive on the previous floors. Expect the fight to be much harder if demon spawners are left alive!"

    invoke-direct {v6, v4, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v3, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 141
    invoke-virtual {v6, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 142
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 143
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "changes"

    invoke-static {v1, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const v4, 0xff8800

    .line 144
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 145
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    const/16 v21, 0x40

    const/16 v22, 0x60

    const-string v20, "terrain_features.png"

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v7, "Trap Adjustments"

    const-string v10, "I\'ve re-evaluated several lategame traps, and trap spawning frequency. My hope with these changes is to make traps less oppressive in the lategame, while still keeping their general effect wherever possible.\n\nTraps now show up ~10% more in the sewers, scaling down to ~25% less in the demon halls.\n\n_-_ Worn dart traps now deal more damage\n_-_ Ooze traps now affect a 3x3 area\n_-_ Explosive traps no longer appear as regular random traps, but still show up in special rooms\n_-_ Cursing traps now only curse a single worn weapon or armor\n_-_ Disintegration traps no longer affect items in the player\'s inventory\n_-_ Disarming traps are now more common, but cannot teleport your weapon too far away\n_-_ Pitfall traps are now more common, affect a 3x3 area, and give you one turn to react\n_-_ Distortion traps are now more common, can appear in the city, and have a reworked effect. They now act as more chaotic summoning traps, instead of resetting the current floor."

    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 149
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 150
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 151
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_WARRIOR:I

    .line 152
    invoke-direct {v6, v7, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v7, "Weapon and Armor Changes"

    const-string v10, "While I intend to make larger changes in a future update, I\'ve decided to do some targeted improvements to class armors now to make the abilities more usable:\n_-_ Class armor now has a charge percentage which builds at a rate of 50% per level, each ability uses 35% charge.\n_-_ Stun from heroic leap increased to 5 turns from 3.\n_-_ Molten earth now roots for 5 turns, up from 3, and deals a burst of immediate damage.\n_-_ Smoke bomb now stealths the rogue for 10 turns and blinds for 5 turns, up from 2, but only blinds enemies adjacent to the rogue\'s old location.\n\nWeapon/armor spawns have been adjusted, primarily to remove rare low tier item drops in the lategame:\n_-_ Tier 2 items no longer spawn in caves+\n_-_ Tier 3 items no longer spawn in demon halls\n_-_ Tier 4 items are slightly more common in caves, slightly less common in city\n_-_ Tier 5 items are notably more common in city, slightly more common in demon halls"

    .line 153
    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 156
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 157
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 158
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;-><init>()V

    .line 159
    invoke-direct {v6}, Lcom/watabou/noosa/Image;-><init>()V

    .line 160
    invoke-virtual {v6, v7}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const-string v7, "AI Tweaks"

    const-string v10, "Improvements have been made to hero, ally, and enemy AI:\n\n_-_ Wandering characters are now less likely to repeatedly block eachother in hallways.\n\n_-_ Characters can now approach their enemy even if the path to them is blocked.\n\n_-_ Characters are now more willing to switch targets if the path to their current target is blocked.\n\n_-_ Fleeing enemies are now more willing to run around the hero to retreat.\n\n_-_ The hero is now interrupted if their path becomes obstructed by an ally."

    .line 161
    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 164
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 165
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 166
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LIBGDX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v7, "LibGDX Desktop Functionality"

    const-string v10, "The desktop version of the game is now running through the same codebase as the Android version!\n\nMoving forward the desktop version of the game will be at feature parity with the Android version, which includes translations, access to betas, and release timings!\n\nCurrently all features from the old desktop codebase have been re-implemented in this version:\n_-_ Keyboard support, including movement and keybindings\n_-_ Mouse support, including scroll to zoom\n_-_ Full window management support, including fullscreen\n_-_ Update notifier (also now appears for android users)\n\nThe following additional features have also been added:\n_-_ Support for all languages, including asian scripts\n_-_ Support for smooth font (droid sans) on all languages\n_-_ A crash popup, which includes debug info"

    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {v3, v4, v11, v11}, La/a/a/a/a;->a(Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;FF)V

    goto :goto_0

    .line 170
    :cond_0
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SCROLL_TIWAZ:I

    invoke-direct {v6, v7, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v7, "Update Notification"

    const-string v10, "A little blinking button will now appear in the bottom-left of the title screen if an update is available for the game. \n\nThe Google Play version of the game uses Google\'s in-app updates library, and will seamlessly update the game through Google Play if the user accepts the prompt.\n\nOther versions of the game will grab update info from Github, and will direct the player to the latest releases page to download the update.\n\nNote that on Android, both updaters require Android 5.0+ to work correctly. If your device isn\'t compatible the notification simply won\'t appear."

    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {v3, v4, v11, v11}, La/a/a/a/a;->a(Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;FF)V

    .line 173
    :goto_0
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "_-_ The game now flashes red when the hero is badly hurt.\n\n_-_ Imp now assigns monks or golems based on depth.\n_-_ Number of monks/golems required reduced to 5/4 from 8/6.\n\n_-_ Torch light duration reduced to 250 turns from 300.\n_-_ Each demon halls floor now contains 2 torches, up from 1.\n\n_-_ The velvet pouch now stores goo blobs and metal shards.\n_-_ Items will now go into the main inventory if a bag is full.\n\n_-_ Shops can now stock more exotic weapons.\n_-_ Improved logic for which bag a shop stocks.\n\n_-_ Upgrading a stack of missile weapons now resets the durability of the stack\n_-_ Brewing a potion with 3 of the same seed now identifies it.\n_-_ Skeletal remains now always spawn a wraith if a cursed item spawned within them."

    invoke-direct {v4, v6, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 176
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 177
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 178
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "_-_ Dried rose desc now includes ghost\'s weapon and armor.\n_-_ Wand of Transfusion desc now includes damage/healing numbers.\n_-_ Beneficial darts now mention that they don\'t harm allies.\n\n_-_ Thrown potions of purity now cleanse Tengu\'s smoke bomb and fire wave effects.\n_-_ Wand of blast wave and force cube AOEs no longer trigger Tengu\'s traps.\n\n_-_ Ankhs are now blessed when thrown into a well of healing.\n_-_ Items are now uncursed when thrown into a well of healing.\n\n_-_ Improved the story text for the caves, city, and halls.\n_-_ Added some hint text to snakes for new players.\n\n_-_ Improved vfx for falling enemies and items.\n_-_ The settings menu and game options have been streamlined slightly.\n\n_-_ Updated translations and translator credits"

    invoke-direct {v4, v6, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 181
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 182
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 183
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    const/16 v7, 0x90

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v12, 0x10

    const/16 v17, 0x90

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x10

    const-string v16, "spinner.png"

    move-object v15, v6

    invoke-direct/range {v15 .. v20}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v1, v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "Fixed:\n_-_ Rare freeze bugs when enemies make ranged attacks\n_-_ Loading screens very rarely freezing\n_-_ Various bugs in the new Tengu fight\n_-_ Unstable spellbook not casting spells if the game was closed while using it\n_-_ Shurikens sometimes not attacking instantly even after the hero moved\n_-_ Items spawning on the same tile as an enemy spawn\n_-_ Unidentified alchemists toolkit being usable in alchemy\n_-_ Storm clouds spreading faster than intended\n_-_ Chests opening when they are teleported\n_-_ Teleportation rarely placing the hero onto hidden traps\n_-_ Viscocity glyph not considering all armor sources when applying deferred damage\n_-_ Wand of warding bolts not pushing on terrain\n_-_ Wand of prismatic light rarely revealing areas it shouldn\'t\n_-_ Upgraded wands not spawning fully charged"

    invoke-direct {v4, v6, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 186
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 187
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 188
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    const-string v16, "spinner.png"

    move-object v15, v6

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v14, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Fixed:\n_-_ Invisibility not applying if the hero is also shadowmelded\n_-_ Landscape/portrait modes working incorrectly in rare cases\n_-_ Inventory incorrectly being seen as full when upgrading with the blacksmith\n_-_ Odd interactions between the blacksmith and curse infusion\n_-_ Force cubes not pressing on every tile in their AOE\n_-_ Force cubes affecting an AOE when thrown onto chasms\n_-_ Rankings rarely not being recorded if hero is killed by a statue\n_-_ Caustic slimes attacking slower than intended\n_-_ Newborn elementals disappearing when unblessed ankhs are used\n_-_ Hero being able to swap places with allies when movement is restricted\n_-_ Some allies being corruptable when they shouldn\'t be\n_-_ Piranhas playing no death animation if they die on land\n_-_ Many rare crash bugs\n_-_ Many minor audio and visual bugs"

    invoke-direct {v4, v6, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 191
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 192
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 193
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "buffs"

    invoke-static {v1, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const v4, 0xff00

    .line 194
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 195
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;-><init>()V

    const-string v7, "This is actually a bugfix, but is so significant that I\'m listing it as a buff for clarity:\n\n_-_ Fixed Wand of corruption acting as if it were one level weaker than it was in some cases.\n\n_-_ Doubled corruption resistance reduction from debuffs, as it was 50% weaker than intended. It is now as strong as listed in 0.7.5 changelog (50% for major debuffs, 25% for minor)\n\nAdditionally, corruption is getting access to two of the new debuffs added in 0.8.0: _Hex,_ and _Weakness._"

    invoke-direct {v4, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 197
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 199
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 200
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 201
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    const/16 v17, 0x50

    const/16 v18, 0x20

    const-string v16, "large_buffs.png"

    move-object v15, v6

    invoke-direct/range {v15 .. v20}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v7, "Bless changes"

    const-string v9, "Accuracy and evasion bonuses from blessed buff increased to 25% from 20%."

    invoke-direct {v4, v6, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 204
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 205
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 206
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;-><init>()V

    const-string v7, "The Evasion armor augment has been underperforming verses the defence augment, so I\'m adjusting the stat tradeoff they provide:\n_-_ Evasion now grants 33% more evasion\n_-_ Defense now costs 33% more evasion"

    invoke-direct {v4, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 207
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 209
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 210
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 211
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/watabou/noosa/Image;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/NecromancerSprite;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/NecromancerSprite;-><init>()V

    .line 212
    invoke-direct {v6}, Lcom/watabou/noosa/Image;-><init>()V

    .line 213
    invoke-virtual {v6, v7}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const-string v7, "Necromancers"

    const-string v9, "To better balance overall prison difficulty, I\'ve strengthened necromancers slightly:\n_-_ Necromancer evasion increased by ~18%"

    .line 214
    invoke-direct {v4, v6, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 217
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 218
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 219
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "nerfs"

    invoke-static {v1, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/high16 v1, 0xff0000

    .line 220
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 221
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;-><init>()V

    const-string v5, "The Defense armor augment has been overperforming verses the evasion augment, so I\'m adjusting the stat tradeoff they provide:\n_-_ Defense now costs 33% more evasion\n_-_ Evasion now grants 33% more evasion"

    invoke-direct {v1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 223
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v3, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 225
    invoke-virtual {v1, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 226
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 227
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/watabou/noosa/Image;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GuardSprite;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GuardSprite;-><init>()V

    .line 228
    invoke-direct {v4}, Lcom/watabou/noosa/Image;-><init>()V

    .line 229
    invoke-virtual {v4, v5}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const-string v5, "Enemy Nerfs"

    const-string v6, "To better balance overall prison difficulty, I\'ve weakened prison guards slightly:\n_-_ Prison guard accuracy reduced by ~15%\n_-_ Prison guard armor reduced by ~12%\n\nSome unnecessary enemy debuff resistances have been removed:\n_-_ Several enemies are no longer immune to terror or amok\n_-_ Evil eyes and wraiths no longer resist grim\n_-_ Golems and succubi are no longer immune to sleep\n_-_ Bees are no longer immune to poison"

    .line 230
    invoke-direct {v1, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {v3, v1, v11, v11}, La/a/a/a/a;->a(Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;FF)V

    goto/16 :goto_1

    .line 233
    :cond_1
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.5.0"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 234
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v6, 0xffff44

    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 235
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v7, "_-_ Released February 8th, 2017\n_-_ 233 days after Shattered v0.4.0\n_-_ 115 days after Shattered v0.4.3\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v6, v10, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 239
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 240
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 241
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v7, "New Dungeon Visual Style!"

    const-string v13, "_-_ Walls and some terrain now have depth\n_-_ Characters & items are raised & cast shadows\n_-_ Added a visible tile grid in the settings menu"

    invoke-direct {v4, v6, v7, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 244
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 245
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 246
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Quarterstaff;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Quarterstaff;-><init>()V

    invoke-direct {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v7, "Equipment Balance Changes"

    const-string v13, "_-_ Quarterstaff armor bonus increased from 2 to 3\n\n_-_ Wand of Frost damage against chilled enemies reduced from -7.5% per turn of chill to -10%\n\n_-_ Wand of Transfusion self-damage reduced from 15% max hp to 10% max hp per zap\n\n_-_ Dried Rose charges 20% faster and the ghost hero is stronger, especially at low levels"

    invoke-direct {v4, v6, v7, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 249
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 250
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 251
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Stylus;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Stylus;-><init>()V

    invoke-direct {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v7, "Glyph Balance Changes"

    const-string v13, "_-_ Glyph of Entanglement activates less often but grants significantly more herbal armor\n\n_-_ Glyph of Stone armor bonus reduced from 2+level to 0+level\n\n_-_ Glyph of Antimagic magical damage resist reduced from 50% of armor to 33% of armor\n\n_-_ Glyph of Viscosity damage rate increased from 10% of deferred damage to 15%"

    invoke-direct {v4, v6, v7, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 254
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 255
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 256
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    const-string v13, "language"

    invoke-static {v1, v13, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "_-_ Added new Language: Esperanto\n_-_ Added new Language: Indonesian\n"

    invoke-direct {v4, v6, v7, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 259
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 260
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 261
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.4.X"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 262
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v6, 0xffff44

    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 263
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.4.3"

    invoke-direct {v3, v4, v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 265
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 266
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v7, "_-_ Released October 16th, 2016\n_-_ 37 days after Shattered v0.4.2\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v6, v10, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 270
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 271
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 272
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v7, "Technical Improvements"

    const-string v13, "_-_ Added rankings and hall of heroes sync via Google Play Games, for the Google Play version of Shattered.\n\n_-_ Added Power Saver mode in settings\n_-_ Download size reduced by ~25%\n_-_ Game now supports small screen devices\n_-_ Performance improvements\n_-_ Improved variety of level visuals"

    invoke-direct {v4, v6, v7, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 275
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 276
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 277
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->FLAIL:I

    const/4 v14, 0x0

    invoke-direct {v6, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v13, "Balance Changes"

    const-string v14, "_-_ Flail max damage increased by ~15%\n_-_ Wand of Frost damage reduction increased from 5% per turn of chill to 7.5%\n_-_ Ring of Furor speed bonus reduced by ~15% for slow weapons, ~0% for fast weapons\n_-_ Reduced sacrificial curse bleed by ~33%\n_-_ Reworked glyph of brimstone, now grants shielding instead of healing\n_-_ Reworked glyph of stone, now reduces speed in doorways\n_-_ Thrown potions now trigger traps and plants"

    invoke-direct {v4, v6, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 280
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 281
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 282
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.4.2"

    invoke-direct {v3, v4, v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 283
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v6, 0xffff44

    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 284
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v14, "_-_ Released September 9th, 2016\n_-_ 46 days after Shattered v0.4.1\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v6, v10, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 288
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 289
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 290
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v14, "_-_ Many general performance improvements\n_-_ Game now uses 2 CPU cores, up from 1\n_-_ Reduced hitching on many devices\n_-_ Framerate improvements for older devices\n_-_ Game size reduced by ~10%"

    invoke-direct {v4, v6, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 293
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 294
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 295
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Glaive;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Glaive;-><init>()V

    invoke-direct {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v7, "_-_ Spear and Glaive damage reduced\n_-_ Runic blade damage reduced\n_-_ Grim enchant now procs more often\n_-_ Glyph of stone adds more weight\n_-_ Glyph of potential procs less often\n_-_ Wand of Fireblast less dangerous to caster\n_-_ Wand of Pris. Light reveal area reduced\n_-_ Ring of Wealth slightly more effective\n_-_ Ring of Sharpshooting gives more accuracy"

    invoke-direct {v4, v6, v13, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 298
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 299
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 300
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.4.1"

    invoke-direct {v3, v4, v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 301
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v6, 0xffff44

    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 302
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v7, "_-_ Released July 25th, 2016\n_-_ 35 days after Shattered v0.4.0\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v6, v10, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 306
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 307
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 308
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/PlateArmor;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/PlateArmor;-><init>()V

    invoke-direct {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v7, "Item Changes pt.1"

    const-string v14, "Armor and Enemy Balance Changes:\n_-_ Armor now has a min damage block value\n_-_ Armor gains more blocking from upgrades\n_-_ Prison+ enemy damage increased\n_-_ Evil Eyes reworked\n_-_ Brimstone glyph healing reduced\n\nClass Balance Changes:\n_-_ Mage\'s Staff melee damage increased\n_-_ Mage\'s Staff can now preserve one upgrade\n_-_ Cloak of Shadows buffed at lower levels\n_-_ Some Battlemage effects changed\n\nWand Balance Changes:\n_-_ All wands damage adjusted/increased\n_-_ Upgraded wands appear slightly less often\n_-_ Wand of Lightning bonus damage reduced\n_-_ Wand of Fireblast uses fewer charges\n_-_ Wand of Venom damage increases over time\n_-_ Wand of Prismatic Light bonus damage reduced\n_-_ Corrupted enemies live longer & no longer attack eachother\n_-_ Wands in the holster now charge faster"

    invoke-direct {v4, v6, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 311
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 312
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 313
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/RunicBlade;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/RunicBlade;-><init>()V

    invoke-direct {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v7, "Item Changes pt.2"

    const-string v14, "Ring Balance Changes:\n_-_ Ring of Force weaker at 18+ strength, stronger otherwise\n_-_ Ring of Tenacity reduces more damage\n_-_ Ring of Wealth secret rewards adjusted\n_-_ Ring of Evasion now works consistently\n\nArtifact Balance Changes:\n_-_ Dried Rose charges faster, ghost HP up\n_-_ Horn of Plenty now charges on exp gain\n_-_ Master Thieves Armband levels faster\n_-_ Sandals of Nature level faster\n_-_ Hourglass uses fewer charges at a time\n_-_ Horn of Plenty adjusted, now stronger\n\nWeapon Balance Changes:\n_-_ Lucky enchant deals max dmg more often\n_-_ Dazzling enchant now cripples & blinds\n_-_ Flail now can\'t surprise attack, damage increased\n_-_ Extra reach weapons no longer penetrate\n_-_ Runic blade damage decreased"

    invoke-direct {v4, v6, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 316
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 317
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 318
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "_-_ Added a new journal button with key display\n_-_ Keys now exist in the journal, not inventory\n_-_ Improved donator menu button visuals\n_-_ Increased the efficiency of data storage\n_-_ Chasms now deal less damage, but bleed\n_-_ Many shop prices adjusted\n_-_ Pirahna rooms no longer give cursed gear"

    invoke-direct {v4, v6, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 321
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 322
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 323
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.4.0"

    invoke-direct {v3, v4, v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 324
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v6, 0xffff44

    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 325
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v7, "_-_ Released June 20th, 2016\n_-_ 391 days after Shattered v0.3.0\n_-_ 50 days after Shattered v0.3.5\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v6, v10, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 329
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 330
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 331
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Longsword;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Longsword;-><init>()V

    invoke-direct {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v7, "Equipment Overhaul!"

    const-string v14, "_-_ 13 new weapons, 12 rebalanced weapons\n\nEquipment Balance:\n_-_ Tier 2-4 weapons do more base damage\n_-_ All weapons gain more dmg from upgrades\n_-_ Upgrades now remove enchants less often\n_-_ Upgrades reduce str requirements less\n_-_ All armors require 1 more str\n_-_ Encumbered characters can\'t sneak attack\n\nDroprate Changes:\n_-_ Powerful equipment less common early\n_-_ +3 and +2 equipment less common\n_-_ Equipment curses more common\n_-_ Tier 1 equipment no longer drops\n_-_ Arcane styli slightly more common\n_-_ Better item drops on floors 22-24"

    invoke-direct {v4, v6, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 334
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 335
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 336
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Stylus;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Stylus;-><init>()V

    invoke-direct {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v7, "Curse, Enchant, & Glyph Overhaul!"

    const-string v14, "_-_ 3 new enchants, 10 rebalanced enchants\n_-_ 8 new glyphs, 5 rebalanced glyphs\n_-_ 12 new curse effects\n\nEquipment Curses:\n_-_ Curses now give negative effects\n_-_ Curses no longer give negative levels\n_-_ Upgrades now weaken curses\n_-_ Remove curse scrolls now affect 1 item"

    invoke-direct {v4, v6, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 339
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 340
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 341
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Class Balance:\n_-_ Huntress now starts with knuckleduster\n_-_ Assassin sneak bonus damage reduced\n_-_ Fixed a bug where berserker was immune when enraged\n_-_ Gladiator\'s clobber now inflicts vertigo, not stun\n\nEnemy Balance:\n_-_ Tengu damage increased\n_-_ Prison Guard health and DR increased\n\nMisc:\n_-_ Scrolls of upgrade no longer burn\n_-_ Potions of strength no longer freeze\n_-_ Translation updates\n_-_ Various bugfixes"

    invoke-direct {v4, v6, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 344
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 345
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 346
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.3.X"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 347
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v6, 0xffff44

    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 348
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.3.5"

    invoke-direct {v3, v4, v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 350
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 351
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v6, "_-_ Released May 1st, 2016\n_-_ 81 days after Shattered v0.3.4\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v10, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 355
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 356
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 357
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/4 v6, 0x0

    const/16 v17, 0xf

    const/16 v7, 0xc

    const/16 v16, 0x0

    const/16 v18, 0xc

    const/16 v20, 0xf

    const-string v15, "warrior.png"

    move-object v14, v5

    move/from16 v19, v20

    invoke-direct/range {v14 .. v19}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v14, "Warrior Rework!"

    const-string v15, "Warrior Rework:\n_-_ Starting STR down to 10, from 11\n_-_ Short sword dmg down to 1-10, from 1-12\n_-_ Short sword can no longer be reforged\n_-_ Now IDs potions of health, not STR\n_-_ Now starts with a unique seal for armor\n_-_ Seal grants shielding ontop of health\n_-_ Seal allows for one upgrade transfer"

    invoke-direct {v4, v5, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 360
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 361
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 362
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v17, 0x5a

    const-string v15, "warrior.png"

    move-object v14, v5

    move/from16 v16, v6

    move/from16 v18, v7

    invoke-direct/range {v14 .. v19}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v6, "Warrior Subclass Rework!"

    const-string v7, "Berserker Rework:\n_-_ Bonus damage now scales with lost HP, instead of a flat 50% at 50% hp\n_-_ Berserker can now endure through death for a short time, with caveats\n\nGladiator Rework:\n_-_ Combo no longer grants bonus damage\n_-_ Combo is now easier to stack\n_-_ Combo now unlocks special finisher moves"

    invoke-direct {v4, v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 365
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 366
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 367
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Balance Tweaks:\n_-_ Spears can now reach enemies 1 tile away\n_-_ Wand of Blast Wave now pushes bosses less\n\nMisc:\n_-_ Can now examine multiple things in one tile\n_-_ Pixelated font now available for cyrillic languages\n_-_ Added Hungarian language"

    invoke-direct {v4, v5, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 370
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 371
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 372
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.3.4"

    invoke-direct {v3, v4, v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 373
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 374
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v6, "_-_ Released February 10th, 2016\n_-_ 54 days after Shattered v0.3.3\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v10, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 378
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 379
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 380
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v6, "Translations!"

    const-string v7, "Shattered Pixel Dungeon now supports multiple languages, thanks to a new community translation project!\n\nThe Following languages are supported at release:\n_-_ English\n_-_ Russian\n_-_ Korean\n_-_ Chinese\n_-_ Portugese\n_-_ German\n_-_ French\n_-_ Italian\n_-_ Polish\n_-_ Spanish"

    invoke-direct {v4, v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 383
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 384
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 385
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Completely redesigned the text rendering system to support none-english characters\n\nNew text system renders using either the default system font, or the original pixelated game font. None-latin languages must use system font.\n\nBalance Changes:\n_-_ Hunger now builds ~10% slower\n_-_ Sad Ghost no longer gives tier 1 loot\n_-_ Sad Ghost gives tier 4/5 loot less often\n_-_ Burning now deals less damage at low HP\n_-_ Weakness no longer discharges wands\n_-_ Rockfall traps rebalanced"

    invoke-direct {v4, v5, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 388
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 389
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 390
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.3.3"

    invoke-direct {v3, v4, v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 391
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 392
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v6, "_-_ Released December 18th, 2015\n_-_ 44 days after Shattered v0.3.2\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v10, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 396
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 397
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 398
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v6, "Google Play Games"

    const-string v7, "Added support for Google Play Games in the Google Play version:\n\n- Badges can now sync across devices\n- Five Google Play Achievements added\n- Rankings sync will come in future\n\nShattered remains a 100% offline game if Google Play Games is not enabled"

    invoke-direct {v4, v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 401
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 402
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 403
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Gameplay Changes:\n- Tengu\'s maze is now different each time\n- Items no longer auto-pickup when enemies are near\n\nFixes:\n- Fixed several bugs with prison enemies\n- Fixed some landscape window size issues\n- Fixed other minor bugs\n\nMisc:\n- Added support for reverse landscape\n- Added a small holiday treat ;)\n- Thieves now disappear when they get away"

    invoke-direct {v4, v5, v7, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 406
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 407
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 408
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.3.2"

    invoke-direct {v3, v4, v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 409
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 410
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v6, "_-_ Released November 4th, 2015\n_-_ 79 days after Shattered v0.3.1\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v10, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 414
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 415
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 416
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v18, 0xe

    const/16 v26, 0x10

    const/16 v19, 0x10

    const-string v15, "tengu.png"

    move-object v14, v5

    move/from16 v17, v20

    invoke-direct/range {v14 .. v19}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v6, "Prison Rework"

    const-string v7, "_-_ Tengu boss fight completely redone\n_-_ Corpse dust quest overhauled\n_-_ Rotberry quest overhauled\n_-_ NEW elemental embers quest\n_-_ NEW prison mob: insane prison guards!\n_-_ Thieves can escape with a stolen item\n_-_ Gnoll shaman attack speed increased"

    invoke-direct {v4, v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 419
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 420
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 421
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->MASTERY:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v6, "_-_ Mastery Book now always at floor 10, even when unlocked\n_-_ Hunger damage now increases with hero level, starts lower\n\nSewers rebalance: \n_-_ Marsupial rat dmg and evasion reduced\n_-_ Gnoll scout accuracy reduced\n_-_ Sewer crabs less likely to spawn on floor 3, grant more exp\n_-_ Fly swarms rebalanced, moved to the sewers\n_-_ Great Crab HP reduced \n_-_ Goo fight rebalanced \n \nBase Class Changes: \n_-_ Mage\'s staff base damage increased \n_-_ Huntress now starts with 20 hp \n_-_ Huntress no longer heals more from dew \n_-_ Rogue\'s cloak of shadows now drains less while invisible\n \nSubclass Changes: \n_-_ Berserker now starts raging at 50% hp (up from 40%) \n_-_ Warden now heals 2 extra HP from dew \n_-_ Warlock completely overhauled"

    invoke-direct {v4, v5, v13, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 424
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 425
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 426
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "_-_ Visual improvements from 1.9.1 source\n_-_ Improved golden UI for donators\n_-_ Fixed \'white line\' graphical artifacts\n_-_ Floor locking now pauses all passive effects, not just hunger\n_-_ Cursed chains now only cripple, do not root\n_-_ Warping trap rebalanced, much less harsh\n_-_ Various other bugfixes"

    invoke-direct {v4, v5, v7, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 429
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 430
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 431
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.3.1"

    invoke-direct {v3, v4, v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 432
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 433
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v6, "_-_ Released August 17th, 2015\n_-_ 83 days after Shattered v0.3.0\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v10, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 437
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 438
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 439
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v23, 0x70

    const/16 v24, 0x60

    const/16 v6, 0x10

    const/16 v25, 0x10

    const-string v22, "terrain_features.png"

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v26}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v7, "Trap Overhaul"

    const-string v13, "_-_ Over 20 new traps + tweaks to existing ones\n_-_ Trap visuals overhauled\n_-_ Traps now get trickier deeper in the dungeon\n_-_ Trap room reworked to make use of new traps"

    invoke-direct {v4, v5, v7, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 442
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 443
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 444
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v19, 0xf

    const/16 v7, 0xf

    const-string v18, "menu_button.png"

    move-object/from16 v17, v5

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-direct/range {v17 .. v22}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v6, "Interface Improvements"

    const-string v13, "_-_ Adjusted display scaling\n_-_ Search and Examine merged into one button (double tap to search)\n_-_ New max of 4 Quickslots!\n_-_ Multiple toolbar modes for large display and landscape users\n_-_ Ability to flip toolbar and indicators (left-handed mode)\n_-_ Better settings menu\n_-_ Graphics settings are now accessible ingame\n_-_ More consistent text rendering\n_-_ Recent changes can now be viewed from the title screen\n_-_ Added a health bar for bosses"

    invoke-direct {v4, v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 447
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 448
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 449
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v6, 0x0

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v1, v9, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Balance changes:\n_-_ Ethereal chains now gain less charge the more charges they have\n_-_ Staff of regrowth grants more herbal healing\n_-_ Monks now disarm less randomly, but not less frequently\n_-_ Invisibility potion effect now lasts for 20 turns, up from 15\n\nQOL improvements:\n_-_ Quickslots now autotarget enemies\n_-_ Resting now works while hungry & at max HP\n_-_ Dew drops no longer collect when at full health with no dew vial\n_-_ Items now stay visible in the fog of war\n_-_ Added a visual hint to weak floor rooms\n_-_ Many bugfixes"

    invoke-direct {v4, v5, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 452
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 453
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 454
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.3.0"

    invoke-direct {v3, v4, v6, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 455
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 456
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v6, "_-_ Released May 26th, 2015\n_-_ 253 days after Shattered v0.2.0\n_-_ 92 days after Shattered v0.2.4\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v10, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 460
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 461
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 462
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/4 v15, 0x0

    const/16 v16, 0xf

    const/16 v17, 0xc

    const-string v14, "mage.png"

    move-object v13, v5

    move/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v6, "Mage Rework!"

    const-string v7, "_-_ No longer starts with knuckledusters or a wand\n_-_ Can no longer equip wands\n_-_ Now starts with a unique mages staff, empowered with magic missile to start.\n\n_-_ Battlemage reworked, staff now deals bonus effects when used as a melee weapon.\n\n_-_ Warlock reworked, gains more health and fullness from gaining exp, but food no longer restores hunger."

    invoke-direct {v4, v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 465
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 466
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 467
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_DISINTEGRATION:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v6, "Wand Rework!"

    const-string v7, "Removed Wands:\nFlock, Blink, Teleportation, Avalanche\n\nReworked Wands:\nMagic Missile, Lightning, Disintegration,\nFireblast (was Firebolt), Venom (was Poison),\nFrost (was Slowing), Corruption (was Amok),\nBlast Wave (was Telekinesis), Regrowth\n\nNew Wands:\nPrismatic Light, Transfusion\n\n_-_ Wand types are now known by default.\n_-_ Wands now each have unique sprites.\n_-_ Wands now cap at 10 charges instead of 9\n_-_ Wands now recharge faster the more charges are missing.\n_-_ Self-targeting with wands is no longer possible.\n_-_ Wand recharge effects now give charge over time.\n_-_ Wands can now be cursed!"

    invoke-direct {v4, v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 470
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 471
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 472
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v9, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "New Artifacts:\n_-_ Ethereal Chains (replaces wand of blink)\n_-_ Lloyd\'s Beacon (replaces wand of teleportation)\n\nMisc. Balance changes:\n_-_ Blessed Ankhs now revive at 1/4hp, but also grant initiative.\n_-_ Alchemist\'s Toolkit removed (will be reworked)\n_-_ Chalice of blood nerfed, now regens less hp at high levels.\n_-_ Cape of Thorns buffed, now absorbs all damage, but only deflects adjacent attacks.\n_-_ Sandals of nature adjusted, now give more seeds, less dew.\n_-_ Hunger no longer increases while fighting bosses.\n_-_ Floor 1 now spawns 10 rats, exactly enough to level up.\n_-_ Scrolls of recharging and mirror image now more common.\n_-_ Mimics are now less common, stronger, & give better loot.\n\nUI tweaks:\n_-_ New app icon!\n_-_ Shading added to main game interface\n_-_ Buffs now have descriptions, tap their icons!\n_-_ Visual indicator added for surprising enemies"

    invoke-direct {v4, v5, v1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 475
    invoke-virtual {v4, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 476
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 477
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->addAllChanges1(Ljava/util/ArrayList;)V

    .line 478
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v3, "v0.1.X"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 479
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v4, 0xffff44

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 480
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v3, "v0.1.1"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 482
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 483
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v4

    const-string v5, "_-_ Released August 15th, 2014\n_-_ 10 days after Shattered v0.1.0\n\nDev commentary will be added here in the future."

    invoke-direct {v3, v4, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 487
    invoke-virtual {v3, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 488
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 489
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;-><init>()V

    const-string v5, "Players who chance upon gardens or who get lucky while trampling grass may come across a new plant: the _Blandfruit._\n\nAs the name implies, the fruit from this plant is pretty unexceptional, and will barely do anything for you on its own. Perhaps there is some way to prepare the fruit with another ingredient..."

    invoke-direct {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 490
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 492
    invoke-virtual {v3, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 493
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 494
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;-><init>()V

    invoke-direct {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v5, "Revival Item Changes"

    const-string v6, "When the Dew Vial was initially added to Pixel Dungeon, its essentially free revive made ankhs pretty useless by comparison. To fix this, both items have been adjusted to combine to create a more powerful revive.\n\nDew Vial nerfed:\n_-_ Still grants a full heal at full charge, but grants less healing at partial charge.\n_-_ No longer revives the player if they die.\n\nAnkh buffed:\n_-_ Can now be blessed with a full dew vial, to gain the vial\'s old revive effect."

    invoke-direct {v3, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 497
    invoke-virtual {v3, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 498
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 499
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SCROLL_BERKANAN:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v5, "Misc Item Changes"

    const-string v6, "Sungrass buffed:\n_-_ Heal scaling now scales with max hp.\n\nScroll of Psionic Blast rebalanced:\n_-_ Now deals less self damage, and damage is more consistent.\n_-_ Duration of self stun/blind effect increased.\n\nScroll of lullaby reworked:\n_-_ No longer instantly sleeps enemies, now afflicts them with drowsy, which turns into magical sleep.\n_-_ Magically slept enemies will only wake up when attacked.\n_-_ Hero is also affected, and will be healed by magical sleep."

    invoke-direct {v3, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 502
    invoke-virtual {v3, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 503
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 504
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v3, "v0.1.0"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 505
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v4, 0xffff44

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 506
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v4

    const-string v5, "_-_ Released August 5th, 2014\n_-_ 69 days after Pixel Dungeon v1.7.1\n_-_ 9 days after v1.7.1 source release\n\nDev commentary will be added here in the future."

    invoke-direct {v3, v4, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 510
    invoke-virtual {v3, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 511
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 512
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SEED_EARTHROOT:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v5, "Seed Changes"

    const-string v6, "_-_ Blindweed buffed, now cripples as well as blinds.\n\n_-_ Sungrass nerfed, heal scales up over time, total heal reduced by combat.\n\n_-_ Earthroot nerfed, damage absorb down to 50% from 100%, total shield unchanged.\n\n_-_ Icecap buffed, freeze effect is now much stronger in water."

    invoke-direct {v3, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 515
    invoke-virtual {v3, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 516
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 517
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_SILVER:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v5, "Potion Changes"

    const-string v6, "_-_ Potion of Purity buffed, immunity duration increased to 10 turns from 5, clear effect radius increased.\n\n_-_ Potion of Frost buffed, freeze effect is now much stronger in water."

    invoke-direct {v3, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 520
    invoke-virtual {v3, v11, v11}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 521
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 522
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SCROLL_BERKANAN:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v5, "Scroll Changes"

    const-string v6, "_-_ Scroll of Psionic blast reworked, now rarer and much stronger, but deals damage to the hero.\n\n_-_ Scroll of Challenge renamed to Scroll of Rage, now amoks nearby enemies."

    invoke-direct {v3, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-static {v1, v3, v11, v11}, La/a/a/a/a;->a(Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;FF)V

    goto :goto_1

    .line 525
    :cond_2
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->addAllChanges(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 526
    :cond_3
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->addAllChanges1(Ljava/util/ArrayList;)V

    .line 527
    :goto_1
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$1;

    new-instance v3, Lcom/watabou/noosa/ui/Component;

    invoke-direct {v3}, Lcom/watabou/noosa/ui/Component;-><init>()V

    invoke-direct {v1, v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;Lcom/watabou/noosa/ui/Component;Ljava/util/ArrayList;)V

    .line 528
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 529
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 530
    invoke-virtual {v3}, Lcom/watabou/noosa/Group;->clear()V

    .line 531
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    .line 532
    iget-boolean v9, v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->major:Z

    if-eqz v9, :cond_4

    .line 533
    invoke-virtual {v8}, Lcom/watabou/noosa/NinePatch;->innerWidth()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v6, v4, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 534
    invoke-virtual {v3, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 535
    invoke-virtual {v7}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v4

    :goto_3
    move v6, v4

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    if-nez v5, :cond_5

    .line 536
    invoke-virtual {v8}, Lcom/watabou/noosa/NinePatch;->innerWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v7, v9, v4, v5, v9}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 537
    invoke-virtual {v3, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 538
    invoke-virtual {v7}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v6

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    .line 539
    invoke-virtual {v8}, Lcom/watabou/noosa/NinePatch;->innerWidth()F

    move-result v10

    div-float/2addr v10, v5

    invoke-virtual {v8}, Lcom/watabou/noosa/NinePatch;->innerWidth()F

    move-result v11

    div-float/2addr v11, v5

    invoke-virtual {v7, v10, v4, v11, v9}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 540
    invoke-virtual {v3, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 541
    invoke-virtual {v7}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_3

    :goto_4
    const/4 v5, 0x0

    move v4, v6

    goto :goto_2

    .line 542
    :cond_6
    invoke-virtual {v8}, Lcom/watabou/noosa/NinePatch;->innerWidth()F

    move-result v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 543
    iget v2, v8, Lcom/watabou/noosa/Visual;->x:F

    .line 544
    iget v3, v8, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 545
    iget v3, v8, Lcom/watabou/noosa/Visual;->y:F

    .line 546
    iget v4, v8, Lcom/watabou/noosa/NinePatch;->marginTop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    .line 547
    invoke-virtual {v8}, Lcom/watabou/noosa/NinePatch;->innerWidth()F

    move-result v5

    .line 548
    iget v6, v8, Lcom/watabou/noosa/Visual;->height:F

    iget v7, v8, Lcom/watabou/noosa/NinePatch;->marginTop:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, v8, Lcom/watabou/noosa/NinePatch;->marginBottom:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v6, v7

    .line 549
    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    const/4 v2, 0x0

    .line 550
    invoke-virtual {v1, v2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->scrollTo(FF)V

    .line 551
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$2;

    const-string v3, "v0.8"

    invoke-direct {v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;Ljava/lang/String;)V

    .line 552
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;->changesSelected:I

    if-nez v3, :cond_7

    .line 553
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 554
    :cond_7
    iget v3, v1, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v5, 0x40800000    # 4.0f

    sub-float/2addr v3, v5

    .line 555
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v1, v5

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v1, v5, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 556
    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 557
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$3;

    const-string v3, "v0.7"

    invoke-direct {v1, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;Ljava/lang/String;)V

    .line 558
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;->changesSelected:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_8

    .line 559
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v7, 0xffff44

    invoke-virtual {v3, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 560
    :cond_8
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v3

    add-float/2addr v3, v4

    .line 561
    iget v7, v2, Lcom/watabou/noosa/ui/Component;->y:F

    .line 562
    invoke-virtual {v1, v3, v7, v5, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 563
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 564
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$4;

    const-string v7, "v0.6"

    invoke-direct {v3, v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;Ljava/lang/String;)V

    .line 565
    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;->changesSelected:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 566
    iget-object v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v8, 0xffff44

    invoke-virtual {v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 567
    :cond_9
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v1

    add-float/2addr v1, v4

    .line 568
    iget v7, v2, Lcom/watabou/noosa/ui/Component;->y:F

    .line 569
    invoke-virtual {v3, v1, v7, v5, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 570
    invoke-virtual {v0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 571
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$5;

    const-string v5, "v0.5-0.1"

    invoke-direct {v1, v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$5;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;Ljava/lang/String;)V

    .line 572
    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;->changesSelected:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    .line 573
    iget-object v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v7, 0xffff44

    invoke-virtual {v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 574
    :cond_a
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v3

    add-float/2addr v3, v4

    .line 575
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v4, 0x42280000    # 42.0f

    .line 576
    invoke-virtual {v1, v3, v2, v4, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 577
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 578
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;-><init>()V

    .line 579
    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v3, v2, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v3, v3

    iget v2, v2, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 580
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 581
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
