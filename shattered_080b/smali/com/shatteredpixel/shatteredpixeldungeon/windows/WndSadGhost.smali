.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndSadGhost.java"


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;I)V
    .locals 10

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x6

    const-string v4, "give_item"

    const/4 v5, 0x0

    if-eq p2, v2, :cond_1

    const/4 v6, 0x3

    if-eq p2, v6, :cond_0

    .line 3
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FetidRatSprite;

    invoke-direct {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FetidRatSprite;-><init>()V

    .line 4
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v6}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    iput-object p2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v6, "rat_title"

    .line 6
    invoke-static {p0, v6, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "rat"

    .line 9
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p2

    goto/16 :goto_0

    .line 13
    :cond_0
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GreatCrabSprite;

    invoke-direct {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GreatCrabSprite;-><init>()V

    .line 14
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v6}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    iput-object p2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v6, "crab_title"

    .line 16
    invoke-static {p0, v6, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 17
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "crab"

    .line 19
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v5, [Ljava/lang/Object;

    .line 21
    invoke-static {v0, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p2

    goto :goto_0

    .line 23
    :cond_1
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GnollTricksterSprite;

    invoke-direct {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GnollTricksterSprite;-><init>()V

    .line 24
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v6}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    iput-object p2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v6, "gnoll_title"

    .line 26
    invoke-static {p0, v6, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 27
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v6, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "gnoll"

    .line 29
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v5, [Ljava/lang/Object;

    .line 31
    invoke-static {v0, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p2

    :goto_0
    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v4, v4, v3, v4}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 34
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/16 v6, 0x78

    .line 35
    invoke-virtual {p2, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 36
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v1, v7

    invoke-virtual {p2, v4, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 37
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 38
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost$1;

    new-array v8, v5, [Ljava/lang/Object;

    const-string v9, "weapon"

    invoke-static {p0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, p0, v8, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;)V

    .line 39
    iget v8, p2, Lcom/watabou/noosa/ui/Component;->y:F

    .line 40
    iget p2, p2, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v8, p2

    add-float/2addr v8, v7

    const/high16 p2, 0x41a00000    # 20.0f

    .line 41
    invoke-virtual {v1, v4, v8, v3, p2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 42
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 43
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost$2;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "armor"

    .line 45
    invoke-static {v0, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-direct {v2, p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;)V

    .line 47
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    add-float/2addr p1, v7

    invoke-virtual {v2, v4, p1, v3, p2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 48
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 49
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v6, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v6, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    :goto_1
    return-void
.end method

.method public static synthetic access$000(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    const-string p2, "you_now_have"

    invoke-static {v0, p2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p2

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :goto_0
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "farewell"

    .line 6
    invoke-static {p0, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 7
    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    .line 8
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 9
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 10
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->GHOST:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    :goto_1
    return-void
.end method
