.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;
.super Ljava/lang/Object;
.source "v0_6_X_Changes.java"


# static fields
.field public static falseArray:[Z


# direct methods
.method public static addAllChanges(Ljava/util/ArrayList;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "v0.6.5"

    invoke-direct {v2, v5, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "new"

    invoke-static {v1, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v2, v6, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 5
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v9, "Developer Commentary"

    const-string v10, "_-_ Released May 3rd, 2018\n_-_ 32 days after Shattered v0.6.4\n\nDev commentary will be added here in the future."

    invoke-direct {v5, v6, v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v6, 0x41800000    # 16.0f

    .line 10
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 11
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 12
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;-><init>()V

    const-string v11, "The weightstone is now the runestone of augmentation!\n\nUsability on weapons unchanged, can still be used to enhance either speed or damage at the cost of the other.\n\nCan now be used on armor! Armor can be modified to enhance either defense or evasion, at the cost of the other.\n\nEvery shop now stocks a runestone of augmentation and an ankh, instead of one or the other."

    invoke-direct {v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 13
    iget-object v10, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 16
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 17
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_CLOTH:I

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Bulk;

    .line 18
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Bulk;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    .line 19
    invoke-direct {v10, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v11, "New Curses"

    const-string v12, "Added 4 new curses:\n\n_-_ Friendly curse makes weapons sometimes charm both you and the enemy.\n_-_ Elastic curse lets weapons apply knockback, but reduces damage to 0.\n\n_-_ Bulk curse makes armor large, slowing movement through doorways.\n_-_ Overgrowth curse causes random plant effects when you are struck."

    invoke-direct {v5, v10, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v10, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 23
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 24
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->CHAMPION_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->image(I)Lcom/watabou/noosa/Image;

    move-result-object v10

    const-string v11, "New and Changed Badges"

    const-string v12, "_-_ Added badges for winning with 3 challenges at once and 6 challenges at once.\n\n_-_ \'Death by glyph\' badge is now \'death by deferred damage\'.\n\n_-_ Removed rare monster slayer badge."

    invoke-direct {v5, v10, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v10, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 27
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 28
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 29
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v15, Lcom/watabou/noosa/Image;

    const/4 v12, 0x0

    const/16 v13, 0x5a

    const/16 v14, 0xc

    const/16 v16, 0xf

    const-string v11, "warrior.png"

    move-object v10, v15

    move-object v8, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v10, "Berserker"

    const-string v11, "Even with recent nerfs the berserker is still much stronger than other subclasses. Rather than continually nerfing his existing mechanics, which makes the subclass unfun, I have instead opted to give him a small rework.\n\nThese changes focus on giving the berserker some of his old power back, but making it more difficult to access that power.\n\n_-_ Rage is built by taking physical damage\n_-_ Rage fades over time, lasts longer at low HP\n_-_ Rage builds faster with better armor\n_-_ Rage grants bonus damage, max of +50%\n_-_ Berserker now needs full rage to berserk\n_-_ Berserking no longer reduces max hp\n_-_ Berserk bonus shielding doubled\n_-_ Berserk bonus damage reduced to +50%\n_-_ Removed exhaustion damage penalty\n_-_ Berserker can\'t gain rage while recovering"

    invoke-direct {v5, v8, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 32
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 33
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 34
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v8, "changes"

    invoke-static {v1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-direct {v2, v5, v4, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 35
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v12, 0xff8800

    invoke-virtual {v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STYLUS:I

    invoke-direct {v12, v13, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v11, "Glyph Changes"

    const-string v13, "Glyphs were originally designed with the intention that taking no glyph should be a valid option. Now with augmenting armor, glyphs can be more about added bonuses, somewhat like enchantments. Several glyphs have been adjusted:\n\n_-_ Entanglement now only roots if you stand still.\n\n_-_ Potential no longer self-damages and grants charge more consistently.\n\n_-_ Viscocity now always defers some damage, instead of sometimes deferring all damage.\n\n_-_ Stone reworked. Now sets evasion to 0 and grants armor in proportion to evasion.\n\n_-_ Swiftness reworked. Now grants movement speed when no enemies are near.\n\n_-_ Viscocity is now a common glyph, Stone is now uncommon."

    invoke-direct {v5, v12, v11, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v11, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 40
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 41
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 42
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    const-string v13, "misc"

    invoke-static {v1, v13, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "_-_ All bags now have 20 spaces. Previously only the default bag had 20, and the others had 12.\n\n_-_ Updated the sprites for runestones and throwing stones\n\n_-_ Loading screen transitions are now faster in many cases\n\n_-_ Improved the layout of translator credits in landscape"

    invoke-direct {v5, v11, v12, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v11, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 45
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 46
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 47
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v11, Lcom/watabou/noosa/Image;

    const/16 v16, 0x90

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x10

    const-string v15, "spinner.png"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    new-array v12, v4, [Ljava/lang/Object;

    const-string v14, "bugfixes"

    invoke-static {v1, v14, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "Fixed:\n_-_ Various rare crash bugs\n_-_ Antimagic applying to elemental damage\n_-_ \'Happy end\' badge not appearing in rankings\n_-_ \'Death from falling\' badge not triggering\n_-_ Hero rarely appearing alive when dead\n_-_ Sungrass not interrupting resting at full hp\n_-_ Timekeeper\'s hourglass unusable at 1 charge\n_-_ Artifacts rarely appearing when blocked by a challenge\n_-_ Hero spending a turn before actually opening a lock\n_-_ Specific cases where an invisible hero would not surprise attack\n_-_ Shields granting full defense when hero does not have enough strength\n_-_ Piranha incorrectly being affect by vertigo\n_-_ Ambitious imp spawning on top of traps\n_-_ Enemies spawning faster than intended in specific cases"

    invoke-direct {v5, v11, v12, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v11, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 50
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 51
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 52
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v11

    new-array v4, v4, [Ljava/lang/Object;

    const-string v12, "language"

    invoke-static {v1, v12, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "Updated Translations"

    invoke-direct {v5, v11, v4, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 55
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 56
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 57
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "buffs"

    invoke-static {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-direct {v2, v5, v4, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 58
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff00

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SWORD:I

    new-instance v16, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky;

    move-object/from16 v17, v10

    .line 61
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky;->GREEN:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    .line 62
    invoke-direct {v5, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "Lucky Enchantment"

    const-string v11, "The Lucky enchant is a nice overall DPS increase, but comes at the cost of consistency. The problem is that with a bit of bad luck it\'s possible to do 0x damage many times in a row.\n\nLucky has been adjusted to reign in the extremes of bad luck, and to give a little more strategy to using it.\n\n_-_ Base chance to deal 2x damage reduced to 50% from 60%\n_-_ Each time 0x damage is dealt, the next hit will be much more likely to deal 2x damage"

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 65
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 66
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 67
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/4 v10, 0x0

    const/16 v21, 0x5a

    const/16 v11, 0xc

    const/16 v16, 0xf

    const-string v19, "mage.png"

    move-object/from16 v18, v5

    move/from16 v20, v10

    move/from16 v22, v11

    move/from16 v23, v16

    invoke-direct/range {v18 .. v23}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v11, "Warlock"

    const-string v10, "Soul mark chance changed. Now has a 10% chance to activate per wand level, stacking multiplicatively, with a base of 10% at +0.\ne.g. +0 is 10%, +1 is 19%, +2 is 27%, etc.\n\nPrevious soul mark chance was 9% at base plus 6% per level, stacking linearly.\n\nThis substantially increases soul mark chance at wand levels +1 to +5"

    invoke-direct {v4, v5, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 70
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 71
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 72
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v21, 0xf

    const-string v19, "huntress.png"

    move-object/from16 v18, v5

    const/4 v10, 0x0

    move/from16 v20, v10

    const/16 v10, 0xc

    move/from16 v22, v10

    invoke-direct/range {v18 .. v23}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v10, "Huntress"

    move-object/from16 v16, v11

    const-string v11, "Huntress ranged weapon durability boost now stacks with magical holster durability boost, for a total of 180% durability."

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 75
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 76
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 77
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v11, "nerfs"

    invoke-static {v1, v11, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v10

    const/4 v10, 0x0

    invoke-direct {v2, v5, v4, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 78
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v5, 0xff0000

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v10, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SHORTSWORD:I

    new-instance v19, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Wayward;

    move-object/from16 v20, v11

    .line 81
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Wayward;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    .line 82
    invoke-direct {v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "Wayward curse"

    const-string v11, "Wayward\'s accuracy penalty was very extreme, often making it impossible to win fights without doors. Wayward should punish non-guaranteed attacks, but this extent of this has been lessened.\n\n_-_ Reduced wayward accuracy penalty by 50%"

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 85
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 86
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 87
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xc

    const/16 v26, 0xf

    const-string v22, "skeleton.png"

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v26}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v10, "Skeletons"

    const-string v11, "Skeletons have been adjusted to be more counterable with armor, and to give less inventory-clogging loot.\n\n_-_ Bone explosion damage up to 6-12 from 2-10\n_-_ Armor is now 2x effective against bone explosion, up from 0.5x\n\n_-_ Loot drop chance reduced to 1/8, from 1/5"

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 90
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 91
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 92
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v10, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->KIT:I

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "Rogue Garb and Huntress Cloak"

    const-string v11, "Eventually I want to totally overhaul class armors. In the meantime though, two of the armors are disproportionately powerful with mind vision, and need to be adjusted:\n\n_-_ Rogue\'s smoke bomb now has a max range of 8 and does not go through walls\n\n_-_ Huntress\'s spectral blades now have a max range of 12"

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 95
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 96
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 97
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.6.4"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 98
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v1, v7, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v2, v10, v4, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 101
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v10, "_-_ Released April 1st, 2018\n_-_ 46 days after Shattered v0.6.3\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 106
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 107
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 108
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->CHALLENGE_ON:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v10, "Challenges"

    const-string v11, "Challenges have received several major changes, with the goal of making them more fair and interesting.\n\n_-_ Challenges now have descriptions\n\n_-_ On diet now provides small rations, rather than removing all food\n_-_ Cloth armor is now allowed on faith is my armor\n_-_ Pharmacophobia is unchanged\n_-_ Barren land now allows seeds to drop, but they cannot be planted\n_-_ Swarm intelligence now draws nearby enemies, not all enemies\n_-_ Into darkness now limits light more harshly, but provides torches\n_-_ Forbidden runes now removes 50% of upgrade scrolls, and no other scrolls"

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 111
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 112
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 113
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->INFO:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v10, "Start game UI"

    const-string v11, "The interface for starting and loading a game has been completely overhauled!\n\n_-_ Game now supports 4 save slots of any hero class, rather than 1 slot per class\n_-_ Hero select and challenge select are now more streamlined and informative\n_-_ Hero select is now a window, offering more flexibility of where games can be started\n_-_ More details are now shown for games in progress before they are loaded"

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 116
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 117
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 118
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v10, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CROSSBOW:I

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "New Weapons"

    const-string v11, "Three new weapons have been added!\n\nThrowing spears are a basic tier 3 missile weapon, fishing spears have been reduced to tier 2. Tiers 2-5 now each have a basic missile weapon.\n\nThe crossbow is a tier 4 melee weapon which enhances darts! You\'ll do less damage up-front, but thrown darts will pack a punch!\n\nThe gauntlet is a tier 5 fast melee weapon, similar to the sai. Excellent for chaining combos or enchantments."

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 121
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 122
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 123
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-direct {v2, v5, v4, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 124
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff8800

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 125
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->HOLSTER:I

    invoke-direct {v5, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "Inventory changes"

    const-string v11, "Since the ranged weapon improvements in 0.6.3, inventory space has become a bit too congested. Rather than make a small change that only helps the issue for a few more updates, I have decided to make a larger-scale adjustment to available inventory space:\n\n_-_ The wand holster is now the magical holster, and can store missile weapons as well as wands.\n\n_-_ The seed pouch is now the velvet pouch, and can store runestones as well as seeds.\n\n_-_ Every hero now starts the game with an extra container."

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 129
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 130
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 131
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v13, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "_-_ It is now possible to back up game data using ADB backup on android 4.0+ and android auto-backup on android 6.0+. Runs in progress are not backed up to prevent cheating.\n\n_-_ Firebloom plants will no longer appear in garden rooms. Accidentally running into them is massively more harmful than any other plant.\n\n_-_ Mage and Warrior tutorial functionality has been removed, as more players found it confusing than helpful.\n\n_-_ Added a new visual effect to the loading screen\n\n_-_ Piranha treasure rooms now have a one tile wide buffer\n\n_-_ Bags are now unsellable\n\n_-_ The dwarf king is now immune to blindness\n\n_-_ Made adjustments to sending gameplay data. Data use should be slightly reduced."

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 134
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 135
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 136
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v23, 0x90

    const/16 v25, 0x10

    const/16 v26, 0x10

    const-string v22, "spinner.png"

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v26}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v14, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Fixed:\n_-_ Crashes involving corrupted mimics\n_-_ Various rare crash bugs\n_-_ Various minor visual bugs\n_-_ Skeletons exploding when falling in chasms\n_-_ Thrown weapons lost when used on sheep\n_-_ Warden gaining benefits from rotberry bush\n_-_ Rare cases where music wouldn\'t play\n_-_ Unstable enchant not being able to activate venom"

    invoke-direct {v4, v5, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 139
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 140
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 141
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v1, v12, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 144
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 145
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 146
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v1, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 147
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff00

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 148
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;-><init>()V

    const-string v10, "The timekeeper\'s hourglass has been adjusted to cap at 10 charges, instead of 20, and to have a bit more power without upgrades:\n\n_-_ Number of charges halved\n_-_ 2x freeze duration per charge\n_-_ 5x stasis duration per charge\n_-_ Overall recharge speed increased at +0, unchanged at +10"

    invoke-direct {v4, v5, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 150
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 152
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 153
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 154
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;-><init>()V

    const-string v11, "The talisman of foresight now builds power for scrying slightly faster\n\n_-_ Charge speed increased by 20% at +0, scaling to 50% increased at +10\n_-_ Charge gain when discovering traps unchanged"

    invoke-direct {v4, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 155
    iget-object v10, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 157
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 158
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 159
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v10, v20

    invoke-static {v1, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-direct {v2, v5, v4, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 160
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v5, 0xff0000

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 161
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v21, 0x40

    const/16 v22, 0x0

    const/16 v27, 0x10

    const/16 v28, 0x10

    const-string v20, "large_buffs.png"

    move-object/from16 v19, v5

    move/from16 v23, v27

    move/from16 v24, v28

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v11, "Paralysis changes"

    const-string v15, "Paralysis is an extremely powerful debuff, and its ability to completely immobilize the player or an enemy while they are killed needs to be adjusted.\n\nChance to resist paralysis is now based on all recent damage taken while paralyzed, instead of each specific instance of damage separately.\n\nThis means that after taking around half current HP in damage, breaking from paralysis becomes very likely, and immediately re-applying paralysis will not reset this resist chance."

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 165
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 166
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 167
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v25, 0x30

    const/16 v26, 0x30

    const-string v24, "tiles_sewers.png"

    move-object/from16 v23, v5

    invoke-direct/range {v23 .. v28}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v11, "Chasm changes"

    const-string v15, "Dropping enemies into chasms is a very fun way to deal with enemies, but killing an enemy instantly and getting almost the full reward is simply too strong. This change should keep killing via chasms fun and useful, without it being as strong.\n\n_-_ Enemies killed via chasms now only award 50% exp"

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 170
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 171
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 172
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SEED_SUNGRASS:I

    const/4 v15, 0x0

    invoke-direct {v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v11, "Seed adjustments"

    const-string v15, "Sungrass is almost as effective as a potion of healing when used properly, which is extremely strong for a seed. I am increasing the time it takes to heal, so that hunger and combat while waiting can add some cost to the otherwise very powerful healing sungrass provides.\n\n_-_ Sungrass now grants healing significantly more slowly, scaling to ~40% speed at high levels\n_-_ Taking damage no longer reduces sungrass healing\n_-_ Sungrass healing no longer dissapears at full HP\n\nEarthroot is also problematic, as its 50% damage resist makes it an extremely potent tool against bosses, yet not so useful against regular enemies. My hope is that this change levels its power out over both situations.\n\n_-_ Earthroot now blocks up to a certain amount of damage, based on depth, rather than 50% damage"

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 175
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 176
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 177
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_CRIMSON:I

    const/4 v15, 0x0

    invoke-direct {v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;-><init>()V

    .line 178
    iget-object v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v15, "Heal potion drops have had their RNG bounded in shattered for a long time, but this bound was always fairly lax. This meant that people who wanted to slowly farm for potions could still amass large numbers of them. I have decided to reign this in more harshly.\n\n_-_ Health potion drops now lower in probability more quickly after potions have already been dropped from a given enemy type\n\nThis change should not seriously affect the average player, but does make hoarding health potions much less feasible."

    .line 179
    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 182
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 183
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 184
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.6.3"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 185
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 186
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v1, v7, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    invoke-direct {v2, v11, v4, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 188
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 189
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v11, "_-_ Released February 14th, 2018\n_-_ 113 days after Shattered v0.6.2\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 193
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 194
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 195
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->TRIDENT:I

    invoke-direct {v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v11, "Ranged Weapons Overhaul!"

    const-string v15, "Ranged weapons have been completely overhauled!\n\n_-_ Quantity of ranged weapons decreased, however most ranged weapons now last for several uses before breaking.\n\n_-_ Ranged weapon effectiveness increased significantly.\n\n_-_ Ranged weapons are now dropped in more situations, and do not replace melee weapons.\n\n_-_ Existing ranged weapons reworked, 5 new ranged weapons added.\n\n_-_ Warrior now starts with throwing stones, rogue starts with throwing knives"

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 198
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 199
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 200
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v21, 0x0

    const/16 v22, 0xf

    const/16 v23, 0xc

    const/16 v24, 0xf

    const-string v20, "huntress.png"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v11, "Huntress adjusted due to ranged weapon changes (note that this is not a full class rework):\n\n_-_ Huntress no longer has a chance to reclaim a single ranged weapon.\n\n_-_ Missile weapons now have 50% greater durability when used by the huntress.\n\n_-_ Boomerang dmg increased to 1-6 from 1-5\n_-_ Boomerang str req reduced to 9 from 10\n_-_ Knuckleduster dmg reduced to 1-5 from 1-6"

    move-object/from16 v15, v18

    invoke-direct {v4, v5, v15, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 203
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 204
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 205
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CHILLING_DART:I

    const/4 v15, 0x0

    invoke-direct {v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v11, "Expanded Alchemy"

    const-string v15, "It is now possible to use alchemy to tip darts!\n\n_-_ Every seed (except blandfruit) can now be combined with two darts to make two tipped darts.\n\n_-_ Tipped dart effects are similar to their potion/seed counterparts.\n\n_-_ Curare darts are now paralytic darts, and paralyze for 5 turns, up from 3\n\n_-_ Alchemy interface now features a recipes button to show you what you can create."

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 208
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 209
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 210
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_TOPAZ:I

    const/4 v15, 0x0

    invoke-direct {v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfSharpshooting;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v18, v9

    const-string v9, "name"

    invoke-static {v11, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "Ring of Sharpshooting overhauled\n\n_-_ No longer grants bonus accuracy\n\n_-_ Now increases ranged weapon durability, instead of giving a chance to not consume them\n\n_-_ Now increases ranged weapon damage, scaling based on the weapon\'s initial damage."

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 213
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 214
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 215
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-direct {v2, v5, v4, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 216
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff8800

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 217
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v21, 0x20

    const/4 v11, 0x0

    const/16 v26, 0x10

    const-string v20, "large_buffs.png"

    move-object/from16 v19, v5

    move/from16 v22, v11

    move/from16 v23, v26

    move/from16 v24, v27

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v15, "Changes to debuffs and resistances"

    const-string v11, "The game\'s resistance system has been totally overhauled, to allow for more flexibility and consistency.\n\nPreviously, if a character was resistant to something, its effect would be reduced by a random amount between 0% and 100%.\n\nNow, resistances are much less random, applying a specific reduction to harmful effects. Currently all resistances are 50%.\n\nResistances are also now much more consistent between different creatures. e.g. all non-organic enemies are now immune to bleed.\n\nA few things have been adjusted due to this:\n\n_-_ The Rotting Fist is now immune to paralysis.\n_-_ Psionic blast now deals 100% of current HP, instead of 100% of max HP.\n_-_ Damage from fire now scales with max HP, and is slightly lower below 40 max HP."

    invoke-direct {v4, v5, v15, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 221
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 222
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 223
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorrosion;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorrosion;-><init>()V

    const-string v15, "Wand of venom is now wand of corrosion. This is primarily a visual rework, with only some changes to functionality:\n\n_-_ Wand now shoots bolts of caustic gas, instead of venom gas\n_-_ Venom debuff is now corrosion debuff, functionality unchanged\n\n_-_ Battlemage now inflicts ooze with a staff of corrosion, instead of poison."

    invoke-direct {v4, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 224
    iget-object v11, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 226
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 227
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 228
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v13, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "_-_ Performance improvements to the fog of war & mind vision.\n\n_-_ Improved the consistency of how ranged traps pick targets.\n\n_-_ Weapons and armor can now be found upgraded and cursed. Overall curse chance unchanged.\n\n_-_ Each shop now always stocks 2 random tipped darts\n\n_-_ Starting weapons can no longer appear in hero\'s remains\n\n_-_ The ghost hero is no longer unaffected by all buffs, and is also immune to corruption"

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 231
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 232
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 233
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v24, 0x90

    const-string v23, "spinner.png"

    move-object/from16 v22, v5

    const/4 v11, 0x0

    move/from16 v25, v11

    invoke-direct/range {v22 .. v27}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v14, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "Fixed:\n_-_ Various crash bugs\n_-_ Serious memory leaks on android 8.0+\n_-_ Rankings not retaining challenges completed\n_-_ Scroll of psionic blast debuffing a dead hero\n_-_ Rot lashers not being considered minibosses\n_-_ Wand of corruption ignoring NPCs\n_-_ NPCs being valid targets for assassin\n_-_ Wand of frost battlemage effect not activating as often as it should.\n_-_ Items in the alchemy window rarely being lost\n_-_ Various minor visual bugs"

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 236
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 237
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 238
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v12, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "In English:\n_-_ Fixed inconsistent text when equipping cursed artifacts\n\nUpdated Translations"

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 241
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 242
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 243
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-direct {v2, v5, v4, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 244
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff00

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v15, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_EMERALD:I

    invoke-direct {v5, v15, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v11, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "Thanks to the increased flexibility of the improved resistance system, buffing the ring of elements is now possible!\n\n_-_ Now reduces the duration and damage of harmful effects significantly more at higher levels.\n\n_-_ Rather than granting a chance to resist elemental/magic damage, ring now grants a set percentage resistance to these effects, which increases each level.\n\n_-_ Ring now applies to more elemental/magical effects than before."

    invoke-direct {v4, v5, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 249
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 250
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 251
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v9, 0x5a

    const/16 v11, 0xc

    const/16 v15, 0xf

    const-string v23, "mage.png"

    move-object/from16 v22, v5

    const/16 v19, 0x0

    move/from16 v24, v19

    move/from16 v25, v9

    move/from16 v26, v11

    move/from16 v27, v15

    invoke-direct/range {v22 .. v27}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v15, "The warlock is underperforming relative to the battlemage at the moment, and so he is getting an adjustment to his ability.\n\nThis should hopefully both increase his power, and further encourage investing upgrades in wands.\n\n_-_ Reduced the base soul mark chance by 40%\n_-_ Increased soul mark chance scaling by 100%\n\nSoul mark chance reaches pre-adjustment levels at a +2 wand, and grows from there."

    move-object/from16 v11, v16

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 254
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 255
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 256
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_MAGIC_MISSILE:I

    const/4 v15, 0x0

    invoke-direct {v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v11, "Minor Wand buffs"

    const-string v15, "Wand of Corruption:\n_-_ Reduced the corruption resistance of wraiths by ~40%\n_-_ Enemies now drop their loot (including ranged weapons) when corrupted.\n_-_ If an enemy is immune to a particular debuff, corruption will now try to give a different debuff, instead of doing nothing.\n\nWand of Corrosion:\n_-_ Corrosion damage growth will continue at 1/2 speed when the damage cap is reached, rather than stopping completely."

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 259
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 260
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 261
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->FLAIL:I

    const/4 v15, 0x0

    invoke-direct {v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v11, "Weapon and Glyph buffs"

    const-string v15, "Weapons with non-standard accuracy are generally weak, so they have been buffed across the board:\n\n_-_ Flail accuracy penalty reduced by 10%\n_-_ Handaxe accuracy bonus increased by 9.5%\n_-_ Mace accuracy bonus increased by 8%\n_-_ BattleAxe accuracy bonus increased by 6.5%\n_-_ WarHammer accuracy bonus increased by 5%\n\nGlyph Buffs:\n_-_ Glyph of obfuscation no longer reduces damage blocking, but is also less powerful.\n_-_ Glyph of entanglement now gives more herbal armor, and root duration decreases at higher armor levels."

    invoke-direct {v4, v5, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 264
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 265
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 266
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-direct {v2, v5, v4, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 267
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v5, 0xff0000

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 268
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const-string v23, "warrior.png"

    move-object/from16 v22, v5

    const/4 v11, 0x0

    move/from16 v24, v11

    const/16 v9, 0xc

    move/from16 v26, v9

    const/16 v9, 0xf

    move/from16 v27, v9

    invoke-direct/range {v22 .. v27}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v9, "The previous berserker nerf from 0.6.2 had little effect on his overall winrate, so I\'m trying again with a different approach, based around having a permanent penalty for each use of berserk.\n\n_-_ Reverted exhaustion nerf from 0.6.2\n\n_-_ Decreased lvls to recover rage to 2 from 3\n_-_ Berserking now reduces max health by 20%"

    move-object/from16 v11, v17

    invoke-direct {v4, v5, v11, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 272
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 273
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 274
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_ONYX:I

    const/4 v15, 0x0

    invoke-direct {v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEvasion;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEvasion;-><init>()V

    .line 275
    iget-object v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v15, "The ring of evasion has always been a very powerful ring, but the recent freerunner rework has increased the power of evasiveness in general, making the ring overbearingly strong.\n\nEvasion synergy has been adjusted:\n_-_ Ring of evasion no longer synergizes as strongly with freerunner or armor of swiftness.\n_-_ Previously their affects would multiply together, they now add to eachother instead.\n\nAnd the ring itself has been nerf/simplified:\n_-_ Ring of evasion no longer grants stealth"

    .line 276
    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 279
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 280
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 281
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.6.2"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 282
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 283
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v1, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    invoke-direct {v2, v9, v4, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 285
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 286
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v9, "_-_ Released October 24th, 2017\n_-_ 70 days after Shattered v0.6.1\n\nDev commentary will be added here in the future."

    move-object/from16 v15, v18

    invoke-direct {v4, v5, v15, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 290
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 291
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 292
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v9, "Dungeon Secrets!"

    const-string v15, "The secrets of the dungeon have been totally redesigned!\n\n_-_ Regular rooms can no longer be totally hidden\n\n_-_ 12 new secret rooms added, which are always hidden\n\n_-_ Hidden doors are now harder to find automatically\n\n_-_ Searching now consumes 6 turns of hunger, up from 2.\n\nThis is a big adjustment to how secrets work in the dungeon. The goal is to make secrets more interesting, harder to find, and also more optional."

    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 295
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 296
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 297
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/4 v9, 0x0

    const/16 v22, 0xf

    const/16 v15, 0xc

    const/16 v16, 0xf

    const-string v20, "rogue.png"

    move-object/from16 v19, v5

    move/from16 v21, v9

    move/from16 v23, v15

    move/from16 v24, v16

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v15, "Rogue Rework!"

    const-string v9, "The rogue has been reworked! His abilities have received a number of changes to make his strengths more pronounced and focused.\n\nThese abilities have been _removed:_\n_-_ Gains evasion from excess strength on armor\n_-_ Gains hunger 20% more slowly\n_-_ Identifies rings by wearing them\n_-_ Has an increased chance to detect secrets\n\nThese abilities have been _added:_\n_-_ Searches in a wider radius than other heroes\n_-_ Is able to find more secrets in the dungeon\n\nMake sure to check out the Cloak of Shadows and Dagger changes as well."

    invoke-direct {v4, v5, v15, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 300
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 301
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 302
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v22, 0x5a

    const-string v20, "rogue.png"

    move-object/from16 v19, v5

    const/4 v9, 0x0

    move/from16 v21, v9

    const/16 v9, 0xc

    move/from16 v23, v9

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v9, "Rogue Subclasses Rework!"

    const-string v15, "Both of the rogue\'s subclasses has been reworked, with an emphasis on more powerful abilities that need more interaction from the player.\n\n_The Assassin:_\n_-_ No longer gains a free +25% damage on surprise attacks\n_-_ Now prepares for a deadly strike while invisible, the longer he waits the more powerful the strike becomes.\n_-_ Charged attacks have special effects, such as blinking to the target and dealing bonus damage to weakened enemies.\n\n_The Freerunner:_\n_-_ No longer gains movement speed when not hungry or encumbered\n_-_ Now gains \'momentum\' as he runs. Momentum increases evasion and movement speed as it builds.\n_-_ Momentum is rapidly lost when standing still.\n_-_ Evasion gained from momentum scales with excess strength on armor."

    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 305
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 306
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 307
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v21, 0x10

    const/4 v9, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x10

    const-string v20, "terrain_features.png"

    move-object/from16 v19, v5

    move/from16 v22, v9

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v15, "Trap Overhaul!"

    const-string v9, "Most of the game\'s traps have received changes, some have been overhauled entirely!\n\n_-_ Removed Spear and Paralytic Gas Traps\n_-_ Lightning Trap is now Shocking and Storm traps\n_-_ Elemental Traps now all create fields of their element\n_-_ Worn and Poison Trap are now Worn and Poison Dart Trap\n_-_ Dart traps, Rockfall Trap, and Disintegration Trap are now always visible, but attack at a range\n_-_ Warping Trap reworked, no longer sends to previous floors\n_-_ Gripping and Flashing Traps now never deactivate, but are less harmful\n\n_-_ Tengu now uses Gripping Traps\n\n_-_ Significantly reduced instances of items appearing ontop of item-destroying traps"

    invoke-direct {v4, v5, v15, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 310
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 311
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 312
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->LOCKED_CHEST:I

    const/4 v15, 0x0

    invoke-direct {v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v9, "Chest Adjustments"

    const-string v15, "_-_ Crystal chests are now opened by crystal keys.\n\n_-_ Golden chests now sometimes appear in the dungeon, containing more valuable items."

    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 315
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 316
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 317
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->IRON_KEY:I

    const/4 v15, 0x0

    invoke-direct {v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v9, "New Key Display"

    const-string v15, "The key display has been overhauled!\n\n_-_ Each key type now has its own icon, instead of all special keys being shown as golden.\n\n_-_ Can now display up to 6 keys, up from 3. After 3 keys the key icons will become smaller.\n\n_-_ Button background now dims as keys are collected, for added visual clarity."

    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 320
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 321
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 322
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-direct {v2, v5, v4, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 323
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff8800

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 324
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;-><init>()V

    const-string v9, "The Wand of Corruption has been reworked!\n\n_-_ Corruption resistance is now based on enemy exp values, not max HP. Low HP and debuffs still reduce enemy corruption resistance.\n\n_-_ Wand now only spends 1 charge per shot, and inflicts debuffs on enemies if it fails to corrupt. Debuffs become stronger the closer the wand got to corrupting.\n\n_-_ Corrupted enemies are now considered by the game to be ally characters.\n\n_-_ Corrupted enemies award exp immediately as they are corrupted.\n\nThese changes are aimed at making the wand more powerful, and also less of an all-in wand. Wand of Corruption is now useful even if it doesn\'t corrupt an enemy."

    invoke-direct {v4, v5, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 326
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 328
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 329
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 330
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v24, 0x0

    const/16 v26, 0xc

    const/16 v27, 0xf

    const-string v23, "statue.png"

    move-object/from16 v22, v5

    const/4 v9, 0x0

    move/from16 v25, v9

    invoke-direct/range {v22 .. v27}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v9, "AI and Enemy Changes"

    const-string v15, "_-_ Characters now have an internal alignment and choose enemies based on that. Friendly characters should now never attack eachother.\n\n_-_ Injured characters will now always have a persistent health bar, even if they aren\'t being targeted.\n\n_-_ Improved enemy emote visuals, they now appear more frequently and there is now one for losing a target.\n\n_-_ Enemies now always lose their target after being teleported."

    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 333
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 334
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 335
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v13, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v15, "_-_ Buff icons can now be tinted, several buffs take advantage of this to better display their state.\n\n_-_ Wands that fire magical bolts now push on their detonation area, opening doors and trampling grass.\n\n_-_ Crystal chest rooms will now always have a different item type in each chest.\n\n_-_ Burning and freezing now destroy held items in a more consistent manner.\n\n_-_ Reduced enemies in dark floors to 1.5x, from 2x.\n_-_ Increased the brightness of the fog of war.\n_-_ Various internal code improvements.\n_-_ Added a new interface and graphics for alchemy.\n_-_ Zooming is now less stiff at low resolutions.\n_-_ Improved VFX when items are picked up.\n_-_ Improved older updates in the changes list.\n_-_ Game now mutes during phone calls on android 6.0+"

    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 338
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 339
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 340
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v24, 0x90

    const/16 v26, 0x10

    const/16 v27, 0x10

    const-string v23, "spinner.png"

    move-object/from16 v22, v5

    const/4 v9, 0x0

    move/from16 v25, v9

    invoke-direct/range {v22 .. v27}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v14, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v15, "Fixed:\n_-_ Various crash bugs\n_-_ Various exploits players could use to determine map shape\n_-_ Artifacts sometimes removed from quickslot when equipped\n_-_ Items removed from quickslots when containers are bought\n_-_ Swapping misc items not working with a full inventory\n_-_ Enemies sometimes not waking from sleep\n_-_ Swarms not duplicating over hazards\n_-_ Black bars on certain modern phones\n_-_ Action button not persisting between floors\n_-_ Various bugs with multiplicity curse\n_-_ Various minor visual bugs\n_-_ Plants not updating terrain correctly\n_-_ Enemies spawning ontop of exit stairs\n_-_ Evil Eyes sometimes skipping beam chargeup\n_-_ Warrior\'s seal being disabled by armor kit\n_-_ Gladiator being able to combo non-visible enemies\n_-_ Music volume being ignored in certain cases\n_-_ Game music not correctly pausing on android 2.2/2.3\n_-_ Game failing to save in rare cases"

    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 343
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 344
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 345
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v12, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v15, "In English:\n_-_ Improved some common game log entries\n_-_ Fixed a typo when enemies die out of view\n_-_ Fixed a typo in the ghost hero\'s introduction\n_-_ Fixed a typo in dirk description\n_-_ Fixed various text errors with venom\n\n_-_ Translation Updates\n_-_ Various Translation Updates\n_-_ Added new language: _Turkish_\n_-_ New Language: _Czech_"

    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 348
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 349
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 350
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-direct {v2, v5, v4, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 351
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff00

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 352
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;-><init>()V

    const-string v9, "As part of the rogue rework, the cloak of shadows has been significantly buffed:\n\n_-_ Max charges have been halved, however each charge is roughly twice as useful.\n_-_ As there are half as many charges total, charge rate is effectively increased.\n_-_ Cooldown mechanic removed, cloak can now be used multiple times in a row.\n_-_ Cloak levelling progression changed, it is now much more dependant on hero level\n\nThese changes should let the rogue go invisible more often, and with more flexibility."

    invoke-direct {v4, v5, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 354
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 356
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 357
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 358
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Dagger;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Dagger;-><init>()V

    const-string v9, "As part of the rogue rework, sneak attack weapons have been buffed:\n\n_-_ Dagger sneak attack minimum damage increased to 75% from 50%.\n_-_ Dirk sneak attack minimum damage increased to 67% from 50%\n_-_ Assassin\'s blade sneak attack minimum damage unchanged at 50%\n\nThis change should hopefully give the rogue some needed earlygame help, and give him a more clear choice as to what item he should upgrade, if no items were found in the dungeon."

    invoke-direct {v4, v5, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 359
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 361
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 362
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 363
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Flail;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Flail;-><init>()V

    const-string v9, "The flail\'s downsides were too harsh, so one of them has been changed both to make its weaknesses more centralized and to hopefully increase its power.\n\n_-_ Flail no longer attacks at 0.8x speed, instead it has 20% reduced accuracy."

    invoke-direct {v4, v5, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 364
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 366
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 367
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 368
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_GOLDEN:I

    const/4 v15, 0x0

    invoke-direct {v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v9, "Potion Adjustments"

    const-string v15, "Potion of Purification buffed:\n_-_ Drinking effect now lasts for 20 turns, up from 15.\n_-_ Drinking now provides immunity to all area-bound effects, not just gasses.\n\nPotion of Frost buffed:\n_-_ Now creates a freezing field which lasts for several turns."

    invoke-direct {v4, v5, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 371
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 372
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 373
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-direct {v2, v5, v4, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 374
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v5, 0xff0000

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 375
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v21, 0x0

    const/16 v22, 0x5a

    const/16 v23, 0xc

    const/16 v24, 0xf

    const-string v20, "warrior.png"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v9, "The Berserker\'s survivability and power have been reduced to help bring him into line with the other subclasses:\n\n_-_ Bonus damage from low health reduced significantly when below 50% HP. 2x damage while berserking is unchanged.\n\n_-_ Turns of exhaustion after berserking increased to 60 from 40. Damage reduction from exhaustion stays higher for longer."

    invoke-direct {v4, v5, v11, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 379
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 380
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 381
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->REMAINS:I

    const/4 v11, 0x0

    invoke-direct {v5, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v9, "Heroes Remains"

    const-string v11, "_-_ Remains can no longer contain progression items, such as potions of strength or scrolls of upgrade.\n\n_-_ All upgradeable items dropped by remains are now capped at +3 (+0 for artifacts)\n\nThe intention for remains is so a previously failed run can give a nice surprise and tiny boost to the next one, but these items are both too strong and too easy to abuse.\n\nIn compensation, it is now much less likely to receive gold from remains, unless that character died with very few items."

    invoke-direct {v4, v5, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 384
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 385
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 386
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.6.1"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 387
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 388
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v1, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct {v2, v7, v4, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 390
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 391
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v7, "_-_ Released August 15th, 2017\n_-_ 72 days after Shattered v0.6.0\n\nDev commentary will be added here in the future."

    move-object/from16 v9, v18

    invoke-direct {v4, v5, v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 395
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 396
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 397
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GUIDE_PAGE:I

    const/4 v11, 0x0

    invoke-direct {v5, v7, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v7, "Journal Additions"

    const-string v11, "_-_ Overhauled the Journal window with loads of new functionality\n\n_-_ Added a completely overhauled tutorial experience, which replaces the existing signpost system.\n\n_-_ Massively expanded the items catalog, now contains every identifiable item in the game."

    invoke-direct {v4, v5, v7, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 400
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 401
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 402
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->image(I)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v7, "Badge Changes"

    const-string v11, "_-_ Added new badges for identifying all weapons, armor, wands, and artifacts.\n\n_-_ All identification-based badges are now tied to the new item list system, and progress for them will persist between runs.\n\n_-_ Removed the Night Hunter badge\n\n_-_ The \'Many Deaths\' badge now covers all death related badges, previously it was not covering 2 of them.\n\n_-_ Reduced the numbers of games needed for the \'games played\' badges from 10/100/500/2000 to 10/50/250/1000\n\n_-_ Blank badges shown in the badges menu are now accurate to how many badges you have left to unlock."

    invoke-direct {v4, v5, v7, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 405
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 406
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 407
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v7

    const-string v11, "Dungeon Changes"

    const-string v15, "_-_ Added 5 new regional rooms\n_-_ Added two new uncommon room types\n_-_ Added a new type of tunnel room\n\n_-_ Level layouts now more likely to be dense and interconnected.\n\n_-_ Tunnels will now appear more consistently.\n\n_-_ Ascending stairs, descending stairs, and mining no longer increase hunger."

    invoke-direct {v4, v7, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 410
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 411
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 412
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_TOPAZ:I

    const/4 v11, 0x0

    invoke-direct {v5, v7, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEnergy;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEnergy;-><init>()V

    .line 413
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v11, "_-_ Added the ring of energy."

    .line 414
    invoke-direct {v4, v5, v7, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 417
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 418
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 419
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CHEST:I

    const/4 v11, 0x0

    invoke-direct {v5, v7, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v7, "Sprites"

    const-string v11, "New sprites for the following:\n_-_ Chests & Mimics\n_-_ Darts\n_-_ Javelins\n_-_ Tomahawks"

    invoke-direct {v4, v5, v7, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 422
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 423
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 424
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v2, v5, v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 425
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff8800

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 426
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_DIAMOND:I

    invoke-direct {v5, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v7, "Ring Mechanics Changes"

    const-string v8, "Rings now handle upgrades and curses more similarly to other items:\n\n_-_ Rings are now found at +0, down from +1, but are more powerful to compensate.\n\n_-_ Curses no longer affect ring upgrades, it is now impossible to find negatively upgraded rings.\n\n_-_ Cursed rings are now always harmful regardless of their level, until the curse is cleansed.\n\n_-_ Scrolls of upgrade have a chance to remove curses on a ring, scrolls of remove curse will always remove the curse."

    invoke-direct {v4, v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 430
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 431
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 432
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_AMETHYST:I

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;-><init>()V

    .line 433
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v8, "The ring of wealth is getting a change in emphasis, moving away from affecting items generally, and instead affecting item drops more strongly.\n\n_-_ No longer grants any benefit to item spawns when levels are generated.\n\n_-_ Now has a chance to generate extra loot when defeating enemies.\n\nI\'m planning to make further tweaks to this item in future updates."

    .line 434
    invoke-direct {v4, v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 437
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 438
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 439
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_CRIMSON:I

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;-><init>()V

    .line 440
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v8, "Health Potions are getting a changeup to make hoarding and chugging them less effective, and to encourage a bit more strategy than to just drink them on the verge of death.\n\n_-_ Health potions now heal in a burst that fades over time, rather than instantly.\n\n_-_ Health potions now heal more than max HP at low levels, and slightly less than max HP at high levels.\n\nMake sure to read the dew vial changes as well."

    .line 441
    invoke-direct {v4, v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 444
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 445
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 446
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;-><init>()V

    const-string v8, "The dew vial (and dew) are having their healing abilities enhanced to improve the availability of healing in the sewers, and to help offset the health potion changes.\n\n_-_ Dew drops now heal 5% of max HP\n\n_-_ Dew vial now always spawns on floor 1\n\n_-_ The dew vial is now full at 20 drops, drinking heals 5% per drop and is instantaneous.\n\n_-_ Dew will always be collected into an available vial, even if the hero is below full HP.\n\n_-_ When drinking from the vial, the hero will now only drink as many drops as they need to reach full HP."

    invoke-direct {v4, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 447
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 449
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 450
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 451
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v17, 0x0

    const/16 v19, 0xc

    const/16 v20, 0xf

    const-string v16, "statue.png"

    move-object v15, v5

    move/from16 v18, v21

    invoke-direct/range {v15 .. v20}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v7, "AI Changes"

    const-string v8, "_-_ Improvements to pathfinding. Characters are now more prone to take efficient paths to their targets, and will prefer to wait instead of taking a very inefficient path.\n\n_-_ Characters will now more consistently decide who to attack based on distance and who they are being attacked by."

    invoke-direct {v4, v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 454
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 455
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 456
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v20, 0x90

    const/16 v22, 0x10

    const/16 v23, 0x10

    const-string v19, "spinner.png"

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v23}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v14, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Fixed:\n_-_ Issues with Android 7.0+ multi-window\n_-_ Rare stability issues on certain devices\n_-_ Numerous rare crash and freeze bugs\n_-_ Chasm death not showing in rankings\n_-_ Resting icon sometimes not appearing\n_-_ Various minor graphical bugs\n_-_ The ambitious imp rarely blocking paths\n_-_ Berserk prematurely ending after loading\n_-_ Mind vision not updating while waiting\n_-_ Troll blacksmith destroying broken seal\n_-_ Wands always being uncursed by upgrades\n_-_ Various bugs with Evil Eyes\n_-_ Thieves being able to escape while visible\n_-_ Enemies not visually dying in rare cases\n_-_ Visuals flickering while zooming on low resolution devices.\n_-_ Various minor bugs with the buff indicator\n_-_ Sleep-immune enemies being affected by magical sleep\n_-_ Sad Ghost being affected by corruption\n_-_ Switching places with the Sad Ghost over chasms causing the hero to fall"

    invoke-direct {v4, v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 459
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 460
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 461
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v13, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_-_ Completely overhauled the changes scene (which you\'re currently reading!)\n_-_ Item and enemy spawn RNG is now more consistent. Should prevent things like finding 4 crabs on floor 3.\n_-_ The compass marker now points toward entrances after the amulet has been acquired.\n_-_ Improved quickslot behaviour when items are removed by monks or thieves.\n_-_ Allies are now better able to follow you through bosses.\n_-_ Lloyd\'s Beacon\'s return function is no longer blocked by none-hostile creatures.\n_-_ Performance tweaks on devices with 2+ cpu cores\n_-_ Stepping on plants now interrupts the hero\n_-_ Improved potion and scroll inventory icons\n_-_ Increased landscape width of some windows\n_-_ Un-IDed artifacts no longer display charge"

    invoke-direct {v4, v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 464
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 465
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 466
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v1, v12, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "Fixed in English:\n_-_ Missing capitalization in Prison Guard text\n_-_ Typo when trying a locked chest with no key\n_-_ Missing period in alarm trap description\n\n_-_ Added new Language: _Catalan_\n\n_-_ Various translation updates"

    invoke-direct {v4, v5, v8, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 469
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 470
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 471
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 472
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff00

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 473
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;-><init>()V

    const-string v6, "The Unstable spellbook wasn\'t really worth upgrading, so it\'s getting some new effects to make it worth investing in!\n\n_-_ Infusing a scroll into the unstable spellbook will now grant a unique empowered effect whenever that scroll\'s spell is cast from the book.\n\nTo compensate, charge mechanics have been adjusted:\n\n_-_ Max charges reduced from 3-8 to 2-6\n\n_-_ Recharge speed has been reduced slightly"

    invoke-direct {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 475
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 477
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 478
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 479
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;-><init>()V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const-string v6, "The ghost hero summoned by the rose is now much more capable and is also much less temporary:\n\n_-_ Ghost can now be equipped with a weapon and armor and uses them just like the hero.\n_-_ Ghost no longer takes damage over time as long as the rose remains equipped.\n_-_ Ghost health increased by 10\n_-_ Ghost now has a persistent HP bar\n_-_ Ghost can now follow you between floors\n\nHowever:\n\n_-_ Ghost no longer gains damage and defense from rose levels, instead gains strength to use better equipment.\n_-_ Rose no longer recharges while ghost is summoned\n_-_ Rose takes 25% longer to fully charge"

    invoke-direct {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 480
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 482
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 483
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 484
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->BACKPACK:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v7, "Inventory"

    const-string v8, "_-_ Inventory space increased from 19 slots to 20 slots.\n\n_-_ Gold indicator has been moved to the top-right of the inventory window to make room for the extra slot."

    invoke-direct {v4, v6, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 487
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 488
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 489
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 490
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v5, 0xff0000

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 491
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;-><init>()V

    const-string v6, "The Horn of Plenty was providing a bit too much value in the earlygame, especially without upgrades:\n\n_-_ Charge Speed reduced, primarily at lower levels:\n-20% at +0\n-7.5% at +10\n\n_-_ Upgrade rate adjusted, Food now contributes towards upgrades exactly in line with how much hunger it restores. This means smaller food items will contribute more, larger ones will contribute less. Rations still grant exactly 1 upgrade each."

    invoke-direct {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 493
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 495
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 496
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 497
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_GARNET:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight;-><init>()V

    .line 498
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v7, "The Ring of Might\'s strength bonus is already extremely valuable, having it also provide an excellent health boost was simply too much:\n\n_-_ Health granted reduced from +5 per upgrade to +3.5% of max hp per upgrade.\n\nThis is a massive reduction to its earlygame health boosting power, however as the player levels up this will improve. By hero level 26 it will be as strong as before this change."

    .line 499
    invoke-direct {v4, v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 502
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 503
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 504
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;-><init>()V

    const-string v7, "The ability for Ethereal Chains to pull you literally anywhere limits design possibilities for future updates, so I\'ve added a limitation.\n\n_-_ Ethereal chains now cannot reach locations the player cannot reach by walking or flying. e.g. the chains can no longer reach into a locked room.\n\n_-_ Ethereal chains can now reach through walls on boss floors, but the above limitation still applies."

    invoke-direct {v4, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 505
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 507
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 508
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 509
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.6.0"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 510
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v4, 0xffff44

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 511
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v3

    const-string v4, "_-_ Released June 4th, 2017\n_-_ 116 days after Shattered v0.5.0\n\nDev commentary will be added here in the future."

    invoke-direct {v0, v3, v9, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v3, 0x41800000    # 16.0f

    .line 515
    invoke-virtual {v0, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 516
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 517
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v4

    const-string v5, "Levelgen Overhaul!"

    const-string v6, "Level creation algorithm overhauled!\n\n_-_ Levels are now much less box-shaped\n_-_ Sewers are now smaller, caves+ are now larger\n_-_ Some rooms can now be much larger than before\n_-_ Added 8 new standard room types, and loads of new standard room layouts\n\n_-_ Reduced number of traps in later chapters"

    invoke-direct {v0, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 520
    invoke-virtual {v0, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 521
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 522
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;-><init>()V

    invoke-direct {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v4, "Light Source Buffs"

    const-string v5, "_-_ Light sources now grant significantly more vision\n_-_ Light from torches now lasts 20% longer\n_-_ Slightly increased visibility on floor 22+\n_-_ Floor 21 shop now sells 3 torches, up from 2"

    invoke-direct {v0, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v3, 0x41800000    # 16.0f

    .line 525
    invoke-virtual {v0, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 526
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 527
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;-><init>()V

    invoke-direct {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v4, "Food Buffs"

    const-string v5, "_-_ Meat and small rations are 50% more filling\n_-_ Pasties and blandfruit are 12.5% more filling"

    invoke-direct {v0, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v3, 0x41800000    # 16.0f

    .line 530
    invoke-virtual {v0, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 531
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 532
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Greataxe;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Greataxe;-><init>()V

    invoke-direct {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v4, "Tier-5 Weapon Buffs"

    const-string v5, "_-_ Greataxe base damage increased by ~22%\n_-_ Greatshield base damage increased by ~17%"

    invoke-direct {v0, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v3, 0x41800000    # 16.0f

    .line 535
    invoke-virtual {v0, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 536
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 537
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;-><init>()V

    invoke-direct {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v4, "Enchant and Glyph Balance Changes"

    const-string v5, "_-_ Vampiric enchant lifesteal reduced by 20%\n\nLucky enchant rebalanced:\n_-_ now deals 2x/0x damage, instead of min/max\n_-_ base chance to deal 2x increased by ~10%\n\nGlyph of Viscosity rebalanced:\n_-_ proc chance reduced by ~25% \n_-_ damage over time reverted from 15% to 10%\n\n_-_ Glyph of Entanglement root time reduced by 40%\n\nGlyph of Potential rebalanced:\n_-_ self-damage no longer scales with max hp\n_-_ grants more charge at higher levels"

    invoke-direct {v0, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v3, 0x41800000    # 16.0f

    .line 540
    invoke-virtual {v0, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 541
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 542
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v13, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "_-_ Visiting floor 21 before completing the imp quest no longer prevents his shop from spawning\n\n_-_ Floor 2 entry doors are now only hidden for new players\n\n_-_ Falling damage tweaked to be less random\n\n_-_ Resume indicator now appears in more cases"

    invoke-direct {v0, v3, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x41800000    # 16.0f

    .line 544
    invoke-static {v2, v0, v1, v1}, La/a/a/a/a;->a(Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;FF)V

    return-void
.end method

.method public static addAllChanges1(Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "v0.7.5"

    invoke-direct {v2, v5, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "new"

    invoke-static {v1, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v2, v6, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 5
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const-string v9, "Developer Commentary"

    const-string v10, "_-_ Released October 2nd, 2019\n_-_ 76 days after Shattered v0.7.4\n\nDev commentary will be added here in the future."

    invoke-direct {v5, v6, v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v6, 0x41800000    # 16.0f

    .line 10
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 11
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 12
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v15, Lcom/watabou/noosa/Image;

    const/16 v12, 0xc

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/16 v16, 0xb

    const-string v11, "snake.png"

    move-object v10, v15

    move-object v8, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v10, "Sewer Enemies"

    const-string v11, "Two new enemies have been added to the sewers!\n\n_- Snakes_ are an evasive enemy which mainly shows up on early floors, they help teach the importance of surprise attacks.\n_- Slimes_ primarily appear on floor 4, and are an enemy type which rewards defense over damage.\n\nGoo\'s level has also received significant changes. It now uses a new unique level layout pattern, and Goo itself always spawns in a new unique room type.\n\nI have also made slight balance changes to the Goo fight itself. 1x1 pillars have been mostly removed from Goo\'s arena to reduce surprise-attack spam, but Goo\'s damage has been reduced by 20% to compensate."

    invoke-direct {v5, v8, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 16
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 17
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v8, Lcom/watabou/noosa/Image;

    const/4 v12, 0x0

    const/16 v14, 0xe

    const/16 v15, 0x10

    const-string v11, "tengu.png"

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v10, "Prison Enemies"

    const-string v11, "_Necromancers_ have been added to the prison! These powerful enemies fight by summoning and buffing undead.\n\nThe _Tengu_ boss fight has been totally reworked! The fight still takes place over 3 stages, and has a similar core theme, but I have totally ditched the tedious maze and chasing mechanics from stages 2&3, and have given Tengu several new abilities. Watch your step!\n\nAs a part of this rework, Tengu\'s stats have also been adjusted:\n_-_ HP up to 160 from 120\n_-_ Evasion reduced by 25%\n_-_ Damage reduced by 30%\n_-_ Accuracy reduced by 10%"

    invoke-direct {v5, v8, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 22
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LIBGDX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v8

    const-string v10, "LibGDX Text Rendering!"

    const-string v11, "The game\'s text renderer is now using LibGDX freetype. This looks almost identical to the existing text but is slightly crisper, platform-independent, and much more efficient!\n\nText rendering was the last bit of android-dependant code, so the game\'s core code modules (~98% of its code) are now being compiled as general code and not android-specific code!"

    invoke-direct {v5, v8, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 26
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 27
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v8, "changes"

    invoke-static {v1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-direct {v2, v5, v4, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 28
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v10, 0xff8800

    invoke-virtual {v5, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v15, Lcom/watabou/noosa/Image;

    const/16 v13, 0xf

    const/16 v14, 0x10

    const/16 v16, 0xf

    const-string v11, "rat.png"

    move-object v10, v15

    move-object v4, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v10, "Enemy Changes"

    const-string v11, "_-_ Significantly improved the consistency of enemy spawns (large numbers of the same enemy and large enemy groups should be less common)\n\n_-_ Adjusted enemy spawn chances on floors 1-10 to make room for new enemies\n\n_-_ Skeletons no longer rarely appear on floor 4\n\n_-_ Guards no longer drop healing potions, they are now dropped by necromancers\n_-_ Guards now grant 7 exp, up from 6\n\n_-_ Crabs now deal 1-7 damage, down from 1-8\n\n_-_ Albino rats now grant 2 exp, up from 1\n_-_ Albino rats now drop mystery meat"

    invoke-direct {v5, v4, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 33
    invoke-virtual {v5, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 34
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 35
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "misc"

    invoke-static {v1, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "_-_ The game camera now smoothly follows the hero while they are moving, instead of snapping to their location.\n\n_-_ Standardized word use when attacks miss to reduce confusion. Enemies now always \'block\' or \'dodge\'.\n\n_-_ Various improvements to wording on the supporter menu for Google Play users.\n\n_-_ Various internal code improvements"

    invoke-direct {v4, v5, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 38
    invoke-virtual {v4, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 39
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 40
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v13, 0x90

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x10

    const-string v12, "spinner.png"

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    const-string v11, "bugfixes"

    invoke-static {v1, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Fixed:\n_-_ Various stability issues caused by the LibGDX conversion\n_-_ Bolts from wand of lightning not spreading in many cases where they should\n_-_ Thrown weapons sticking to corrupted characters when they shouldn\'t\n_-_ Area-based effects behaving oddly in rare cases\n_-_ Thieves not escaping when they should in many cases\n_-_ Sai and gauntlets giving 1 more defense than what their descriptions stated\n_-_ Players rarely being able to open containers/doors from a distance\n_-_ Black texture errors on older android devices\n_-_ Scenes not fading in when they should in certain cases\n_-_ Small amounts of stuttering when the hero moves\n_-_ Various rare crash bugs"

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 43
    invoke-virtual {v4, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 44
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 45
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "language"

    invoke-static {v1, v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "Added new Language: Japanese!\n\nUpdated Translations and Translator Credits!"

    invoke-direct {v4, v5, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 48
    invoke-virtual {v4, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 49
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 50
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v12, [Ljava/lang/Object;

    const-string v5, "buffs"

    invoke-static {v1, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-direct {v2, v4, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 51
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v12, 0xff00

    invoke-virtual {v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v15, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_BLAST_WAVE:I

    invoke-direct {v12, v15, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v13, "Wand Buffs"

    const-string v15, "Blast wave is an excellent sidearm wand, but not as good when invested in. I\'m making the wand a bit stronger and less risky to hopefully make it more worthy of upgrades.\n_-_ Increased AOE damage from 67% to 100%, AOE knockback force is unchanged\n_-_ AOE no longer damages hero/allies, but still knocks them back\n\nCorrosion is a very powerful wand in the right hands, but is currently a bit too hard to use right. I\'m lightly buffing it to make its power a bit more accessible.\n_-_ Corrosion gas starting damage increased to 2+lvl from 1+lvl"

    invoke-direct {v4, v12, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v12, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 56
    invoke-virtual {v4, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 57
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 58
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_AMETHYST:I

    const/4 v15, 0x0

    invoke-direct {v12, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v13, "Ring Buffs"

    const-string v15, "Based on their performance, I\'m giving a light buff to ring of energy, and a more significant buff to ring of wealth:\n\n_-_ Ring of energy charge boost increased to 30% per level, from 25%\n\n_-_ Ring of wealth exclusive drops are 20% more common\n_-_ Rare ring of wealth exclusive drops are now 33% more common"

    invoke-direct {v4, v12, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v12, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 61
    invoke-virtual {v4, v6, v6}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 62
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 63
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->LONGSWORD:I

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v15, 0x440066

    move-object/from16 v16, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 64
    invoke-direct {v13, v15, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 65
    invoke-direct {v6, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v5, "Glyph/Enchant Buffs"

    const-string v12, "I\'m giving some significant buffs to underperforming rare enchants/glyphs:\n\n_-_ Proc chance for corruption enchant increased by ~25% at all levels\n\n_-_ Proc chance for glyph of affection increased by ~50% at +0, scaling to ~10% at +10"

    invoke-direct {v4, v6, v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 68
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 69
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 70
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "nerfs"

    invoke-static {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-direct {v2, v5, v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 71
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v5, 0xff0000

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;-><init>()V

    const-string v12, "I\'m adjusting the wand of living earth to make it less able to stand on its own as a run-winning item. It should excel at providing defensive power, but shouldn\'t also give good offense.\n\n_-_ Guardian average damage decreased by 33%\n_-_ Base wand damage up to 4-6 from 3-6\n_-_ Wand damage scaling down to 0-2 from 1-2"

    invoke-direct {v4, v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 74
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 76
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 77
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 78
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;

    invoke-direct {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;-><init>()V

    const-string v13, "Corruption is performing extremely well when invested in, so I\'m buffing its base power but reducing its upgraded power. I\'m also putting more emphasis on debuffs helping corruption chances:\n\n_-_ Corruption resistance reduction from minor debuffs up to 25% from 20%\n_-_ Corruption resistance reduction from major debuffs up to 50% from 33%\n_-_ Corruption base power adjusted to 3+lvl/2 from 2+lvl\n\n_-_ Wraith corruption resistance reduced slightly, to put them into line with other uncommon enemies."

    invoke-direct {v4, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 79
    iget-object v12, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 81
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 82
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 83
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.7.4"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 84
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 85
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v2, v12, v4, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 87
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 88
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v12, "_-_ Released July 18th, 2019\n_-_ 56 days after Shattered v0.7.3\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v9, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 92
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 93
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 94
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;

    invoke-direct {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;-><init>()V

    const-string v13, "This brand new wand spawns autonomous wards which attack enemies. Wards can be upgraded by being zapped again, and eventually form up into sentry turrets.\n\nThe Wand of Warding does very consistent damage, but requires some setup first."

    invoke-direct {v4, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 95
    iget-object v12, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 97
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 98
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 99
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;

    invoke-direct {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;-><init>()V

    const-string v13, "This new wand has a lower damage output, but grants significant defensive power. The rocks the wand shoots at enemies reform around the hero and absorb damage. If enough rock is built, it will form up into a rock guardian which fights with the player.\n\nThe Wand of Living Earth is lacking in offensive output, but does a great job of pulling focus and damage away from the player."

    invoke-direct {v4, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 100
    iget-object v12, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 102
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 103
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 104
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LIBGDX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v12

    const-string v13, "LibGDX"

    const-string v15, "Large sections of Shattered\'s codebase is now using the multiplatform game library _LibGDX._ Making the game\'s codebase less heavily tied to Android is a big step towards making the game available on other platforms!\n\nKeyboard input handling and text rendering are still coupled to Android however. I will convert these game systems to use LibGDX in a later update.\n\nNote that Shattered will not immediately release on other platforms once LibGDX conversion is complete, but it is a big step towards that."

    invoke-direct {v4, v12, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v12, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 107
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 108
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 109
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-direct {v2, v5, v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 110
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff8800

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 111
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->EXOTIC_BERKANAN:I

    .line 113
    invoke-direct {v5, v13, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Ally AI improvements"

    const-string v13, "Allies which follow the player are now considered to be \'intelligent\', and have the following improved behaviours:\n_-_ Intelligent allies will not attack enemies which are asleep, or which haven\'t noticed the player yet.\n_-_ Intelligent allies will follow the hero through stairs so long as they are near to them.\n\nLastly, the hero can now swap places with any ally, even unintelligent ones."

    .line 114
    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 117
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 118
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 119
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v10, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "_-_ Overhauled main menu interface to allow for more expandability.\n_-_ Updated hero icons in rankings and saved game screens.\n\n_-_ Class armor abilities no longer affect allies\n_-_ Autotargeting now no longer targets ally characters, in any circumstances.\n_-_ Most scrolls with an area of affect now no longer affect allies. More destructive ones will still damage them though.\n_-_ Added a little surprise if you reach the surface with an upgraded ally item.\n\n_-_ Ring of elements and antimagic effects now apply to damage from wands.\n\n_-_ The great crab can now only block one enemy at a time.\n\n_-_ Shattered Pixel Dungeon now requires Android 2.3+ to run, up from Android 2.2+.\n_-_ Google Play Games and sharing gameplay data now requires android 4.1+, up from 4.0+."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 122
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 123
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 124
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v19, 0x90

    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v22, 0x10

    const-string v18, "spinner.png"

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v22}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Fixed:\n_-_ Talisman of foresight warn effect not being saved/loaded\n_-_ Level visuals (e.g. prison torches) rarely bugging out\n_-_ Minor visual errors with ranged enemy attacks.\n_-_ Heavy boomerangs being lost when inventory is full\n_-_ NPCs rarely getting hit by ranged attacks\n_-_ Enemies rarely spawning on top of each other on boss levels\n_-_ Elixir of aquatic rejuvenation being able to heal slightly over max hp\n_-_ Prismatic images not being affected by brimstone and antimagic glyphs\n_-_ Shattered pots being lost if the player has a full inventory\n_-_ Doors incorrectly closing when swapping places with an ally\n_-_ Various rare bugs with heavy boomerangs\n_-_ Various minor text errors"

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 127
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 128
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 129
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v1, v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "Updated Translations"

    invoke-direct {v4, v5, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 132
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 133
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 134
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v12, [Ljava/lang/Object;

    move-object/from16 v5, v16

    invoke-static {v1, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-direct {v2, v4, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 135
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v12, 0xff00

    invoke-virtual {v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-direct {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;-><init>()V

    const-string v13, "The Dried Rose\'s ghost hero has received some buffs and adjustments to go along with other ally improvements:\n\n_-_ The ghost hero can now be given instructions by using the rose after summoning them, and tapping on a location.\n\n_-_ Ghost HP scaling increased to 8 per petal, from 4.\n_-_ Ghost evasion reduced to 1x hero evasion from 2x.\n_-_ Ghost now heals over time while they are summoned."

    invoke-direct {v4, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 138
    iget-object v12, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v12, 0x41800000    # 16.0f

    .line 140
    invoke-virtual {v4, v12, v12}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 141
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 142
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->NOISEMAKER:I

    const/4 v5, 0x0

    invoke-direct {v12, v13, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v5, "Enhanced Bomb Buffs"

    const-string v13, "Many enchant bombs are performing poorly compared to some of the more popular ones, such as holy bombs and boss bombs. While I am toning down the strongest bombs a bit, I\'m also making some pretty significant buffs to weaker bombs:\n\n_-_ Frost bomb cost down to 2 from 3, now instantly freezes enemies caught in the blast in addition to chilling.\n_-_ Woolly bomb cost down to 2 from 3, now does regular bomb damage in addition to spawning sheep.\n_-_ Noisemaker now explodes when an enemy is attracted to its location.\n_-_ Flashbang cost increased to 6 from 5, now deals regular bomb damage and debuffs in a smaller AOE.\n_-_ Shock bomb cost increased to 6 from 5, now stuns/damages immediately instead of over time with electricity.\n_-_ Regrowth bomb cost increased to 8 from 6, now heals significantly more and spawns more plants."

    invoke-direct {v4, v12, v5, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 145
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 146
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 147
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->LONGSWORD:I

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    move-object/from16 v17, v15

    const v15, 0xff4400

    move-object/from16 v18, v14

    const/high16 v14, 0x3f800000    # 1.0f

    .line 148
    invoke-direct {v13, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 149
    invoke-direct {v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Enchant/Glyph Buffs"

    const-string v13, "Continuing from the changes in 0.7.3, I\'m still watching enchantment balance and making buffs where there\'s room to do so:\n\n_-_ Blazing Enchantment bonus damage increased to 2/3 of burning damage, from 1-3.\n_-_ Shocking Enchantment damage increased to 40% from 33%.\n_-_ Blooming Enchantment chance for a second tile of grass increased to 10% per level, from 5%.\n_-_ Lucky Enchantment proc chance scaling with levels increased by ~2x.\n_-_ Corrupting Enchantment base proc chance increased to 15% from 10%, scaling reduced to compensate.\n\n_-_ Glyph of Flow now grants a flat 2x speed boost in water, up from 1.5x + 0.1x per level."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 152
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 153
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 154
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WILD_ENERGY:I

    const/4 v14, 0x0

    invoke-direct {v5, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v13, "Misc Item Buffs"

    const-string v14, "_-_ Wild energy now gives 4 turns of charging instantly, and 8 turns over time. Up from 10 turns over time.\n\n_-_ Stone of Clairvoyance radius increased to 12 from 8. This increases the area by ~2.25x.\n\n_-_ Allies are now healed by magical sleep, just like the hero."

    invoke-direct {v4, v5, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 157
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 158
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 159
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-direct {v2, v5, v4, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 160
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v5, 0xff0000

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 161
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v21, 0x0

    const/16 v22, 0x5a

    const/16 v23, 0xc

    const/16 v24, 0xf

    const-string v20, "mage.png"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v13, "Subclass Adjustments"

    const-string v14, "The Warlock is intended to require a source of physical damage in addition to a wand to be successful. Upgradeable ally wands are problematic for warlock as you can get magical power and physical damage in one item, which makes his abilities absurdly useful with them. The warlock should synergize with allies, but I have scaled the amount down to more reasonable levels:\n\n_-_ Soul mark healing increased to 40% of damage from 33%\n_-_ Soul mark is now 2/5 as effective when the damage-dealer isn\'t the hero.\n\nI\'m also making a few smaller adjustments to other subclasses which are overperforming:\n\n_-_ Berserker rate of rage loss over time increased by 33% (it is now 2/3 of what it was pre-0.7.3).\n\n_-_ Freerunner bonus evasion reduced by 20%."

    invoke-direct {v4, v5, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 165
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 166
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 167
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_MAIL:I

    new-instance v14, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v15, 0x88eeff

    move-object/from16 v19, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 168
    invoke-direct {v14, v15, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 169
    invoke-direct {v5, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v6, "Glyph Nerfs"

    const-string v13, "_-_ Glyph of Thorns bleed amount reduced to 4+lvl from 4+2*lvl, proc rate increased.\n\n_-_ Glyph of Antimagic base damage reduction reduced to 0-4 from 2-4.\n\n_-_ Glyph of Brimstone shield generation removed. The glyph now only protects the user from fire and does not also grant shielding when the user is aflame."

    invoke-direct {v4, v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 172
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 173
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 174
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARCANE_BOMB:I

    const/4 v13, 0x0

    invoke-direct {v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v6, "Enhanced Bomb Nerfs"

    const-string v13, "_-_ Holy Bomb no longer blinds characters caught in the blast, recipe cost up to 8 from 6.\n\n_-_ Arcane Bomb damage now falls off based on distance. Reduced to 100%/83%/67% from all 100%.\n\n_-_ Shrapnel Bomb damage now slightly falls off based on distance. Damage is reduced by 5% per tile of distance."

    invoke-direct {v4, v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 177
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 178
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 179
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.7.3"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 180
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 181
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    invoke-direct {v2, v6, v4, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 183
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v6, "_-_ Released May 23rd, 2019\n_-_ 66 days after Shattered v0.7.2\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v9, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 188
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 189
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 190
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->LONGSWORD:I

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v14, 0xffff00

    const/high16 v15, 0x3f800000    # 1.0f

    .line 191
    invoke-direct {v13, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 192
    invoke-direct {v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v6, "Enchantment Changes"

    const-string v13, "Several changes have been made to enchantments, based on feedback from 0.7.2:\n\n_-_ Precise and swift enchantments have been removed.\n\n_-_ Lucky and blooming are now uncommon enchants, instead of rare and common.\n\n_-_ Kinetic is a new common enchantment! This enchantment preserves excess damage when an enemy is killed and applies it to your next hit.\n\n_-_ Corrupting is a new rare enchantment! When killing an enemy, there is a chance you will corrupt it instead."

    invoke-direct {v4, v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 195
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 196
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 197
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->KUNAI:I

    const/4 v13, 0x0

    invoke-direct {v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v6, "New Thrown Weapons"

    const-string v13, "Four new thrown weapons have been added!\n\n_-_ Throwing clubs are a tier-2 weapon with extra durability\n\n_-_ Kunai are a tier-3 weapon with bonus damage on sneak attacks\n\n_-_ Heavy boomerangs are a tier-4 weapon which returns after being thrown\n\n_-_ Force cubes are a tier-5 weapon which damage enemies in a 3x3 area"

    invoke-direct {v4, v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 200
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 201
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 202
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ELIXIR_ARCANE:I

    const/4 v13, 0x0

    invoke-direct {v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v6, "New Boss Recipes"

    const-string v13, "Two new recipes have been added, one which uses goo blobs and another which uses metal shards.\n\n_-_ Elixir of arcane armor requires a goo blob and a potion of earthen armor. It grants a long-lasting resistance to magic.\n\n_-_ Wild energy requires a metal shard and a scroll of mystical energy. It grants large amounts of recharging, but with some unpredictable effects attached!"

    invoke-direct {v4, v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 205
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 206
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 207
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 208
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff8800

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 209
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;-><init>()V

    const-string v6, "Dart tipping has been removed from the alchemy system. Darts can instead be tipped right from the inventory.\n\nTipped darts have had their shop price reduced by 33%, and can now be cleaned if you don\'t wish to use the effect.\n\nThe alchemy guide has been adjusted due to the removal of dart tipping from alchemy. It now has 9 pages (down from 10), and the order of pages have been adjusted to put some simpler recipes earlier."

    invoke-direct {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 211
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 213
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 214
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 215
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v10, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "_-_ Shattered honeypots are now stackable, and can be sold for a small amount of gold.\n\n_-_ The changes list has been split into three separate groups, so that the game\'s entire change history isn\'t loaded all at once.\n\n_-_ Tengu now throws his shurikens one at a time, just like other ranged enemies. The speed of the shurikens has been increased to compensate, so that the player doesn\'t need to keep waiting while Tengu\'s attacks are in flight.\n\n_-_ After the tengu boss battle, any extra items now drop in tengu\'s cell, instead of a random prison cell.\n\n_-_ The hero will no longer step onto visible traps if that trap wasn\'t discovered when movement started.\n\n_-_ When the mage\'s staff is cursed, the wand within the staff will now also be cursed.\n\n_-_ Scrolls of transmutation can now be used on thrown weapons.\n\n_-_ Improved the coloration of crystal keys. They should now be more distinct from iron keys."

    invoke-direct {v4, v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 218
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 219
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 220
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v22, 0x90

    const/16 v23, 0x0

    const/16 v24, 0x10

    const/16 v25, 0x10

    const-string v21, "spinner.png"

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v25}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v11, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "Fixed:\n_-_ Prismatic images causing errors when falling into pits\n_-_ Secret rooms never spawning in the earlier parts of a region\n_-_ Curse of multiplicity not working correctly on boss floors\n_-_ Curse of multiplicity closing doors when it shouldn\'t\n_-_ Ring of wealth rarely generating items which are blocked by challenges\n_-_ Windows rarely appearing in places they shouldn\'t\n_-_ Odd behaviour when the player is killed by electricity or a grim weapon\n_-_ Explosions destroying armor with the warrior\'s seal on it\n_-_ Various minor visual bugs\n_-_ Various rare crash bugs"

    invoke-direct {v4, v5, v6, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 223
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 224
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 225
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v14, v18

    invoke-static {v1, v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v15, v17

    invoke-direct {v4, v6, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 228
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 229
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 230
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v6, v16

    invoke-static {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-direct {v2, v5, v4, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 231
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff00

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 232
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v22, 0x0

    const/16 v23, 0x5a

    const/16 v24, 0xc

    const/16 v25, 0xf

    const-string v21, "warrior.png"

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v25}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v13, "Berserker & Gladiator"

    const-string v15, "Because of nerfs I have made to the scaling of the warrior\'s shield regen, I have some power budget to give to his subclasses!\n\nBerserker rate of rage loss decreased by 50%. It should now be easier to hold onto rage at higher health, but being injured will still help to retain it longer.\n\nGladiator is now significantly more flexible:\n_-_ Using items no longer resets combo\n_-_ Throwing weapons now increment combo\n_-_ Slam ability now deals damage based on armor, instead of simply increasing damage."

    invoke-direct {v4, v5, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 236
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 237
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 238
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CURSE_INFUSE:I

    const/4 v15, 0x0

    invoke-direct {v5, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v13, "Boss Recipe Buffs"

    const-string v15, "All recipes made with ingredients dropped by bosses have been buffed (except bombs):\n\n_-_ Caustic brew now affects a 7x7 area, up from 5x5. Energy cost of caustic brew reduced to 4 from 8.\n\n_-_ Elixir of aquatic rejuvenation now heals faster, and does not waste healing if the hero is not in water. Total amount of healing reduced to compensate.\n\n_-_ Curse Infusion now grants a single upgrade to wands/weapons/armor in addition to cursing. This upgrade is lost if the item is uncursed.\n\n_-_ Reclaim trap no longer grants recharging, now stores the trap instead. The trap can then be triggered anywhere the player likes."

    invoke-direct {v4, v5, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 241
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 242
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 243
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_EMERALD:I

    const/4 v15, 0x0

    invoke-direct {v5, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v13, "Other Item Buffs"

    const-string v15, "_-_ Ring of elements now grants 20% resistance per level, up from 16%. However, ring of elements also no longer applies to melee attacks from magic-wielding enemies.\n\n_-_ Throwing stone base damage increased to 2-5 from 1-5\n_-_ Throwing stone durability increased to 5 from 3\n\n_-_ Throwing hammer base damage increased to 10-20 from 8-20"

    invoke-direct {v4, v5, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 246
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 247
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 248
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_SCALE:I

    new-instance v15, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v6, 0x663300

    const/high16 v14, 0x3f800000    # 1.0f

    .line 249
    invoke-direct {v15, v6, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 250
    invoke-direct {v5, v13, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v6, "_-_ Vampiric now has a chance to heal for large amounts, instead of always healing for small amounts.\n\n_-_ Entanglement no longer roots, now only applies herbal armor buff. Amount of herbal armor granted reduced to compensate.\n\n_-_ Affection charm duration up to 8-12 from 4-12. This means an affection proc now guarantees a free hit.\n\n_-_ Potential no longer grants small amounts of partial charge on every hit, now has a chance to grant one full charge instead. Overall amount of charge given increased by ~20%."

    invoke-direct {v4, v5, v12, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 253
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 254
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 255
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v6, v19

    invoke-static {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-direct {v2, v5, v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 256
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v5, 0xff0000

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 257
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Tomahawk;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Tomahawk;-><init>()V

    const-string v12, "The Tomahawk has been adjusted to make its damage more upfront, but also to reduce its extreme damage scaling with upgrades.\n\n_-_ Tomahawk damage scaling increased to 2-4 per level, up from 2-2\n_-_ Tomahawk bleed damage now starts at 60% of damage, down from 100%"

    invoke-direct {v4, v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 259
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 261
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 262
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 263
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v21, 0x0

    const/16 v22, 0xf

    const/16 v23, 0xc

    const/16 v24, 0xf

    const-string v20, "warrior.png"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v12, "Warrior Nerfs"

    const-string v13, "Warrior shielding regeneration scaling reduced. It is now a flat 1 shield every 30 turns. This is a very slight buff to the earlygame, and a significant nerf to the lategame.\n\nI made this change as too much of the warrior\'s power was put into his base class, and into a passive ability that players tend to ignore. By removing this power, I can put more power into the warrior\'s subclasses, which should make the warrior feel more fun and interesting without significantly nerfing him overall."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 266
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 267
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 268
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x10

    const-string v20, "terrain_features.png"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v12, "Trap Adjustments!"

    const-string v13, "Several traps have been slightly adjusted due to reclaim trap\'s new functionality:\n\n_-_ Disintegration trap no longer deals damage based on target HP\n_-_ Flock trap duration no longer scales with depth\n_-_ Bosses now resist grim traps, Yog is immune\n_-_ Pitfall traps do not work on boss floors\n_-_ Reduced poison dart trap damage scaling\n_-_ Rockfall traps trigger in a 5x5 AOE when cast from reclaim trap\n_-_ Bosses will resist weakening traps"

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 271
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 272
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 273
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_PLATE:I

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v14, 0x660022

    const/high16 v15, 0x3f800000    # 1.0f

    .line 274
    invoke-direct {v13, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 275
    invoke-direct {v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Enchant/Glyph Nerfs"

    const-string v13, "_-_ Chilling now only stacks the chilled debuff up to 6 turns.\n\n_-_ Thorns now bleeds enemies for a set amount based on armor level, instead of scaling with damage dealt.\n\n_-_ Antimagic no longer affects the melee attacks of magic wielding enemies.\n_-_ Antimagic no longer bases its blocking power on armor directly, now uses its own calculation which scales on level. This is a slight boost for lower tier armors and a nerf for higher tier ones."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 278
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 279
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 280
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.7.2"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 281
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 282
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v2, v12, v4, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 284
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 285
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v12, "_-_ Released Mar 18th, 2019\n_-_ 90 days after Shattered v0.7.1\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v9, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 289
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 290
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 291
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_CATALYST:I

    invoke-direct {v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Catalysts!"

    const-string v13, "Added two new recipes: _Alchemical Catalysts_ and _Arcane Catalysts._\n\nThese catalysts are made with any potion/scroll, and a seed/runestone. They replace many specific items for higher-cost recipes. Alchemy should be much more flexible now!\n\nAdditional Alchemy Changes:\n\nWhen a recipe asks for any item of a certain type that item no longer has to be identified.\n\nAlchemy guidebook pages now spawn more slowly at earlier stages of the game, and significantly faster at later stages of the game."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 294
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 295
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 296
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->LONGSWORD:I

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/16 v14, 0xff

    .line 297
    invoke-direct {v13, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 298
    invoke-direct {v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Enchantment Overhaul!"

    const-string v13, "Enchantments have been significantly rebalanced to be less about direct damage and more about utility and situational power. Their design should now be more similar to glyphs.\n\nBuffed Enchants: Chilling, Lucky.\n\nNerfed Enchants: Blazing, Shocking, Grim, Vampiric\n\nRemoved Enchants: Vorpal, Venomous, Dazzling, Eldritch, and Stunning.\n\nNew Enchants: Blocking, Blooming, Elastic (formerly a curse), Precise, and Swift.\n\nNew Curse: Polarized.\n\nSome battlemage effects have been adjusted to accommodate these new enchantments. Most of these are very minor, except staff of regrowth, which now procs blooming."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 301
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 302
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 303
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->MAGIC_INFUSE:I

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Enchantment Adjustments"

    const-string v13, "_-_ Significantly adjusted when enchants/glyphs are lost when items are upgraded. Items are now always safe up to +4, then have a growing chance until +8 where enchantment loss is guaranteed.\n\n_-_ Upgrades now have a set 33% chance to cleanse curses, instead of a chance which scales with level.\n\nMagical Infusion spell adjusted:\n_-_ Recipe changed to: upgrade + catalyst + 4 energy.\n_-_ No longer applies an enchant/glyph, instead is guaranteed to preserve one while upgrading."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 306
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 307
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 308
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-direct {v2, v5, v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 309
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xff8800

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 310
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BREW_INFERNAL:I

    invoke-direct {v5, v13, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Combination Items"

    const-string v13, "The following combination items are no longer craftable, and are effectively removed from the game:\n_-_ Wicked Brew\n_-_ Frigid Brew\n_-_ FrostFire Brew\n_-_ Elixir of Restoration\n_-_ Elixir of Vitality\n\nThese items offered no unique gameplay and existed purely to give a few cheap recipes. Thanks to catalysts filling that role, they no longer have a reason to exist. FrostFire Brew in particular may return in some form."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 314
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 315
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 316
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v10, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "_-_ The Identification system has been adjusted to require EXP gain in addition to item uses. This change prevents exploits where an item could be used in unintended ways to rapidly ID it. Items should ID at about the same rate if exp is gained while using them.\n\n_-_ Increased the max level to gain exp from gnoll brutes and cave spinners by 1.\n\n_-_ Sniper\'s mark now lasts for 2 turns, up from 1. This should make it easier to use with slow weapons, or while slowed.\n\nElixir of Might reworked:\n_-_ Recipe changed to: strength + catalyst + 5 energy\n_-_ Health boost now scales up with level, but fades after the hero gains a few levels\n\n_-_ Meat Pie recipe cost reduced from 9 to 6, total healing reduced from 45 to 25\n\n_-_ Added a privacy policy link to the Google Play edition of Shattered."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 319
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 320
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 321
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const/16 v12, 0x90

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/16 v15, 0x10

    const-string v20, "spinner.png"

    move-object/from16 v19, v5

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v1, v11, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v14, "Fixed:\n_-_ Various rare crash bugs\n_-_ Various minor visual bugs\n_-_ Grim enchant activating when an enemy is already dead\n_-_ Burning destroying scrolls when the hero is immune to it\n_-_ Chasms killing enemies which are already dead in some cases\n_-_ Thieves not correctly interacting with quickslotted items\n_-_ Screen orientation not always being set when game starts\n_-_ Flying characters pushing the ground after teleporting\n_-_ Bombs rarely damaging tengu multiple times\n_-_ Thrown weapons instantly breaking in rare cases\n_-_ Dwarf King summoning skeletons while frozen\n_-_ Incorrect behaviour when wands recharge very quickly\n_-_ Thieves rarely escaping when they are close\n_-_ Beacon of returning losing set location when scroll holder is picked up\n_-_ Recycle not giving an item if inventory is full\n_-_ Rare cases where the game wouldn\'t save during alchemy"

    invoke-direct {v4, v5, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 324
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 325
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 326
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v15, v18

    invoke-static {v1, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v13, "Updated Translations\n\nUpdated Translator Credits"

    invoke-direct {v4, v5, v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 329
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 330
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 331
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v1, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Major internal improvements to service integrations for Google Play version of the game:\n_-_ \'Share Gameplay Data\' now uses Google Firebase Analytics instead of older Google Analytics. Data collected is unchanged.\n_-_ Many internal improvements to Google Play Games sync and Google Payment integration.\n_-_ Item renaming donation perk now applies to wands.\n\n_-_ Added support for adaptive icons in Android 8.0+.\n_-_ Improved how the game handles orientation changes and window resizing.\n_-_ Shocking enchantment no longer visually arcs lightning to the hero."

    invoke-direct {v4, v5, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 334
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 335
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 336
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/watabou/noosa/Image;

    const-string v20, "spinner.png"

    move-object/from16 v19, v5

    const/4 v12, 0x0

    move/from16 v22, v12

    const/16 v12, 0x10

    move/from16 v23, v12

    const/16 v12, 0x10

    move/from16 v24, v12

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v1, v11, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Fixed (existed before 0.7.2):\n_-_ Cloak of Shadows very rarely consuming more charges than it should\n_-_ Assassin\'s blink not working on enemies standing on traps\n_-_ Glyph of stone blocking an incorrect amount of damage (too low) in some cases\n_-_ Hourglass not updating charges correctly in some cases\n_-_ Blandfruit bush rarely appearing in \'on diet\' challenge\n_-_ Strength from ring of might not appearing in rankings\n_-_ Multiplicity curse spawning rats on floor 5\n_-_ Dried rose rarely being usable before completing ghost quest\n_-_ Corrupted thieves being able to steal from the hero\n_-_ Rare crashes involving rankings windows\n_-_ Crashes and other odd behaviour when a berserking hero is affected by shielding buffs\n_-_ Tengu spawning on top of other characters\n_-_ Cloak of shadows only being usable from quickslots if it has 1 charge"

    invoke-direct {v4, v5, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 339
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 340
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 341
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v12, [Ljava/lang/Object;

    move-object/from16 v5, v16

    invoke-static {v1, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-direct {v2, v4, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 342
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v12, 0xff00

    invoke-virtual {v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 343
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfTransfusion;

    invoke-direct {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfTransfusion;-><init>()V

    const-string v13, "Wand of Transfusion changed significantly when used on enemies:\n_-_ No longer self-harms, now grants a mild self-shield instead\n_-_ Charm duration no longer scales with level, damage to undead enemies reduced"

    invoke-direct {v4, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 345
    iget-object v12, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v12, 0x41800000    # 16.0f

    .line 347
    invoke-virtual {v4, v12, v12}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 348
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 349
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_AMETHYST:I

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-class v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    const-string v5, "name"

    invoke-static {v13, v5, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "Ring of Wealth significantly buffed:\n_-_ Special item drops now happen ~50% more often\n_-_ The ring of wealth now awards a greater variety of items from special drops\n_-_ special wealth drops have a 1/10 chance to award a high value item\n_-_ Wraiths and minion enemies no longer have a chance to generate wealth items"

    invoke-direct {v4, v12, v5, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 352
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 353
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 354
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SPEAR:I

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v14, 0xffff

    const/high16 v15, 0x3f800000    # 1.0f

    .line 355
    invoke-direct {v13, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 356
    invoke-direct {v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Buffed Enchants"

    const-string v13, "_-_ Chilling now stacks with itself over multiple procs\n\n_-_ Lucky buffed/reworked. No longer affects damage, now generates bonus items when enemies are killed with a lucky weapon."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 359
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 360
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 361
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SEED_SWIFTTHISTLE:I

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Item Balance Adjustments"

    const-string v13, "Several seeds and stones have been buffed:\n_-_ Player can now move without cancelling swiftthistle\'s effect\n_-_ Duration of poison from sorrowmoss increased by ~33%\n_-_ Increased the strength of warden\'s earthroot effect\n_-_ Stone of clairvoyance no longer disarms traps, now goes through walls instead\n_-_ Stone of detect curse is reworked, now stone of disarming. Disarms up to 9 traps where it is thrown.\n_-_ Stone of aggression now forces enemies to attack a target. Duration is longer if thrown at allies.\n\n_-_ Scroll of teleportation now teleports the player to the entrance of secret/special rooms instead of into them\n\n_-_ Blessed ankhs now cure the same debuffs as a potions of healing\n\nFire and toxic gas have been adjusted to deal damage based on dungeon depth, and not target max health. This means more damage versus regular enemies, and less versus bosses. Several bosses have lost their resistances to these effects as a result of this change."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 364
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 365
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 366
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-direct {v2, v5, v4, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 367
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v5, 0xff0000

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 368
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->DIRK:I

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v14, 0xff4400

    .line 370
    invoke-direct {v13, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 371
    invoke-direct {v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v12, "Nerfed Enchants"

    const-string v13, "_-_ Blazing no longer deals direct damage, now instead is more likely to set enemies on fire.\n\n_-_ Shocking no longer deals damage to enemy being attacked, deals more damage to surrounding enemies.\n\n_-_ Vampiric now grants less health when hero is at higher HP.\n\n_-_ Grim is now more likely to \'finish off\' an enemy, but is less likely to activate at higher enemy health."

    invoke-direct {v4, v5, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 374
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 375
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 376
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v4, "v0.7.1"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 377
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v4, 0xffff44

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 378
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v2, v5, v3, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 380
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 381
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v4

    const-string v5, "_-_ Released Dec 18th, 2018\n_-_ 61 days after Shattered v0.7.0\n\nDev commentary will be added here in the future."

    invoke-direct {v3, v4, v9, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 385
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 386
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 387
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/watabou/noosa/Image;

    const/4 v5, 0x0

    const/16 v22, 0xf

    const/16 v7, 0xc

    const/16 v9, 0xf

    const-string v20, "huntress.png"

    move-object/from16 v19, v4

    move/from16 v21, v5

    move/from16 v23, v7

    move/from16 v24, v9

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v12, "Huntress Reworked!"

    const-string v13, "The Huntress has received a class overhaul!\n\nHer boomerang has been replaced with a bow. The bow has infinite uses, like the boomerang, but cannot be upgraded directly, instead it will grow stronger as the huntress levels up.\n\nHer knuckledusters have been replaced with studded gloves. This change is purely cosmetic.\n\nThose with runs in progress will have their boomerang turn into a bow, and will regain most of the scrolls of upgrade spent on the boomerang.\n\nThe huntress can now also move through grass without trampling it (she \'furrows\' it instead)."

    invoke-direct {v3, v4, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 390
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 391
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 392
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/watabou/noosa/Image;

    const/16 v22, 0x5a

    const-string v20, "huntress.png"

    move-object/from16 v19, v4

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v7, "Huntress Subclasses Reworked!"

    const-string v9, "Huntress subclasses have also received overhauls:\n\nThe Sniper can now see 50% further, penetrates armor with ranged attacks, and can perform a special attack with her bow.\n\nThe Warden can now see through grass and gains a variety of bonuses to plant interaction."

    invoke-direct {v3, v4, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 395
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 396
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 397
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->TRIDENT:I

    const/4 v9, 0x0

    invoke-direct {v4, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v7, "Thrown Weapon Improvements"

    const-string v9, "Thrown weapons now show their tier, ranging from 1-5 like with melee weapons.\n\nAll Heroes now benefit from excess strength on thrown weapons.\n\nThrown weapons now get +50% accuracy when used at range.\n\nThrown weapons can now be upgraded!\n_-_ Upgrades work on a single thrown weapon\n_-_ Increases damage based on tier\n_-_ Gives 3x durability each upgrade\n_-_ Weapons with 100+ uses now last forever\n_-_ Darts are not upgradeable, but tipped darts can get extra durability\n\nRing of sharpshooting has been slightly adjusted to tie into this new upgrade system."

    invoke-direct {v3, v4, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 400
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 401
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 402
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v8, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {v2, v4, v3, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 403
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v4, 0xff8800

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 404
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->image(I)Lcom/watabou/noosa/Image;

    move-result-object v4

    const-string v7, "Hero Class changes"

    const-string v8, "All heroes except the warrior now need to be unlocked via new badges. The requirements are quite simple, with the goal of giving new players some early goals. Players who have already unlocked characters will not need to re-unlock them.\n\nTo help accelerate item identification for alchemy, all heroes now start with 3 identified items: The scroll of identify, a potion, and another scroll."

    invoke-direct {v3, v4, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 408
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 409
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 410
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v10, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Added a partial turn indicator to the game interface, which occupies the same spot as the busy icon. This should make it much easier to plan actions that take more or less than 1 turn.\n\nRings now have better descriptions for their stats! All rings now show exactly how they affect you in a similar way to how other equipment gives direct stats.\n\nPrecise descriptions have been added for weapons which block damage.\n\nAdded item stats to the item catalog.\n\nDropping an item now takes 1 turn, up from 0.5 turns."

    invoke-direct {v3, v4, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 413
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 414
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 415
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/watabou/noosa/Image;

    const/16 v21, 0x90

    const/16 v23, 0x10

    const/16 v24, 0x10

    const-string v20, "spinner.png"

    move-object/from16 v19, v4

    move/from16 v22, v5

    invoke-direct/range {v19 .. v24}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v11, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Fixed:\n_-_ various crash bugs\n_-_ various minor visual bugs\n_-_ recycle being able to produce health potions with pharmacophobia enabled\n_-_ magical porter soft-locking the game in rare cases\n_-_ mystical energy recharging some artifacts incorrectly\n_-_ health potion limits not applying to prison guards\n_-_ traps with ground-based effects affecting flying characters\n_-_ odd behaviour when transmuting certain items\n_-_ keys rarely spawning without chests\n_-_ fireblast rarely damaging things it shouldn\'t\n_-_ dew drops from dew catchers landing on stairs\n_-_ ankh revive window rarely closing when it shouldn\'t\n_-_ flock and summoning traps creating harsh sound effects\n_-_ thrown weapons being lost when used on sheep\n_-_ various specific errors when actions took more than 1 turn\n_-_ various freeze bugs caused by Tengu"

    invoke-direct {v3, v4, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 418
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 419
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 420
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v4

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    move-object/from16 v8, v18

    invoke-static {v1, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Updated translations\n\nUpdated translator credits"

    invoke-direct {v3, v4, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 423
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 424
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 425
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v3, v5, [Ljava/lang/Object;

    move-object/from16 v4, v16

    invoke-static {v1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 426
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v4, 0xff00

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 427
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/watabou/noosa/Image;

    const/4 v9, 0x0

    const/16 v10, 0xf

    const/16 v11, 0xc

    const/16 v12, 0xf

    const-string v8, "rogue.png"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v5, "Hero Buffs"

    const-string v7, "_-_ Rogue\'s cloak of shadows base charge speed increased by ~11%, scaling reduced to compensate.\n\n_-_ Warlock\'s soul mark base chance increased to 15% from 10%, scaling reduced to compensate.\n\n_-_ Warlock\'s soul mark hunger restoration increased by 100%, health restoration increased by 33%."

    invoke-direct {v3, v4, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 431
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 432
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 433
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_TOPAZ:I

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v5, "Various Item Buffs"

    const-string v7, "_-_ Ring of energy simplified/buffed. Now grants a flat +25% charge speed per level, instead of +1 effective missing charge per level\n\n_-_ Ring of elements power increased to 16% from 12.5%\n\n_-_ Ring of wealth \'luck\' bonus increased to 20% from 15%\n\n_-_ Bolas base damage increased to 6-9 from 4-6\n\n_-_ Wand of regrowth now spawns furrowed grass when it begins to run out of energy due to excessive use, instead of short grass.\n\nWand of fireblast buffed:\n_-_ shot distance at 3 charges reduced by 1\n_-_ damage at 1 charge reduced slightly\n_-_ damage at 2/3 charges increased by ~15%"

    invoke-direct {v3, v4, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 436
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 437
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 438
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_LEATHER:I

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v8, 0x222222

    const/high16 v9, 0x3f800000    # 1.0f

    .line 439
    invoke-direct {v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 440
    invoke-direct {v4, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v5, "Other Buffs"

    const-string v7, "_-_ vorpal enchant bleed reduced by 20%\n\n_-_ glyph of potential wand charge bonus increased by 20%\n\n_-_ glyph of stone evasion conversion efficiency increased to 75% from 60%"

    invoke-direct {v3, v4, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 443
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 444
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 445
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/watabou/noosa/Image;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0xe

    const/16 v12, 0x10

    const-string v8, "king.png"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v5, "Dwarf King"

    const-string v7, "While I would like to make more extensive changes to Dwarf King in the future, I\'ve made a couple smaller tweaks for now to make him harder to cheese:\n\n_-_ Dwarf King is now able to summon skeletons even if he cannot see the hero\n_-_ Dwarf King is now resistant to fire and toxic gas"

    invoke-direct {v3, v4, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v4, 0x41800000    # 16.0f

    .line 448
    invoke-virtual {v3, v4, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 449
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 450
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 451
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v3, 0xff0000

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 452
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/watabou/noosa/Image;

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/16 v7, 0xc

    const/16 v8, 0xf

    const-string v4, "warrior.png"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v3, "Warrior Nerfs"

    const-string v4, "_-_ Warrior\'s shielding regen scaling reduced by ~15%. This is primarily a lategame nerf."

    invoke-direct {v1, v9, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v2, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v3, 0x41800000    # 16.0f

    .line 456
    invoke-virtual {v1, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 457
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 458
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_RUBY:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v4, "Ring Nerfs"

    const-string v5, "Ring of furor has been nerfed/simplified:\n_-_ Now provides a flat +10.5% attack speed per level, instead of speed which scales based on how slow the weapon is.\n\nThis means the ring is effectively nerfed for slow weapons and regular weapons, and slightly buffed for fast weapons. A +6 ring grants almost exactly doubled attack speed.\n\n\nThe ring of force\'s equipped weapon bonus was always meant as a small boost so it wasn\'t useless if the player already had a better weapon. It wasn\'t intended to be used to both replace melee and then boost thrown weapons.\n_-_ The ring of force no longer gives bonus damage to thrown weapons."

    invoke-direct {v1, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v2, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v3, 0x41800000    # 16.0f

    .line 461
    invoke-virtual {v1, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 462
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 463
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gauntlet;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gauntlet;-><init>()V

    const-string v5, "As furor now works much better with fast weapons, I\'ve taken the opportunity to very slightly nerf sai and gauntlets\n\n_-_ Sai blocking down to 0-2 from 0-3\n_-_ Gauntlet blocking down to 0-4 from 0-5"

    invoke-direct {v1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 464
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {v2, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 466
    invoke-virtual {v1, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 467
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 468
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Shuriken;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Shuriken;-><init>()V

    const-string v5, "Shuriken have been adjusted due to the new upgrade system:\n\n_-_ Base damage increased to 4-8 from 4-6\n_-_ Durability reduced to 5 from 10"

    invoke-direct {v1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 469
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-virtual {v2, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 471
    invoke-virtual {v1, v3, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 472
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 473
    invoke-static/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->add_v0_7_0_Changes(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static add_v0_7_0_Changes(Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v3, "v0.7.0"

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v4, 0xffff44

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "new"

    invoke-static {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 5
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v5

    const-string v7, "Developer Commentary"

    const-string v8, "_-_ Released Oct 18th, 2018\n_-_ 501 days after Shattered v0.6.0\n_-_ 168 days after Shattered v0.6.5\n\nDev commentary will be added here in the future."

    invoke-direct {v4, v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v5, 0x41800000    # 16.0f

    .line 10
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 11
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 12
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v13, Lcom/watabou/noosa/Image;

    const/16 v9, 0x30

    const/16 v10, 0x60

    const/16 v20, 0x10

    const/16 v21, 0x10

    const-string v8, "tiles_sewers.png"

    move-object v7, v13

    move/from16 v11, v20

    move/from16 v12, v21

    invoke-direct/range {v7 .. v12}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v7, "Alchemy Overhaul!"

    const-string v8, "The game\'s alchemy system has been entirely overhauled!\n\nAlchemy is now a full consumable crafting system which lets you create all kinds of new items.\n\nThere is also a new resource: alchemical energy. Every alchemy pot has some energy within it. Some recipes require this energy, so make sure to use it wisely!\n\nAll of this is explained in a new guidebook specifically for alchemy. Pages of it can be found in alchemy rooms. Existing players will be given some pages automatically to get started."

    invoke-direct {v4, v13, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 16
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 17
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;-><init>()V

    const-string v8, "The Alchemist\'s Toolkit returns!\n\nThe toolkit can be found like any other artifact, and acts as a sort of horn of plenty for the new alchemical energy resource."

    invoke-direct {v4, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 18
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 22
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/watabou/noosa/Image;

    const/16 v16, 0x20

    const/16 v17, 0x70

    const-string v15, "terrain_features.png"

    move-object v14, v7

    move/from16 v18, v20

    move/from16 v19, v21

    invoke-direct/range {v14 .. v19}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v8, "New Consumables"

    const-string v9, "Added a new scroll, potion, and plant!\n\n_-_ Scroll of transmutation is a rare scroll which allows the user to change an item into another one of the same type. Note that it cannot be used to make scrolls of magical infusion.\n\n_-_ Potion of haste is an uncommon potion which grants a temporary burst of speed.\n\n_-_ Swiftthistle is the plant counterpart to potions of haste. Both the plant and tipped dart give various speed or time-based buffs."

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 26
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 27
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_BLINK:I

    invoke-direct {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v8, "Runestones"

    const-string v9, "Added 10 new runestones, and runestone crafting!\n\nTwo or three runestones can be crafted by using a scroll with an alchemy pot.\n\nRunestones give various effects that are similar in theme to their scroll counterpart.\n\nRunestones also naturally appear in alchemy rooms, and a new special room type."

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 30
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 31
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 32
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->EXOTIC_AMBER:I

    invoke-direct {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v8, "Exotic Potions"

    const-string v9, "Added 12 new potions which can be created through alchemy!\n\nMix a potion and any two seeds to create an exotic potion with unique effects.\n\nExotic Potions are only available through alchemy, or by transmuting a regular potion."

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 35
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 36
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 37
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->EXOTIC_ISAZ:I

    invoke-direct {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v8, "Exotic Scrolls"

    const-string v9, "Added 12 new scrolls which can be created through alchemy!\n\nMix a scroll and any two runestones to create an exotic scroll with unique effects.\n\nExotic Scrolls are only available through alchemy, or by transmuting a regular scroll."

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 40
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 41
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 42
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RETURN_BEACON:I

    invoke-direct {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v8, "New Recipes!"

    const-string v9, "Added ~40 other items which can be created through alchemy!\n\nMost of these recipes require alchemical energy, and information about them can be found within alchemy guidebook pages in the prison and deeper in the dungeon.\n\nAll of these items are only available through alchemy."

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 45
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 46
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 47
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "changes"

    invoke-static {v1, v7, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 48
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v7, 0xff8800

    invoke-virtual {v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_ARMBAND:I

    invoke-direct {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v8, "Spawn Rate Changes"

    const-string v9, "_-_ Master Thieves\' Armband is now a regularly dropping artifact.\n_-_ Thieves now rarely drop a random ring or artifact instead of the armband.\n\n_-_ Blandfruit seeds and wells of transmutation have been removed.\n_-_ Potion of Might and Scroll of Magical infusion are now produced through alchemy.\n_-_ Transmuting potions/scrolls now gives their exotic variant, and vice-versa.\n\n_-_ One runestone of enchantment and one runestone of intution are guaranteed per run.\n_-_ Potion and scroll drops are now slightly more varied.\n_-_ Reduced the droprate of bombs.\n\n_-_ Adjusted enchant/glyph probabilities slightly. rare ones should be slightly more common.\n\n_-_ There is now a guaranteed alchemy room every chapter."

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 53
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 54
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 55
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_BEACON:I

    invoke-direct {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v8, "Boss reward changes"

    const-string v9, "Boss rewards have been significantly adjusted:\n\n_-_ Lloyd\'s beacon and Cape of Thorns no longer drop, they are effectively removed from the game.\n\n_-_ Goo and DM-300 now drop unique alchemy ingredients instead.\n\n_-_ Lloyd\'s beacon has been replaced by alchemy recipes, Cape of Thorns will likely return in some form in the future."

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 58
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 59
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 60
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;-><init>()V

    const-string v8, "Blandfruit has been changed to be more consistent with potions.\n\nAll blandfruit types now exactly mimic their potion counterparts, there are now no blandfruit-exclusive effects.\n\nWhen a thrown blandfruit shatters, it will now leave behind blandfruit chunks, which can be eaten. This allows offensive blandfruits to be used without losing their food value.\n\nThe previous unique mechanics of earthfruit, sorrowfruit, and firefruit have been recycled into the new alchemy system."

    invoke-direct {v4, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 61
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 63
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 64
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 65
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;-><init>()V

    const-string v8, "The unstable spellbook has received a mini-rework to go along with the new exotic scrolls.\n\n_-_ Previous enhanced scroll mechanic removed.\n\n_-_ Feeding a scroll to the spellbook now allows you to use either that scroll, or its exotic equivalent.\n\n_-_ Using the exotic variant of a scroll costs 2 charges instead of 1.\n\n_-_ Charge speed at low levels increased. Max charges increased to 8 from 6."

    invoke-direct {v4, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 66
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 68
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 69
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 70
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "misc"

    invoke-static {v1, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_-_ Potions which should be thrown can now be thrown from the quickslot, if they are IDed.\n_-_ Thrown items and wand zaps now go through tall grass.\n_-_ Expanded what items bags can carry. Most alchemy produce can fit in a bag, magical holster now holds bombs.\n\n_-_ Caustic ooze now lasts a max of 20 turns.\n_-_ Bleeding damage is now more consistent.\n\n_-_ Adjusted the text for breaking paralysis.\n_-_ Adjusted various potion/plant/seed sprites.\n_-_ Healing now has an icon and description.\n_-_ Improved the layering system for raised terrain like grass.\n_-_ Added an ingame version indicator.\n_-_ Added a new indicator for when an item is not identified, but known to be uncursed.\n\n_-_ Improved payment & sync functions on Google Play version.\n\n_-_ Adjusted bone pile functionality to make it more clear that a spawning wraith means an item is cursed."

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 73
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 74
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 75
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/watabou/noosa/Image;

    const/16 v16, 0x90

    const/16 v17, 0x0

    const-string v15, "spinner.png"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "bugfixes"

    invoke-static {v1, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "Fixed:\n_-_ Various rare crash and freeze bugs\n_-_ Various audio and visual bugs\n_-_ Sad Ghost attacking nonexistent enemies\n_-_ Various rare cases where item windows could stack\n_-_ Cases where projectiles would disappear\n_-_ Multiplicity curse duplicating projectiles\n_-_ Lucky enchant not correctly scaling with upgrades\n_-_ Various effects incorrectly working on dead characters\n_-_ Wands never appearing in heroes remains\n_-_ Remains rarely appearing inside bookcases on floor 20\n_-_ Wand of corruption doing nothing to corrupted enemies\n_-_ Augmented weapons rarely having inconsistent speed\n_-_ Scroll of upgrade revealing curses on unidentified items\n_-_ Item curses rarely not being revealed when they should be\n_-_ Assassin buffs not being cleared when they should in some cases\n_-_ Rooting not working correctly on retreating enemies\n_-_ Searching spending hunger in a locked level\n_-_ \'Faith is my armor\' deleting class armors\n_-_ Various cases where the player can be ontop of enemies"

    invoke-direct {v4, v7, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 78
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 79
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 80
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/watabou/noosa/Image;

    const/16 v12, 0x90

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/16 v15, 0x10

    const-string v11, "spinner.png"

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v1, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Fixed:\n_-_ Various screen layout issues in power saver mode\n_-_ Crashes when tengu is healed above 1/2 health\n_-_ Bolas incorrectly requiring 15 strength\n_-_ Non-heroes being able to use reach weapons through walls\n_-_ Antimagic glyph applying to more effects when used by the sad ghost\n_-_ Some items not being known as uncursed when sold from shops\n_-_ Obfuscation glyph not improving every upgrade\n_-_ Magical sleep rarely cancelling paralysis\n_-_ Exploits where bone piles could be used to check if an item was cursed"

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 83
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 84
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 85
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "language"

    invoke-static {v1, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Updated Translations\n\nUpdated translator credits\n\nAdded new language: Basque!"

    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 88
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 89
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 90
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "buffs"

    invoke-static {v1, v7, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 91
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v7, 0xff00

    invoke-virtual {v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfTransfusion;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfTransfusion;-><init>()V

    const-string v8, "Wand of transfusion has been rebalanced, with an emphasis on making it much more useful in conjunction with weaker allies:\n\n_-_ Using the wand still costs 10% max hp\n\n_-_ Ally healing adjusted to 10% of user max HP + a flat 3 per level, from 30% + 3%/lvl missing hp\n\n_-_ Ally healing can now overheal up to whatever the max healing per shot is\n\n_-_ Undead damage is is now the same as ally healing, from 30% + 5%/lvl max hp\n\n_-_ Charming is now more powerful at higher wand levels\n\n_-_ All other transfusion functionality has been removed"

    invoke-direct {v4, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 94
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 96
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 97
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 98
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SCROLL_KAUNAN:I

    invoke-direct {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;-><init>()V

    .line 99
    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v9, "The scroll of teleportation has been buffed. It now prioritizes sending the user to rooms they have not seen yet, and can teleport to secret rooms."

    .line 100
    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 103
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 104
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 105
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SCROLL_ODAL:I

    invoke-direct {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMirrorImage;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMirrorImage;-><init>()V

    .line 106
    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v9, "Scroll of mirror image has been adjusted to have more interactions with other items, but to also be less powerful at base:\n\n_-_ Scroll now spawns 2 images, down from 3\n\n_-_ Mirror images now attack with the hero\'s weapon, at 50% damage\n\n_-_ Images no longer fade after a successful attack, instead they pull enemy aggro\n\n_-_ Images start out invisible, have 1 hp, no blocking power, but do inherit some of the hero\'s evasion."

    .line 107
    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 110
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 111
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 112
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SCROLL_NAUDIZ:I

    invoke-direct {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTerror;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTerror;-><init>()V

    .line 113
    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v9, "Terror now has it\'s duration reduced by 5 whenever damage is taken, rather than being removed entirely. Scroll of terror duration has been increased to 20 from 10.\n\nCharm now has it\'s duration reduced by 5 whenever damage is taken, rather than not losing any duration. Succubi have been given a life-drain ability in compensation, and various charming effects have had their durations adjusted."

    .line 114
    invoke-direct {v4, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 117
    invoke-virtual {v4, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 118
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 119
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "nerfs"

    invoke-static {v1, v7, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 120
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v3, 0xff0000

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;-><init>()V

    const-string v3, "Wand of regrowth will now cease producing plants if it is overused. Charges spent before it begins degrading will increase if the wand is upgraded. At +12 the wand will function infinitely.\n\nThis change is made to combat farming with low-levelled wands of regrowth. Especially with the alchemy changes this would be far too powerful. Infinite farming is still possible, but requires upgrades."

    invoke-direct {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 123
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 125
    invoke-virtual {v0, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 126
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 127
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SCROLL_GYFU:I

    invoke-direct {v1, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;-><init>()V

    .line 128
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v4, "The scroll of psionic blast is now known as the scroll of retribution:\n_-_ removed damage and stun penalty, now self-weakens instead\n_-_ now blinds enemies as well as the player\n_-_ damage dealt now scales with missing player HP. At very low HP scroll is still an instakill on most enemies\n\nScroll of psionic blast still exists however. It is now an exotic scroll!"

    .line 129
    invoke-direct {v0, v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 132
    invoke-virtual {v0, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 133
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 134
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_CRIMSON:I

    invoke-direct {v1, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;-><init>()V

    .line 135
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const-string v4, "_-_ Speed of healing effects (e.g. potion of healing) have been reduced slightly. Overall heal amounts unchanged."

    .line 136
    invoke-direct {v0, v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 139
    invoke-virtual {v0, v5, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 140
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 141
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;-><init>()V

    const-string v3, "Bees were never intended to be used as a boss-killing tool by stacking many of them onto one area. This use has now been restricted:\n_-_ Bees are now hostile to eachother\n\nNote that the new alchemy system may have a recipe which helps calm angry bees down..."

    invoke-direct {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 142
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {v2, v0, v5, v5}, La/a/a/a/a;->a(Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;FF)V

    return-void
.end method

.method public static and([Z[Z[Z)[Z
    .locals 4

    .line 1
    array-length v0, p0

    if-nez p2, :cond_0

    .line 2
    new-array p2, v0, [Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    aget-boolean v3, p0, v2

    if-eqz v3, :cond_1

    aget-boolean v3, p1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static disable()V
    .locals 1

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const/16 v0, 0xbe2

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static enable()V
    .locals 1

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const/16 v0, 0xbe2

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch La/b/a/r/s/b; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    new-instance v1, La/b/a/r/s/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, La/b/a/r/s/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch La/b/a/r/s/b; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static gate(FFF)F
    .locals 1

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    return p0

    :cond_0
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public static interpolate(IIF)I
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_1

    return p1

    :cond_1
    shr-int/lit8 v1, p0, 0x10

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v3, p1, 0x10

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 p1, p1, 0xff

    sub-float/2addr v0, p2

    int-to-float v1, v1

    mul-float v1, v1, v0

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    int-to-float v3, v4

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float p0, p0

    mul-float v0, v0, p0

    int-to-float p0, p1

    mul-float p2, p2, p0

    add-float/2addr p2, v0

    float-to-int p0, p2

    shl-int/lit8 p1, v1, 0x10

    shl-int/lit8 p2, v2, 0x8

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    return p1
.end method

.method public static isDebug()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->version:Ljava/lang/String;

    const-string v1, "INDEV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isDesktop()Z
    .locals 2

    .line 1
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v0}, La/b/a/a;->getType()La/b/a/a$a;

    move-result-object v0

    sget-object v1, La/b/a/a$a;->b:La/b/a/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, La/b/a/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch La/b/a/r/s/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static not([Z[Z)[Z
    .locals 3

    .line 1
    array-length v0, p0

    if-nez p1, :cond_0

    .line 2
    new-array p1, v0, [Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    aget-boolean v2, p0, v1

    xor-int/lit8 v2, v2, 0x1

    aput-boolean v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static openURI(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, La/b/a/e;->f:La/b/a/j;

    check-cast v0, La/b/a/m/a/s;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    iget-object v2, v0, La/b/a/m/a/s;->a:La/b/a/m/a/c;

    invoke-interface {v2}, La/b/a/m/a/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 5
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v0, La/b/a/m/a/s;->a:La/b/a/m/a/c;

    new-instance v2, La/b/a/m/a/r;

    invoke-direct {v2, v0, p0}, La/b/a/m/a/r;-><init>(La/b/a/m/a/s;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, La/b/a/m/a/c;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 7
    throw p0
.end method

.method public static or([Z[ZII[Z)[Z
    .locals 2

    if-nez p4, :cond_0

    .line 2
    new-array p4, p3, [Z

    :cond_0
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_3

    .line 3
    aget-boolean v1, p0, v0

    if-nez v1, :cond_2

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    aput-boolean v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p4
.end method

.method public static or([Z[Z[Z)[Z
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    move-result-object p0

    return-object p0
.end method

.method public static random(II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->interpolate(IIF)I

    move-result p0

    return p0
.end method

.method public static setFalse([Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->falseArray:[Z

    if-eqz v0, :cond_0

    array-length v0, v0

    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Z

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->falseArray:[Z

    .line 3
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->falseArray:[Z

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static setLightMode()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const/16 v0, 0x302

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static setNormalMode()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
