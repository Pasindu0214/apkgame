.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndItem.java"


# static fields
.field public static INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Z)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;->hide()V

    .line 5
    :cond_0
    sput-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    const/16 v0, 0x78

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->info()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    const/16 v9, 0x78

    .line 8
    :goto_0
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget v0, v1, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/16 v0, 0xdc

    if-ge v9, v0, :cond_1

    add-int/lit8 v9, v9, 0x14

    .line 10
    invoke-virtual {v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    int-to-float v10, v9

    const/4 v11, 0x0

    .line 12
    invoke-virtual {v0, v11, v11, v10, v11}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 13
    invoke-virtual {v7, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    iget-boolean v2, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v2

    if-lez v2, :cond_2

    const v2, 0x44ff44

    .line 15
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    goto :goto_1

    .line 16
    :cond_2
    iget-boolean v2, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v2

    if-gez v2, :cond_3

    const v2, 0xff4444

    .line 17
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 18
    :cond_3
    :goto_1
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 19
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 20
    invoke-virtual {v7, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 21
    iget v0, v1, Lcom/watabou/noosa/ui/Component;->y:F

    .line 22
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v0, v1

    add-float v12, v0, v3

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p3, :cond_16

    .line 24
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 25
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v8, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 26
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;

    const-string v0, "ac_"

    invoke-static {v0, v15}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 p3, v6

    move-object v6, v15

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;Ljava/lang/String;ILcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p3 .. p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->reqWidth()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 30
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v7, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 32
    iget-object v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0xffff44

    .line 33
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    goto :goto_2

    .line 34
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    move v2, v10

    .line 35
    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_15

    .line 36
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 37
    iget v5, v3, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v2, v5

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    sub-float/2addr v2, v4

    cmpl-float v5, v2, v11

    if-ltz v5, :cond_8

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    :cond_8
    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    cmpg-float v3, v2, v11

    if-lez v3, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_6

    .line 44
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float v2, v10, v2

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 46
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v2, v5

    goto :goto_5

    :cond_a
    cmpl-float v3, v2, v11

    if-lez v3, :cond_13

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 49
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 50
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 51
    :cond_c
    iget v14, v8, Lcom/watabou/noosa/ui/Component;->width:F

    .line 52
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 53
    iget v15, v15, Lcom/watabou/noosa/ui/Component;->width:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_d

    .line 54
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 56
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 57
    :cond_d
    iget v14, v8, Lcom/watabou/noosa/ui/Component;->width:F

    .line 58
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 59
    iget v15, v15, Lcom/watabou/noosa/ui/Component;->width:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_e

    .line 60
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    if-eqz v5, :cond_f

    .line 61
    iget v14, v5, Lcom/watabou/noosa/ui/Component;->width:F

    iget v15, v8, Lcom/watabou/noosa/ui/Component;->width:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_b

    :cond_f
    move-object v5, v8

    goto :goto_6

    :cond_10
    if-nez v5, :cond_11

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_7

    .line 63
    :cond_11
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->width:F

    .line 64
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 65
    iget v6, v6, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v5, v6

    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    cmpl-float v6, v6, v2

    if-ltz v6, :cond_12

    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_7
    int-to-float v5, v5

    div-float v5, v2, v5

    const/4 v2, 0x0

    goto :goto_8

    .line 68
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    sub-float/2addr v2, v6

    .line 69
    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 70
    iget v8, v6, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v8, v5

    .line 71
    iget v14, v6, Lcom/watabou/noosa/ui/Component;->height:F

    .line 72
    invoke-virtual {v6, v11, v11, v8, v14}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    goto :goto_9

    .line 73
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 74
    iget v6, v5, Lcom/watabou/noosa/ui/Component;->width:F

    .line 75
    iget v8, v5, Lcom/watabou/noosa/ui/Component;->height:F

    .line 76
    invoke-virtual {v5, v3, v12, v6, v8}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 77
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v5, v4

    add-float/2addr v3, v5

    goto :goto_a

    :cond_14
    const/high16 v2, 0x41880000    # 17.0f

    add-float/2addr v12, v2

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :cond_15
    sub-float/2addr v12, v4

    :cond_16
    float-to-int v0, v12

    .line 79
    invoke-virtual {v7, v9, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    :cond_0
    return-void
.end method
