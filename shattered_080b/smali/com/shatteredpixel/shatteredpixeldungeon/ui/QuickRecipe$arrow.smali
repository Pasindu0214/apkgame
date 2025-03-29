.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;
.source "QuickRecipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "arrow"
.end annotation


# instance fields
.field public text:Lcom/watabou/noosa/BitmapText;

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;Lcom/watabou/noosa/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    .line 2
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;-><init>(Lcom/watabou/noosa/Image;)V

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;Lcom/watabou/noosa/Image;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    .line 4
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;-><init>(Lcom/watabou/noosa/Image;)V

    .line 5
    new-instance p1, Lcom/watabou/noosa/BitmapText;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    invoke-direct {p1, p2, p3}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;->text:Lcom/watabou/noosa/BitmapText;

    .line 6
    invoke-virtual {p1}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;->text:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;->text:Lcom/watabou/noosa/BitmapText;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 6
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    .line 7
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->ingredients:Ljava/util/ArrayList;

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 9
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->clearSlots()V

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 11
    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 12
    invoke-virtual {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getAllSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Ljava/util/ArrayList;

    move-result-object v7

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    if-lez v6, :cond_2

    .line 14
    instance-of v8, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    if-eqz v8, :cond_4

    .line 15
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v8

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iget-object v9, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v8

    .line 17
    :goto_3
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v9, v9, v4

    invoke-virtual {v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    add-int/lit8 v4, v4, 0x1

    .line 18
    iget v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    sub-int/2addr v6, v9

    .line 19
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_3

    .line 20
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->updateState()V

    return-void
.end method
