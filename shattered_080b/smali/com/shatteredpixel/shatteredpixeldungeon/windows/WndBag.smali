.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;
.source "WndBag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$BagTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

.field public static lastBag:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

.field public static lastMode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;


# instance fields
.field public col:I

.field public count:I

.field public listener:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

.field public mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public nCols:I

.field public nRows:I

.field public row:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->hide()V

    .line 4
    :cond_0
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    .line 5
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    .line 6
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 7
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->title:Ljava/lang/String;

    .line 8
    sput-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastMode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 9
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastBag:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 10
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result p2

    const/4 p3, 0x4

    if-eqz p2, :cond_1

    const/4 p2, 0x6

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    :goto_0
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->nCols:I

    const/high16 p4, 0x41c00000    # 24.0f

    int-to-float p2, p2

    div-float/2addr p4, p2

    float-to-double v0, p4

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->nRows:I

    .line 12
    iget p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->nCols:I

    mul-int/lit8 v0, p4, 0x1c

    const/4 v1, 0x1

    sub-int/2addr p4, v1

    mul-int/lit8 p4, p4, 0x1

    add-int/2addr p4, v0

    mul-int/lit8 v0, p2, 0x1c

    sub-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0x1

    add-int/2addr p2, v0

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GOLD:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    int-to-float v2, p4

    .line 14
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v4

    sub-float v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 15
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    const/high16 v6, 0x41600000    # 14.0f

    sub-float v4, v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    new-instance v4, Lcom/watabou/noosa/BitmapText;

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    invoke-direct {v4, v8, v9}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    const v8, 0xffff44

    .line 19
    invoke-virtual {v4, v8}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 20
    invoke-virtual {v4}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 21
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    sub-float/2addr v2, v0

    invoke-virtual {v4}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    sub-float/2addr v2, v0

    sub-float/2addr v2, v7

    iput v2, v4, Lcom/watabou/noosa/Visual;->x:F

    .line 22
    invoke-virtual {v4}, Lcom/watabou/noosa/BitmapText;->baseLine()F

    move-result v0

    sub-float v0, v6, v0

    div-float/2addr v0, v7

    sub-float/2addr v0, v5

    iput v0, v4, Lcom/watabou/noosa/Visual;->y:F

    .line 23
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 24
    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 27
    :goto_1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    .line 28
    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 30
    iget v2, v4, Lcom/watabou/noosa/Visual;->x:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 31
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v6, v2

    div-float/2addr v6, v7

    sub-float/2addr v6, v5

    .line 32
    invoke-virtual {v0, v5, v6}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 33
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 35
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 36
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WEAPON_HOLDER:I

    invoke-direct {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    :goto_2
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->placeItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 37
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_HOLDER:I

    invoke-direct {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    :goto_3
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->placeItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 38
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_HOLDER:I

    invoke-direct {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    :goto_4
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->placeItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 39
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_HOLDER:I

    invoke-direct {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    :goto_5
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->placeItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 40
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v4, v2, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_7

    aget-object v6, v0, v5

    .line 41
    invoke-virtual {p0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->placeItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 42
    :cond_7
    :goto_7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->count:I

    add-int/lit8 v0, v0, -0x4

    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    if-ge v0, v4, :cond_8

    .line 43
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->placeItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_7

    :cond_8
    add-int/lit8 p2, p2, 0xe

    .line 44
    invoke-virtual {p0, p4, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->resize(II)V

    .line 45
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const/4 p4, 0x5

    new-array v0, p4, [Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 46
    iget-object v3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    aput-object v3, v0, v2

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;

    .line 47
    invoke-virtual {p2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;

    .line 48
    invoke-virtual {p2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;

    .line 49
    invoke-virtual {p2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    aput-object v4, v0, v3

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;

    .line 50
    invoke-virtual {p2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    aput-object p2, v0, p3

    const/4 p2, 0x0

    :goto_8
    if-ge p2, p4, :cond_b

    .line 51
    aget-object p3, v0, p2

    if-eqz p3, :cond_a

    .line 52
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$BagTab;

    invoke-direct {v3, p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$BagTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    if-ne p3, p1, :cond_9

    const/4 p3, 0x1

    goto :goto_9

    :cond_9
    const/4 p3, 0x0

    .line 54
    :goto_9
    invoke-virtual {v3, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->select(Z)V

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 55
    :cond_b
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->layoutTabs()V

    return-void
.end method

.method public static getBag(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;",
            ">;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastBag(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static lastBag(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastMode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastBag:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastBag:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastBag:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;->onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method

.method public onClick(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->hide()V

    .line 2
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$BagTab;

    .line 4
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$BagTab;->bag:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 5
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->title:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public onSignal(Lcom/watabou/input/KeyEvent;)Z
    .locals 3

    .line 2
    iget-boolean v0, p1, Lcom/watabou/input/KeyEvent;->pressed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->getActionForKey(Lcom/watabou/input/KeyEvent;)Lcom/watabou/input/GameAction;

    move-result-object v0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->INVENTORY:Lcom/watabou/input/GameAction;

    if-ne v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->hide()V

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/watabou/input/KeyEvent;->pressed:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->getActionForKey(Lcom/watabou/input/KeyEvent;)Lcom/watabou/input/GameAction;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->BACK:Lcom/watabou/input/GameAction;

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->onBackPressed()V

    :cond_1
    return v1
.end method

.method public bridge synthetic onSignal(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/watabou/input/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->onSignal(Lcom/watabou/input/KeyEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public placeItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->col:I

    mul-int/lit8 v0, v0, 0x1d

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->row:I

    mul-int/lit8 v1, v1, 0x1d

    add-int/lit8 v1, v1, 0xe

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;

    invoke-direct {v2, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$ItemButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    int-to-float p1, v0

    int-to-float v0, v1

    invoke-virtual {v2, p1, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->col:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->col:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->nCols:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->col:I

    .line 6
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->row:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->row:I

    .line 7
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->count:I

    return-void
.end method

.method public tabHeight()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method
