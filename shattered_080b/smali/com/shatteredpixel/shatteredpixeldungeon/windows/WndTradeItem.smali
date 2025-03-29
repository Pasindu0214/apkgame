.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndTradeItem.java"


# instance fields
.field public owner:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;Z)V
    .locals 17

    move-object/from16 v6, p0

    .line 25
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    const/4 v2, 0x1

    .line 27
    invoke-virtual {v6, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->createDescription(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Z)F

    move-result v3

    .line 28
    invoke-virtual {v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->price(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v4

    if-eqz p2, :cond_2

    .line 29
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$5;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v1, v9

    const-string v5, "buy"

    invoke-static {v6, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, p1

    invoke-direct {v8, v6, v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$5;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v3, v10

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v12, 0x42f00000    # 120.0f

    const/4 v13, 0x0

    .line 30
    invoke-virtual {v8, v13, v3, v12, v11}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 31
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    if-gt v4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v8, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    .line 32
    invoke-virtual {v6, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 33
    new-instance v14, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$6;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v3, "cancel"

    .line 34
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-direct {v14, v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$6;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;

    if-eqz v3, :cond_1

    .line 37
    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v1, :cond_1

    .line 38
    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->stealChance(I)F

    move-result v1

    .line 39
    new-instance v15, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v7, 0x64

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    const-string v1, "steal"

    .line 40
    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;ILcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    .line 42
    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    add-float/2addr v0, v10

    invoke-virtual {v15, v13, v0, v12, v11}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 43
    invoke-virtual {v6, v15}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 44
    invoke-virtual {v15}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    add-float/2addr v0, v10

    invoke-virtual {v14, v13, v0, v12, v11}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    add-float/2addr v0, v10

    invoke-virtual {v14, v13, v0, v12, v11}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 46
    :goto_1
    invoke-virtual {v6, v14}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 47
    invoke-virtual {v14}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x78

    invoke-virtual {v6, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    goto :goto_2

    :cond_2
    const/16 v1, 0x78

    float-to-int v0, v3

    .line 48
    invoke-virtual {v6, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    :goto_2
    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->createDescription(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Z)F

    move-result v0

    .line 4
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 5
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$1;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p2

    const-string v7, "sell"

    invoke-static {p0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p0, v6, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    add-float/2addr v0, v4

    .line 6
    invoke-virtual {v1, v5, v0, v3, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 7
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result v1

    .line 10
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$2;

    new-array v8, v6, [Ljava/lang/Object;

    .line 11
    iget v9, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 12
    div-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, p2

    const-string v9, "sell_1"

    invoke-static {p0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    add-float/2addr v0, v4

    .line 13
    invoke-virtual {v7, v5, v0, v3, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 14
    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$3;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, p2

    .line 16
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    const-string v8, "sell_all"

    invoke-static {v1, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-direct {v0, p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 18
    invoke-virtual {v7}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    add-float/2addr p1, v4

    invoke-virtual {v0, v5, p1, v3, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 19
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    .line 21
    :goto_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$4;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "cancel"

    invoke-static {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;)V

    add-float/2addr p1, v4

    .line 22
    invoke-virtual {v0, v5, p1, v3, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 23
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/16 p1, 0x78

    .line 24
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method


# virtual methods
.method public final createDescription(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Z)F
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-direct {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 3
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->price(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    const-string v1, "sale"

    invoke-static {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    :goto_0
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const/high16 p2, 0x42f00000    # 120.0f

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, v1, p2, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    iget-boolean p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result p2

    if-gez p2, :cond_1

    const p2, 0xff4444

    .line 12
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result p2

    if-lez p2, :cond_2

    const p2, 0x44ff44

    .line 14
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 15
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->info()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    const/16 p2, 0x78

    .line 16
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 17
    iget p2, v0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 18
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 19
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    return p1
.end method

.method public hide()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->hide()V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;->sell()Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    :cond_0
    return-void
.end method

.method public final price(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    mul-int v0, v0, p1

    return v0
.end method

.method public final sell(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    return-void
.end method
