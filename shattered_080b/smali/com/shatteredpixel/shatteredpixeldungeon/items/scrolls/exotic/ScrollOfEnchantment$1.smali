.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1;
.super Ljava/lang/Object;
.source "ScrollOfEnchantment.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v5, p1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment;

    instance-of v1, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const-string v2, "cancel"

    const/4 v3, 0x4

    const-string v4, "cancel_warn"

    const-string v6, "\n\n"

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    new-array v13, v9, [Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    .line 2
    move-object v1, v5

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    :cond_0
    new-array v1, v11, [Ljava/lang/Class;

    aput-object v8, v1, v12

    .line 3
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->randomCommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v1

    aput-object v1, v13, v12

    new-array v1, v11, [Ljava/lang/Class;

    aput-object v8, v1, v12

    .line 4
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->randomUncommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v1

    aput-object v1, v13, v11

    new-array v1, v9, [Ljava/lang/Class;

    aput-object v8, v1, v12

    .line 5
    aget-object v8, v13, v12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v1, v11

    aget-object v8, v13, v11

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v1, v10

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v1

    aput-object v1, v13, v10

    .line 6
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$1;

    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v12, [Ljava/lang/Object;

    const-string v15, "weapon"

    .line 7
    invoke-static {v0, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v12, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v4, v6, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/String;

    aget-object v1, v13, v12

    .line 9
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v12

    aget-object v1, v13, v11

    .line 10
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    aget-object v1, v13, v10

    .line 11
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    new-array v1, v12, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v6, v1

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v5, p1

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;[Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)V

    .line 13
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto/16 :goto_0

    .line 14
    :cond_1
    instance-of v1, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    new-array v9, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    .line 15
    move-object v1, v5

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    :cond_2
    new-array v1, v11, [Ljava/lang/Class;

    aput-object v8, v1, v12

    .line 16
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->randomCommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v1

    aput-object v1, v9, v12

    new-array v1, v11, [Ljava/lang/Class;

    aput-object v8, v1, v12

    .line 17
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->randomUncommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v1

    aput-object v1, v9, v11

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v8, v1, v12

    .line 18
    aget-object v8, v9, v12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v1, v11

    aget-object v8, v9, v11

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v1, v10

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v1

    aput-object v1, v9, v10

    .line 19
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$2;

    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v12, [Ljava/lang/Object;

    const-string v15, "armor"

    .line 20
    invoke-static {v0, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v12, [Ljava/lang/Object;

    .line 21
    invoke-static {v0, v4, v6, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/String;

    aget-object v1, v9, v12

    .line 22
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v12

    aget-object v1, v9, v11

    .line 23
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    aget-object v1, v9, v10

    .line 24
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    new-array v1, v12, [Ljava/lang/Object;

    .line 25
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v6, v1

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v5, p1

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;[Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)V

    .line 26
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 27
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 28
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    :goto_0
    return-void
.end method
