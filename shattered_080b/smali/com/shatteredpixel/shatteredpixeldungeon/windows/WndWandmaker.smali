.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndWandmaker.java"


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    .line 4
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const/high16 v2, 0x42f00000    # 120.0f

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v3, v3, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 9
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    instance-of v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "dust"

    .line 11
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    instance-of v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Embers;

    if-eqz v4, :cond_1

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ember"

    .line 13
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_1
    instance-of v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Rotberry$Seed;

    if-eqz v4, :cond_2

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "berry"

    .line 15
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    const/4 v4, 0x6

    .line 16
    invoke-static {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    const/16 v4, 0x78

    .line 17
    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 18
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v1, v5

    invoke-virtual {v0, v3, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 19
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$1;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 21
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 22
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p0, v6, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 23
    iget v6, v0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 24
    iget v0, v0, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v6, v0

    add-float/2addr v6, v5

    const/high16 v0, 0x41a00000    # 20.0f

    .line 25
    invoke-virtual {v1, v3, v6, v2, v0}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 26
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 27
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$2;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand2:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 28
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 29
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 30
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    add-float/2addr p1, v5

    invoke-virtual {v6, v3, p1, v2, v0}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 31
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 32
    invoke-virtual {v6}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method

.method public static synthetic access$000(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p3, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 5
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    iget-object p3, p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    aput-object p3, v2, v1

    const-string p3, "you_now_have"

    .line 7
    invoke-static {p2, p3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, p3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p2

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :goto_0
    new-array p2, v0, [Ljava/lang/Object;

    .line 9
    sget-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 10
    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "farewell"

    .line 11
    invoke-static {p0, p3, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 13
    iget-object p0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    const/4 p0, 0x0

    .line 14
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 15
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand2:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 16
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->WANDMAKER:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    return-void
.end method
