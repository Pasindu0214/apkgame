.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "StoneOfIntuition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WndGuess"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    .line 1
    iput-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;

    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_INTUITION:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    .line 4
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "name"

    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-virtual {v6, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v4, 0x6

    .line 10
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v5

    new-array v9, v8, [Ljava/lang/Object;

    .line 11
    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;

    const-string v11, "text"

    invoke-static {v10, v11, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-virtual {v5, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    invoke-virtual {v5, v3, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    const/16 v9, 0x78

    .line 14
    invoke-virtual {v5, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 15
    invoke-virtual {v6, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 16
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$1;

    const-string v1, ""

    invoke-direct {v10, v6, v1, v7, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 17
    iput-boolean v8, v10, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 18
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-direct {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v10, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 19
    invoke-virtual {v10, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    const/high16 v1, 0x42a00000    # 80.0f

    const/high16 v11, 0x41a00000    # 20.0f

    .line 20
    invoke-virtual {v10, v3, v1, v2, v11}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-virtual {v6, v10}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    invoke-virtual {v5}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    .line 23
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void

    .line 26
    :cond_0
    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v3, :cond_4

    .line 27
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->unknown()Ljava/util/HashSet;

    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 29
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;->potions:[Ljava/lang/Class;

    invoke-virtual {v3}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 30
    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 31
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 32
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    aget-object v12, v3, v0

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 34
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 35
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    move-object v12, v0

    move-object v15, v3

    const/16 v19, 0x8

    goto :goto_4

    :cond_3
    move-object v12, v2

    move-object v15, v3

    const/16 v19, 0x0

    goto :goto_4

    .line 36
    :cond_4
    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz v3, :cond_e

    .line 37
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->unknown()Ljava/util/HashSet;

    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 39
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;->scrolls:[Ljava/lang/Class;

    invoke-virtual {v3}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 40
    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 41
    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_5

    .line 42
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->regToExo:Ljava/util/HashMap;

    aget-object v12, v3, v0

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 43
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 45
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const/16 v2, 0x18

    move-object v12, v0

    move-object v15, v3

    const/16 v19, 0x18

    goto :goto_4

    :cond_7
    const/16 v0, 0x10

    move-object v12, v2

    move-object v15, v3

    const/16 v19, 0x10

    .line 46
    :goto_4
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v0

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v13, 0x2

    const/4 v5, 0x1

    if-ge v0, v4, :cond_8

    add-float v1, v1, v20

    .line 47
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    rsub-int/lit8 v0, v0, 0x78

    int-to-float v0, v0

    div-float/2addr v0, v14

    const/4 v4, 0x1

    goto :goto_5

    .line 48
    :cond_8
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v0

    add-int/2addr v0, v5

    div-int/2addr v0, v13

    mul-int/lit8 v0, v0, 0x14

    rsub-int/lit8 v0, v0, 0x78

    int-to-float v0, v0

    div-float/2addr v0, v14

    const/4 v4, 0x2

    :goto_5
    move/from16 v21, v0

    move v3, v1

    const/4 v2, 0x0

    const/16 v22, 0x0

    .line 49
    :goto_6
    array-length v0, v15

    if-ge v2, v0, :cond_d

    .line 50
    aget-object v0, v15, v2

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move/from16 v23, v2

    move v0, v3

    move v13, v4

    move-object v2, v15

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    goto/16 :goto_7

    .line 51
    :cond_9
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;

    move-object v0, v1

    move-object v8, v1

    move-object/from16 v1, p0

    move/from16 v23, v2

    move-object/from16 v2, p1

    move v9, v3

    move-object v3, v15

    move/from16 v24, v4

    move/from16 v4, v23

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;[Ljava/lang/Class;ILcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;)V

    .line 52
    new-instance v0, Lcom/watabou/noosa/Image;

    mul-int/lit8 v1, v23, 0x7

    const/16 v17, 0x7

    const/16 v18, 0x8

    const-string v2, "consumable_icons.png"

    const/4 v3, 0x2

    move-object v13, v0

    const/high16 v4, 0x40000000    # 2.0f

    move-object v14, v2

    move-object v2, v15

    move v15, v1

    move/from16 v16, v19

    invoke-direct/range {v13 .. v18}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    .line 53
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 54
    iput v4, v1, Lcom/watabou/utils/PointF;->x:F

    .line 55
    iput v4, v1, Lcom/watabou/utils/PointF;->y:F

    .line 56
    invoke-virtual {v8, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    mul-int/lit8 v0, v22, 0x14

    int-to-float v0, v0

    add-float v0, v21, v0

    .line 57
    invoke-virtual {v8, v0, v9, v11, v11}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 58
    invoke-virtual {v6, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v0, v22, 0x1

    move/from16 v13, v24

    if-ne v13, v3, :cond_b

    .line 59
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v5, 0x1

    add-int/2addr v1, v5

    div-int/2addr v1, v3

    if-ne v0, v1, :cond_c

    .line 60
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v0

    rem-int/2addr v0, v3

    if-ne v0, v5, :cond_a

    add-float v21, v21, v20

    :cond_a
    add-float v0, v9, v11

    const/16 v22, 0x0

    goto :goto_7

    :cond_b
    const/4 v5, 0x1

    :cond_c
    move/from16 v22, v0

    move v0, v9

    :goto_7
    add-int/lit8 v1, v23, 0x1

    move v3, v0

    move-object v15, v2

    move v4, v13

    const/4 v8, 0x0

    const/16 v9, 0x78

    const/4 v13, 0x2

    const/high16 v14, 0x40000000    # 2.0f

    move v2, v1

    goto/16 :goto_6

    :cond_d
    const/16 v0, 0x64

    const/16 v1, 0x78

    .line 61
    invoke-virtual {v6, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void

    .line 62
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    return-void
.end method
