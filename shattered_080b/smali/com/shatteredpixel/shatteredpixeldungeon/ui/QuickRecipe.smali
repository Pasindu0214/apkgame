.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;
.super Lcom/watabou/noosa/ui/Component;
.source "QuickRecipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;
    }
.end annotation


# instance fields
.field public arrow:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

.field public ingredients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public inputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;",
            ">;"
        }
    .end annotation
.end field

.field public output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inputs:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 3
    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inQuantity:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void

    .line 7
    :cond_1
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->ingredients:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->cost(Ljava/util/ArrayList;)I

    move-result p1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->inputs:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 13
    instance-of v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v5, :cond_0

    .line 14
    move-object v5, v2

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymize()V

    goto :goto_1

    .line 15
    :cond_0
    instance-of v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz v5, :cond_1

    .line 16
    move-object v5, v2

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->anonymize()V

    .line 17
    :cond_1
    :goto_1
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$1;

    invoke-direct {v5, p0, v2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 18
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getAllSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Ljava/util/ArrayList;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 20
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v9, v10, :cond_3

    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 21
    :cond_3
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/2addr v7, v8

    goto :goto_2

    .line 22
    :cond_4
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-ge v7, v2, :cond_5

    .line 23
    iget-object v1, v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Visual;->alpha(F)V

    const/4 v1, 0x0

    .line 24
    :cond_5
    invoke-virtual {v5, v0, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->showParams(ZZZ)V

    .line 25
    invoke-virtual {p0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 26
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-lez p1, :cond_7

    .line 27
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->ARROW:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v2

    invoke-direct {p2, p0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;Lcom/watabou/noosa/Image;I)V

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->arrow:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    const p1, 0xccff

    .line 28
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;->text:Lcom/watabou/noosa/BitmapText;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    goto :goto_3

    .line 29
    :cond_7
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->ARROW:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;Lcom/watabou/noosa/Image;)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->arrow:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    :cond_8
    :goto_3
    const/4 p1, 0x0

    if-eqz v1, :cond_9

    .line 30
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->arrow:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon:Lcom/watabou/noosa/Image;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, v2, p1, v2}, Lcom/watabou/noosa/Visual;->tint(FFFF)V

    .line 31
    sget-object p1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object p1, p1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 32
    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    if-nez p1, :cond_a

    .line 33
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->arrow:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    .line 34
    iput-boolean v4, p1, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 35
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon:Lcom/watabou/noosa/Image;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v3}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_4

    .line 36
    :cond_9
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->arrow:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {p2, p1, p1, p1}, Lcom/watabou/noosa/Visual;->color(FFF)V

    .line 37
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->arrow:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    .line 38
    iput-boolean v4, p1, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 39
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon:Lcom/watabou/noosa/Image;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v3}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 40
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->arrow:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 41
    instance-of p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz p1, :cond_b

    .line 42
    move-object p1, p3

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymize()V

    goto :goto_5

    .line 43
    :cond_b
    instance-of p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz p1, :cond_c

    .line 44
    move-object p1, p3

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->anonymize()V

    .line 45
    :cond_c
    :goto_5
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$2;

    invoke-direct {p1, p0, p3, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    if-nez v1, :cond_d

    .line 46
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1, v3}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 47
    :cond_d
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {p1, v0, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->showParams(ZZZ)V

    .line 48
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 49
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->layout()V

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 5

    const/high16 v0, 0x41800000    # 16.0f

    .line 1
    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    .line 4
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v2, v3, v4, v0, v0}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 5
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->arrow:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$arrow;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 7
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v4

    iput v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->x:F

    add-float/2addr v3, v1

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 9
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    return-void
.end method
