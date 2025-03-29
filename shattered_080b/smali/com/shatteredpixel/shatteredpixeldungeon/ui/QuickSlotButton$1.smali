.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;
.source "QuickSlotButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;-><init>()V

    return-void
.end method


# virtual methods
.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->keyAction()Lcom/watabou/input/GameAction;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->targeting:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slotNum:I

    .line 4
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->select(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->autoAim(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->select(I)V

    goto/16 :goto_1

    .line 7
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->select(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    .line 10
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slotNum:I

    .line 11
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->select(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    .line 12
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->usesTargeting:Z

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 14
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v3, :cond_2

    .line 15
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 16
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 17
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->targeting:Z

    .line 18
    iget-object v3, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 19
    iget-object v4, v3, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossM:Lcom/watabou/noosa/Image;

    invoke-virtual {v4, v5}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossM:Lcom/watabou/noosa/Image;

    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Visual;->center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 21
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossB:Lcom/watabou/noosa/Image;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Visual;->center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 22
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossB:Lcom/watabou/noosa/Image;

    iput-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_0

    .line 23
    :cond_2
    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, 0x0

    .line 24
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->targeting:Z

    goto :goto_0

    .line 25
    :cond_3
    throw v2

    .line 26
    :cond_4
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 27
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onLongClick()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->QUICKSLOT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "select_item"

    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public onPointerDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    const v1, 0x3f19999a    # 0.6f

    .line 2
    iput v1, v0, Lcom/watabou/noosa/Visual;->bm:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->gm:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->rm:F

    const v1, 0x3ecccccc    # 0.39999998f

    .line 3
    iput v1, v0, Lcom/watabou/noosa/Visual;->ba:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->ga:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->ra:F

    return-void
.end method

.method public onPointerUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    return-void
.end method
