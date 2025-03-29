.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;
.super Ljava/lang/Object;
.source "PotionOfDragonsBreath.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->onSelect(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

.field public final synthetic val$cell:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->val$cell:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->access$200()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->val$cell:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    .line 7
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 8
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->val$cell:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    invoke-direct {v0, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    .line 9
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    iput-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->affectedCells:Ljava/util/HashSet;

    .line 11
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 12
    iput-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->visualCells:Ljava/util/HashSet;

    .line 13
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 14
    :goto_0
    sget-object v6, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    array-length v6, v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    .line 15
    iget-object v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v8, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    aget v8, v8, v5

    add-int/2addr v6, v8

    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v6, v8, :cond_0

    .line 16
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    .line 17
    iput v5, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->direction:I

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-float v4, v4

    .line 18
    invoke-virtual {v0, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->subPath(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-float/2addr v4, v1

    .line 19
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    .line 20
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->affectedCells:Ljava/util/HashSet;

    .line 21
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    cmpl-float v7, v4, v1

    if-lez v7, :cond_4

    .line 22
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    sget-object v8, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    .line 23
    iget v9, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->direction:I

    const/4 v10, 0x7

    if-nez v9, :cond_2

    const/4 v9, 0x7

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, -0x1

    .line 24
    :goto_3
    aget v8, v8, v9

    add-int/2addr v8, v6

    sub-float v9, v4, v1

    .line 25
    invoke-virtual {v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->spreadFlames(IF)V

    .line 26
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    sget-object v8, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    .line 27
    iget v11, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->direction:I

    .line 28
    aget v8, v8, v11

    add-int/2addr v8, v6

    .line 29
    invoke-virtual {v7, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->spreadFlames(IF)V

    .line 30
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    sget-object v8, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    .line 31
    iget v11, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->direction:I

    if-ne v11, v10, :cond_3

    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 32
    :goto_4
    aget v8, v8, v11

    add-int/2addr v6, v8

    .line 33
    invoke-virtual {v7, v6, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->spreadFlames(IF)V

    goto :goto_2

    .line 34
    :cond_4
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    .line 35
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->visualCells:Ljava/util/HashSet;

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    .line 38
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->visualCells:Ljava/util/HashSet;

    .line 39
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    .line 41
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->visualCells:Ljava/util/HashSet;

    .line 42
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x64

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 43
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 44
    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v5, v5, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    invoke-virtual {v5, v6}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 45
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 46
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 47
    invoke-virtual {v5, v4, v6, v3, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->reset(ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)V

    goto :goto_5

    .line 48
    :cond_6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 49
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v3, v1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 50
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    div-int/lit8 v2, v2, 0x2

    .line 51
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1$1;

    invoke-direct {v5, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V

    .line 52
    invoke-static {v3, v4, v1, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    return-void
.end method
