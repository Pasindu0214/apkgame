.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;
.super Lcom/watabou/noosa/ui/Button;
.source "QuickSlotButton.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# static fields
.field public static crossB:Lcom/watabou/noosa/Image; = null

.field public static crossM:Lcom/watabou/noosa/Image; = null

.field public static instance:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton; = null

.field public static lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char; = null

.field public static targeting:Z = false


# instance fields
.field public slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

.field public slotNum:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    .line 1
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->instance:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slotNum:I

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->select(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->enableSlot()V

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->instance:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    aput-object p0, v0, p1

    return-void
.end method

.method public static autoAim(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->throwPos(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)I

    move-result v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 4
    new-array v0, v0, [Z

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 6
    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->throwPos(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)I

    move-result v1

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static cancel()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->targeting:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossB:Lcom/watabou/noosa/Image;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossM:Lcom/watabou/noosa/Image;

    .line 4
    iget-object v2, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    :cond_0
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->targeting:Z

    :cond_1
    return-void
.end method

.method public static refresh()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->instance:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 3
    aget-object v1, v1, v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->select(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v2

    .line 4
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 5
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->enableSlot()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    .line 1
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->instance:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    return-void
.end method

.method public static select(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v0, v1, :cond_0

    .line 2
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->showParams(ZZZ)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->TARGET:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossB:Lcom/watabou/noosa/Image;

    .line 8
    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    new-instance v0, Lcom/watabou/noosa/Image;

    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossM:Lcom/watabou/noosa/Image;

    .line 11
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossB:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->destroy()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->reset()V

    return-void
.end method

.method public final enableSlot()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slotNum:I

    .line 2
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v1, v1, v2

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->enable(Z)V

    return-void
.end method

.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slotNum:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_4:Lcom/watabou/input/GameAction;

    return-object v0

    .line 3
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_3:Lcom/watabou/input/GameAction;

    return-object v0

    .line 4
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_2:Lcom/watabou/input/GameAction;

    return-object v0

    .line 5
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_1:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossB:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 5
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 6
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public onClick()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->QUICKSLOT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "select_item"

    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    return-void
.end method

.method public onLongClick()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->QUICKSLOT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "select_item"

    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    const/4 v0, 0x1

    return v0
.end method

.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slotNum:I

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->update()V

    .line 2
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->targeting:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->crossM:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    :cond_0
    return-void
.end method
