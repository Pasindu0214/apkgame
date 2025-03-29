.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll$2;
.super Ljava/lang/Object;
.source "InventoryScroll.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->readAnimation()V

    .line 6
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_read.mp3"

    .line 7
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    goto :goto_0

    .line 9
    :cond_1
    sget-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->identifiedByUse:Z

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->anonymous:Z

    if-nez v0, :cond_2

    .line 12
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll$1;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "warning"

    invoke-static {v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "yes"

    invoke-static {v6, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "no"

    invoke-static {v6, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    .line 16
    invoke-direct {v0, p1, v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 18
    :cond_2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 19
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->anonymous:Z

    if-nez v0, :cond_3

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 21
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    :cond_3
    :goto_0
    return-void
.end method
