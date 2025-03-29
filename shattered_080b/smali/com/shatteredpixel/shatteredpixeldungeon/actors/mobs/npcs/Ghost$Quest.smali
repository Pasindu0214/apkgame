.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;
.super Ljava/lang/Object;
.source "Ghost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Quest"
.end annotation


# static fields
.field public static alternative:Z

.field public static armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

.field public static completed:Z

.field public static depth:I

.field public static given:Z

.field public static given1:Z

.field public static given2:Z

.field public static processed:Z

.field public static questRoomSpawned:Z

.field public static records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;",
            ">;"
        }
    .end annotation
.end field

.field public static reward:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

.field public static spawned:Z

.field public static spawned1:Z

.field public static spawned2:Z

.field public static type:I

.field public static type1:I

.field public static wand1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

.field public static wand2:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

.field public static weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;


# direct methods
.method public static add(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;I)V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v1, p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static addAllChanges1(Ljava/util/ArrayList;)V
    .locals 23
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

    const-string v4, "v0.2.X"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v5, 0xffff44

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const/4 v4, 0x0

    const-string v6, "v0.2.4"

    invoke-direct {v2, v6, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 5
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v7

    const-string v8, "Developer Commentary"

    const-string v9, "_-_ Released February 23rd, 2015\n_-_ 48 days after Shattered v0.2.3\n\nDev commentary will be added here in the future."

    invoke-direct {v6, v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v7, 0x41800000    # 16.0f

    .line 10
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 11
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 12
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;-><init>()V

    invoke-direct {v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v10, "Pixel Dungeon v1.7.5"

    const-string v11, "v1.7.3 - v1.7.5 Source Implemented, with exceptions:\n_-_ Degredation not implemented.\n\n_-_ Badge syncing not implemented.\n\n_-_ Scroll of Weapon Upgrade renamed to Magical Infusion, works on armor.\n\n_-_ Scroll of Enchantment not implemented, Arcane stylus has not been removed.\n\n_-_ Honey pots now shatter in a new item: shattered honeypot. A bee will defend its shattered pot to the death against anything that gets near.\n\n_-_ Bombs have been reworked/nerfed: they explode after a delay, no longer stun, deal more damage at the center of the blast, affect the world (destroy items, blow up other bombs)."

    invoke-direct {v6, v9, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 16
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 17
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v10, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BANDOLIER:I

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "New Content"

    const-string v12, "_-_ The huntress has been buffed: starts with Potion of Mind Vision identified, now benefits from strength on melee attacks, and has a chance to reclaim a single used ranged weapon from each defeated enemy.\n\n_-_ A new container: The Potion Bandolier! Potions can now shatter from frost, but the bandolier can protect them.\n\n_-_ Shops now stock a much greater variety of items, some item prices have been rebalanced.\n\n_-_ Added Merchant\'s Beacon.\n\n_-_ Added initials for IDed scrolls/potions."

    invoke-direct {v6, v9, v10, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 22
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    const-string v12, "misc"

    invoke-static {v1, v12, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "_-_ Going down stairs no longer increases hunger, going up still does.\n\n_-_ Many, many bugfixes.\n_-_ Some UI improvements.\n_-_ Ingame audio quality improved.\n_-_ Unstable spellbook buffed.\n_-_ Psionic blasts deal less self-damage.\n_-_ Potions of liquid flame affect a 3x3 grid."

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 26
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 27
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v6, "v0.2.3"

    invoke-direct {v2, v6, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 28
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v9

    const-string v10, "_-_ Released January 6th, 2015\n_-_ 64 days after Shattered v0.2.2\n\nDev commentary will be added here in the future."

    invoke-direct {v6, v9, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 33
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 34
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 35
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;-><init>()V

    invoke-direct {v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v10, "Artifact Changes"

    const-string v13, "Added 4 new artifacts:\n_-_ Alchemist\'s Toolkit\n_-_ Unstable Spellbook\n_-_ Timekeeper\'s Hourglass\n_-_ Dried Rose\n\n_-_ Artifacts are now unique over each run\n_-_ Artifacts can now be cursed!\n_-_ Cloak of Shadows is now exclusive to the rogue\n_-_ Smaller Balance Changes and QOL improvements to almost every artifact"

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 38
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 39
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 40
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v10, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_CRIMSON:I

    invoke-direct {v9, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "Balance Changes"

    const-string v13, "_-_ Health potion farming has been nerfed from all sources\n_-_ Freerunner now moves at very high speeds when invisible\n_-_ Ring of Force buffed significantly\n_-_ Ring of Evasion reworked again\n_-_ Improved the effects of some blandfruit types\n_-_ Using throwing weapons now cancels stealth"

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 43
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 44
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 45
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v1, v12, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "_-_ Implemented a donation system in the Google Play version of Shattered\n\n_-_ Significantly increased the stability of the save system\n\n_-_ Increased the number of visible rankings to 11 from 6\n\n_-_ Improved how the player is interrupted by harmful events"

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 48
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 49
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 50
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v6, "v0.2.2"

    invoke-direct {v2, v6, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 51
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v9

    const-string v10, "_-_ Released November 3rd, 2014\n_-_ 21 days after Shattered v0.2.1\n\nDev commentary will be added here in the future."

    invoke-direct {v6, v9, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 56
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 57
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 58
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v10, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_AUGMENTATION:I

    invoke-direct {v9, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "Pixel Dungeon v1.7.2"

    const-string v13, "Implemented directly from v1.7.2:\n_-_ Synchronous Movement\n_-_ Challenges\n_-_ UI improvements\n_-_ Vertigo debuff\n\nImplement with changes:\n_-_ Weightstone: Increases either speed or damage, at the cost of the other, instead of increasing either speed or accuracy.\n\nNot Implemented:\n_-_ Key ring and unstackable keys\n_-_ Blindweed has not been removed"

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 61
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 62
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 63
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/watabou/noosa/Image;

    const/16 v15, 0x70

    const/16 v16, 0x70

    const/16 v17, 0x10

    const/16 v18, 0x10

    const-string v14, "terrain_features.png"

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v10, "New Plants"

    const-string v13, "Added two new plants:\n_-_ Stormvine, which brews into levitation\n_-_ Dreamfoil, which brews into purity\n\n_-_ Potion of levitation can now be thrown to make a cloud of confusion gas\n\n_-_ Removed gas collision logic, gasses can now stack without limitation."

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 66
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 67
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 68
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v10, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->REMAINS:I

    invoke-direct {v9, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "Heroes Remains"

    const-string v13, "Heroes remains have been significantly adjusted to prevent strategies that exploit them, but also to increase their average loot.\n\nRemains have additional limitations:\n_-_ Heros will no longer drop remains if they have obtained the amulet of yendor, or die 5 or more floors above the deepest floor they have reached\n_-_ Class exclusive items can no longer appear in remains\n_-_ Items found in remains are now more harshly level-capped\n_-_ Remains are not dropped, and cannot be found, when challenges are enabled.\n\nHowever:\n_-_ Remains can now contain useful items from the inventory, not just equipped items.\n_-_ Remains are now less likely to contain gold."

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 71
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 72
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 73
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v6, "v0.2.1"

    invoke-direct {v2, v6, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 74
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v9

    const-string v10, "_-_ Released October 13th, 2014\n_-_ 28 days after Shattered v0.2.0\n\nDev commentary will be added here in the future."

    invoke-direct {v6, v9, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 79
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 80
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 81
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/watabou/noosa/Image;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0xe

    const/16 v18, 0xf

    const-string v14, "ghost.png"

    move-object v13, v9

    move/from16 v17, v21

    invoke-direct/range {v13 .. v18}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v10, "New Sewer Quests"

    const-string v13, "_-_ Removed the dried rose quest (the rose will return...)\n\n_-_ Tweaked the mechanics of the fetid rat quest\n\n_-_ Added a gnoll trickster quest\n\n_-_ Added a great crab quest"

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 84
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 85
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 86
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/watabou/noosa/Image;

    const/16 v19, 0x2b

    const/16 v20, 0x3

    const/16 v22, 0xb

    const-string v18, "goo.png"

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v22}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    const-string v10, "Goo Changes"

    const-string v13, "Goo\'s animations have been overhauled, including a particle effect for the area of its pumped up attack.\n\nGoo\'s arena has been updated to give more room to maneuver, and to be more variable."

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 89
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 90
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 91
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v10, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GUIDE_PAGE:I

    invoke-direct {v9, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v10, "Story & Signpost Changes"

    const-string v13, "Most text in the sewers has been overhauled, including descriptions, quest dialogues, signposts, and story scrolls"

    invoke-direct {v6, v9, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 94
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 95
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 96
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v6, "v0.2.0"

    invoke-direct {v2, v6, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 97
    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 98
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SHPX:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v9

    const-string v10, "_-_ Released September 15th, 2014\n_-_ 31 days after Shattered v0.1.1"

    invoke-direct {v6, v9, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 102
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 103
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 104
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;-><init>()V

    invoke-direct {v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-string v9, "Artifacts!"

    const-string v10, "Added artifacts to the game!\n\nArtifacts are unique items which offer new gameplay opportunities and grow stronger through unique means.\n\nRemoved 7 Rings... And Replaced them with 7 Artifacts!\n_-_ Ring of Shadows becomes Cloak of Shadows\n_-_ Ring of Satiety becomes Horn of Plenty\n_-_ Ring of Mending becomes Chalice of Blood\n_-_ Ring of Thorns becomes Cape of Thorns\n_-_ Ring of Haggler becomes Master Thieves\' Armband\n_-_ Ring of Naturalism becomes Sandals of Nature"

    invoke-direct {v6, v8, v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 107
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 108
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 109
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_DIAMOND:I

    invoke-direct {v8, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    const-string v9, "New Rings!"

    const-string v10, "To replace the lost rings, 6 new rings have been added:\n_-_ Ring of Force\n_-_ Ring of Furor\n_-_ Ring of Might\n_-_ Ring of Tenacity\n_-_ Ring of Sharpshooting\n_-_ Ring of Wealth\n\nThe 4 remaining rings have also been tweaked or reworked entirely:\n_-_ Ring of Accuracy\n_-_ Ring of Elements\n_-_ Ring of Evasion\n_-_ Ring of Haste"

    invoke-direct {v6, v8, v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 112
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 113
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 114
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->PREFS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v1, v12, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "-Nerfed farming health potions from fly swarms.\n\n-Buffed crazed bandit and his drops.\n\n-Made Blandfruit more common.\n\n-Nerfed Assassin bonus damage slightly, to balance with him having an artifact now.\n\n-Added a welcome page!"

    invoke-direct {v6, v8, v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v2, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 117
    invoke-virtual {v6, v7, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 118
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->layout()V

    .line 119
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    const-string v2, " "

    invoke-direct {v1, v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 120
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bottom(I)Lcom/watabou/noosa/particles/Emitter;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/watabou/utils/PointF;->x:F

    iget p0, p0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v2, 0x41800000    # 16.0f

    add-float/2addr p0, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    return-object v0
.end method

.method public static center(I)Lcom/watabou/noosa/particles/Emitter;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v2, 0x41000000    # 8.0f

    add-float/2addr v1, v2

    iget p0, p0, Lcom/watabou/utils/PointF;->y:F

    add-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Lcom/watabou/noosa/particles/Emitter;->pos(FF)V

    return-object v0
.end method

.method public static completed()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    if-nez v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static enter(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v1, 0x6

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 5
    sget-object p0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_door_open.mp3"

    .line 6
    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_0
    return-void
.end method

.method public static floor(I)Lcom/watabou/noosa/particles/Emitter;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->floorEmitters:Lcom/watabou/noosa/Group;

    const-class v1, Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/watabou/noosa/particles/Emitter;

    .line 4
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->revive()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcom/watabou/utils/PointF;->x:F

    iget p0, p0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, p0, v2, v2}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    return-object v0
.end method

.method public static generate(IIFIZ)[Z
    .locals 20

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    mul-int v3, v0, v1

    .line 1
    new-array v4, v3, [Z

    .line 2
    new-array v5, v3, [Z

    int-to-float v6, v3

    mul-float v6, v6, p2

    .line 3
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    neg-int v6, v6

    if-eqz p4, :cond_0

    if-lez v2, :cond_0

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float v8, v7, p2

    mul-float v8, v8, v7

    add-float v7, v8, p2

    goto :goto_0

    :cond_0
    move/from16 v7, p2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v9, v3, :cond_3

    .line 4
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v11

    cmpg-float v11, v11, v7

    if-gez v11, :cond_1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    aput-boolean v10, v5, v9

    .line 5
    aget-boolean v10, v5, v9

    if-eqz v10, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const/4 v11, 0x2

    if-ge v7, v2, :cond_19

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v1, :cond_18

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v0, :cond_17

    mul-int v14, v12, v0

    add-int/2addr v14, v13

    if-lez v12, :cond_8

    if-lez v13, :cond_5

    sub-int v15, v14, v0

    sub-int/2addr v15, v10

    .line 6
    aget-boolean v15, v5, v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    goto :goto_6

    :cond_4
    const/4 v15, 0x0

    :goto_6
    const/16 v16, 0x1

    goto :goto_7

    :cond_5
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_7
    sub-int v17, v14, v0

    .line 7
    aget-boolean v18, v5, v17

    if-eqz v18, :cond_6

    add-int/lit8 v15, v15, 0x1

    :cond_6
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v9, v0, -0x1

    if-ge v13, v9, :cond_9

    add-int/lit8 v17, v17, 0x1

    .line 8
    aget-boolean v9, v5, v17

    if-eqz v9, :cond_7

    add-int/lit8 v15, v15, 0x1

    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_9
    :goto_8
    if-lez v13, :cond_b

    add-int/lit8 v9, v14, -0x1

    .line 9
    aget-boolean v9, v5, v9

    if-eqz v9, :cond_a

    add-int/lit8 v15, v15, 0x1

    :cond_a
    add-int/lit8 v16, v16, 0x1

    .line 10
    :cond_b
    aget-boolean v9, v5, v14

    if-eqz v9, :cond_c

    add-int/lit8 v15, v15, 0x1

    :cond_c
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v9, v0, -0x1

    if-ge v13, v9, :cond_e

    add-int/lit8 v17, v14, 0x1

    .line 11
    aget-boolean v17, v5, v17

    if-eqz v17, :cond_d

    add-int/lit8 v15, v15, 0x1

    :cond_d
    add-int/lit8 v16, v16, 0x1

    :cond_e
    add-int/lit8 v8, v1, -0x1

    if-ge v12, v8, :cond_13

    if-lez v13, :cond_10

    add-int v8, v14, v0

    sub-int/2addr v8, v10

    .line 12
    aget-boolean v8, v5, v8

    if-eqz v8, :cond_f

    add-int/lit8 v15, v15, 0x1

    :cond_f
    add-int/lit8 v16, v16, 0x1

    :cond_10
    add-int v8, v14, v0

    .line 13
    aget-boolean v18, v5, v8

    if-eqz v18, :cond_11

    add-int/lit8 v15, v15, 0x1

    :cond_11
    add-int/lit8 v16, v16, 0x1

    if-ge v13, v9, :cond_13

    add-int/lit8 v8, v8, 0x1

    .line 14
    aget-boolean v8, v5, v8

    if-eqz v8, :cond_12

    add-int/lit8 v15, v15, 0x1

    :cond_12
    add-int/lit8 v16, v16, 0x1

    :cond_13
    move/from16 v8, v16

    mul-int/lit8 v15, v15, 0x2

    if-lt v15, v8, :cond_14

    const/4 v8, 0x1

    goto :goto_9

    :cond_14
    const/4 v8, 0x0

    .line 15
    :goto_9
    aput-boolean v8, v4, v14

    .line 16
    aget-boolean v8, v4, v14

    aget-boolean v9, v5, v14

    if-eq v8, v9, :cond_16

    aget-boolean v8, v4, v14

    if-eqz v8, :cond_15

    const/4 v8, 0x1

    goto :goto_a

    :cond_15
    const/4 v8, -0x1

    :goto_a
    add-int/2addr v6, v8

    :cond_16
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    :cond_18
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    goto/16 :goto_3

    :cond_19
    if-eqz p4, :cond_20

    .line 17
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v2, v11, :cond_20

    const/16 v2, 0x9

    new-array v4, v2, [I

    neg-int v7, v0

    add-int/lit8 v8, v7, -0x1

    const/4 v9, 0x0

    aput v8, v4, v9

    aput v7, v4, v10

    add-int/2addr v7, v10

    aput v7, v4, v11

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v4, v7

    const/4 v7, 0x4

    aput v9, v4, v7

    const/4 v7, 0x5

    aput v10, v4, v7

    const/4 v7, 0x6

    add-int/lit8 v11, v0, -0x1

    aput v11, v4, v7

    const/4 v7, 0x7

    aput v0, v4, v7

    const/16 v7, 0x8

    add-int/lit8 v12, v0, 0x1

    aput v12, v4, v7

    if-gez v6, :cond_1a

    const/4 v7, 0x1

    goto :goto_b

    :cond_1a
    const/4 v7, 0x0

    :cond_1b
    :goto_b
    if-eqz v6, :cond_20

    const/4 v12, 0x0

    .line 18
    :cond_1c
    invoke-static {v10, v11}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v13

    add-int/lit8 v14, v1, -0x1

    invoke-static {v10, v14}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v14

    mul-int v14, v14, v0

    add-int/2addr v14, v13

    add-int/2addr v12, v10

    .line 19
    aget-boolean v13, v5, v14

    if-eq v13, v7, :cond_1d

    mul-int/lit8 v13, v12, 0xa

    if-lt v13, v3, :cond_1c

    :cond_1d
    const/4 v12, 0x0

    :goto_c
    if-ge v12, v2, :cond_1b

    .line 20
    aget v13, v4, v12

    if-eqz v6, :cond_1f

    add-int/2addr v13, v14

    .line 21
    aget-boolean v15, v5, v13

    if-eq v15, v7, :cond_1f

    .line 22
    aput-boolean v7, v5, v13

    if-eqz v7, :cond_1e

    const/4 v13, 0x1

    goto :goto_d

    :cond_1e
    const/4 v13, -0x1

    :goto_d
    add-int/2addr v6, v13

    :cond_1f
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_20
    return-object v5
.end method

.method public static get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;)Lcom/watabou/noosa/Image;
    .locals 8

    .line 1
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 2
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v1, "banners.png"

    .line 3
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/high16 v1, 0x43040000    # 132.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    if-eqz p0, :cond_4

    const/4 v4, 0x1

    const/high16 v5, 0x42fa0000    # 125.0f

    const/high16 v6, 0x43000000    # 128.0f

    if-eq p0, v4, :cond_3

    const/4 v4, 0x2

    const/high16 v7, 0x43200000    # 160.0f

    if-eq p0, v4, :cond_2

    const/4 v4, 0x3

    if-eq p0, v4, :cond_1

    const/4 v4, 0x4

    if-eq p0, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v4, 0x43800000    # 256.0f

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v1, 0x43350000    # 181.0f

    invoke-virtual {p0, v3, v7, v6, v1}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {p0, v3, v2, v6, v5}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    :goto_0
    return-object v0
.end method

.method public static get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;)Lcom/watabou/noosa/Image;
    .locals 6

    .line 10
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 11
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v1, "effects.png"

    .line 12
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v3, 0x0

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x41800000    # 16.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 14
    :pswitch_0
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x42180000    # 38.0f

    invoke-virtual {p0, v5, v1, v4, v2}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 15
    :pswitch_1
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v1, 0x41b80000    # 23.0f

    const/high16 v2, 0x41f80000    # 31.0f

    invoke-virtual {p0, v5, v1, v4, v2}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 16
    :pswitch_2
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p0, v5, v5, v4, v1}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 17
    :pswitch_3
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v2, 0x41300000    # 11.0f

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {p0, v1, v5, v2, v3}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 18
    :pswitch_4
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {p0, v3, v5, v1, v2}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 19
    :pswitch_5
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {p0, v5, v2, v4, v5}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 20
    :pswitch_6
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {p0, v5, v3, v4, v2}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 21
    :pswitch_7
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {p0, v3, v3, v5, v5}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static get(I)Lcom/watabou/noosa/particles/Emitter;
    .locals 3

    .line 22
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p0

    .line 23
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    .line 24
    iget v1, p0, Lcom/watabou/utils/PointF;->x:F

    iget p0, p0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, p0, v2, v2}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    return-object v0
.end method

.method public static getRecords(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static keyCount(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)I
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)V

    .line 2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    .line 4
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    .line 5
    iget p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static process()V
    .locals 4

    .line 4
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed:Z

    if-nez v0, :cond_0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->depth:I

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ne v0, v1, :cond_0

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "find_me"

    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_ghost.mp3"

    .line 7
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed:Z

    :cond_0
    return-void
.end method

.method public static process(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned1:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given1:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed:Z

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->alternative:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Monk;

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->alternative:Z

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DwarfToken;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DwarfToken;-><init>()V

    iget p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p0

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :cond_2
    return-void
.end method

.method public static processed()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static remove(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)Z
    .locals 3

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)V

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    .line 5
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    .line 6
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 7
    iget p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    sub-int/2addr v2, p0

    .line 8
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-gtz v2, :cond_0

    .line 9
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static remove(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v1, p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    return-void
.end method

.method public static reset2()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned2:Z

    .line 2
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type1:I

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 4
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand2:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    return-void
.end method

.method public static storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 2
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned:Z

    const-string v2, "spawned"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned:Z

    if-eqz v1, :cond_0

    .line 4
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given:Z

    const-string v2, "given"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 6
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->depth:I

    const-string v2, "depth"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 7
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed:Z

    const-string v2, "processed"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const-string v2, "weapon"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const-string v2, "armor"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    :cond_0
    const-string v1, "sadGhost"

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    return-void
.end method

.method public static storeInBundle1(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 2
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned1:Z

    const-string v2, "spawned"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned1:Z

    if-eqz v1, :cond_0

    .line 4
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->alternative:Z

    const-string v2, "alternative"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 5
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given1:Z

    const-string v2, "given"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 6
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed:Z

    const-string v2, "completed"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reward:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    const-string v2, "reward"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    :cond_0
    const-string v1, "demon"

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    return-void
.end method

.method public static storeInBundle2(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 2
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned2:Z

    const-string v2, "spawned"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned2:Z

    if-eqz v1, :cond_0

    .line 4
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type1:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given2:Z

    const-string v2, "given"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const-string v2, "wand1"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand2:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const-string v2, "wand2"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 8
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 9
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    const-string v2, "ritualpos"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    :cond_0
    const-string v1, "wandmaker"

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    return-void
.end method
