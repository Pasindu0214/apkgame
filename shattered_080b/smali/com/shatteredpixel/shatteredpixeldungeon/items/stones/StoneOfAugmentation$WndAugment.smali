.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "StoneOfAugmentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WndAugment"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1
    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;

    iput-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const/4 v1, 0x0

    const/high16 v2, 0x42f00000    # 120.0f

    .line 4
    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 5
    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "choice"

    .line 6
    invoke-static {v9, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    .line 7
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    const/16 v2, 0x74

    .line 8
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 9
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v0, v11

    invoke-virtual {v1, v11, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 10
    invoke-virtual {v6, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    iget v0, v1, Lcom/watabou/noosa/ui/Component;->y:F

    .line 12
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v0, v1

    .line 13
    instance-of v1, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v13, 0x42e80000    # 116.0f

    if-eqz v1, :cond_2

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v15, :cond_1

    aget-object v4, v14, v5

    .line 15
    move-object v0, v8

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    if-eq v0, v4, :cond_0

    .line 16
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$1;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    .line 17
    invoke-static {v9, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v10, v3

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    move-object/from16 v4, p2

    move/from16 v18, v5

    move-object/from16 v5, v17

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;)V

    add-float v0, v16, v11

    .line 19
    invoke-virtual {v10, v11, v0, v13, v12}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 20
    invoke-virtual {v6, v10}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 21
    invoke-virtual {v10}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v16

    goto :goto_1

    :cond_0
    move/from16 v18, v5

    :goto_1
    add-int/lit8 v5, v18, 0x1

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    move/from16 v0, v16

    goto :goto_4

    .line 22
    :cond_2
    instance-of v1, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_5

    .line 23
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    move-result-object v10

    array-length v14, v10

    move v15, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v14, :cond_4

    aget-object v4, v10, v5

    .line 24
    move-object v0, v8

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    if-eq v0, v4, :cond_3

    .line 25
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {v9, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v12, v3

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    move-object/from16 v4, p2

    move/from16 v18, v5

    move-object/from16 v5, v17

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;)V

    add-float/2addr v15, v11

    const/high16 v0, 0x41a00000    # 20.0f

    .line 28
    invoke-virtual {v12, v11, v15, v13, v0}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 29
    invoke-virtual {v6, v12}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 30
    invoke-virtual {v12}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v15

    goto :goto_3

    :cond_3
    move/from16 v18, v5

    :goto_3
    add-int/lit8 v5, v18, 0x1

    const/high16 v12, 0x41a00000    # 20.0f

    goto :goto_2

    :cond_4
    move v0, v15

    .line 31
    :cond_5
    :goto_4
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$3;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cancel"

    .line 32
    invoke-static {v9, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-direct {v1, v6, v2, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;)V

    add-float/2addr v0, v11

    const/high16 v2, 0x41a00000    # 20.0f

    .line 34
    invoke-virtual {v1, v11, v0, v13, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 35
    invoke-virtual {v6, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/16 v0, 0x78

    .line 36
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v6, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method
