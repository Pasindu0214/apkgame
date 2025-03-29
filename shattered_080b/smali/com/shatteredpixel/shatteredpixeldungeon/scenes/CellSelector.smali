.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;
.super Lcom/watabou/noosa/ScrollArea;
.source "CellSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;
    }
.end annotation


# instance fields
.field public another:Lcom/watabou/input/PointerEvent;

.field public dragThreshold:F

.field public dragging:Z

.field public enabled:Z

.field public heldAction:Lcom/watabou/input/GameAction;

.field public heldTurns:I

.field public keyListener:Lcom/watabou/utils/Signal$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/Signal$Listener<",
            "Lcom/watabou/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public lastPos:Lcom/watabou/utils/PointF;

.field public listener:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

.field public mouseZoom:F

.field public pinching:Z

.field public startSpan:F

.field public startZoom:F


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/watabou/noosa/ScrollArea;-><init>(Lcom/watabou/noosa/Visual;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->pinching:Z

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragging:Z

    .line 5
    new-instance v1, Lcom/watabou/utils/PointF;

    invoke-direct {v1}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->lastPos:Lcom/watabou/utils/PointF;

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NONE:Lcom/watabou/input/GameAction;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldAction:Lcom/watabou/input/GameAction;

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldTurns:I

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->keyListener:Lcom/watabou/utils/Signal$Listener;

    .line 9
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 10
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragThreshold:F

    .line 11
    iget p1, p1, Lcom/watabou/noosa/Camera;->zoom:F

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->mouseZoom:F

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->keyListener:Lcom/watabou/utils/Signal$Listener;

    .line 13
    sget-object v0, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v0, p1}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ScrollArea;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->keyListener:Lcom/watabou/utils/Signal$Listener;

    .line 3
    sget-object v1, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v1, v0}, Lcom/watabou/utils/Signal;->remove(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method

.method public final moveFromAction(Lcom/watabou/input/GameAction;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->N:Lcom/watabou/input/GameAction;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    neg-int v1, v1

    add-int/2addr v0, v1

    .line 4
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NE:Lcom/watabou/input/GameAction;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    rsub-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->E:Lcom/watabou/input/GameAction;

    if-ne p1, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 7
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->SE:Lcom/watabou/input/GameAction;

    if-ne p1, v1, :cond_3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 9
    :cond_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->S:Lcom/watabou/input/GameAction;

    if-ne p1, v1, :cond_4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 10
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v0, v1

    .line 11
    :cond_4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->SW:Lcom/watabou/input/GameAction;

    if-ne p1, v1, :cond_5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 12
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->W:Lcom/watabou/input/GameAction;

    if-ne p1, v1, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 14
    :cond_6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NW:Lcom/watabou/input/GameAction;

    if-ne p1, v1, :cond_7

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 15
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    rsub-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    .line 16
    :cond_7
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v0, p1, :cond_8

    const p1, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    const v3, 0x3d4ccccd    # 0.05f

    .line 17
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldTurns:I

    int-to-float v4, v4

    const v5, 0x3ccccccd    # 0.025f

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    .line 18
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, p1

    .line 19
    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->moveInterval:F

    .line 20
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->select(I)V

    return v2

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Lcom/watabou/input/PointerEvent;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragging:Z

    goto/16 :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget-object v2, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    float-to-int v3, v3

    iget v2, v2, Lcom/watabou/utils/PointF;->y:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/watabou/noosa/Camera;->screenToCamera(II)Lcom/watabou/utils/PointF;

    move-result-object v0

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    new-array v3, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v3, v2

    :goto_0
    const/high16 v4, 0x41400000    # 12.0f

    if-ge v1, v3, :cond_2

    aget-object v5, v2, v1

    .line 5
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v6, :cond_1

    iget v7, v0, Lcom/watabou/utils/PointF;->x:F

    iget v8, v0, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Lcom/watabou/noosa/Visual;->overlapsPoint(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v6

    .line 7
    iget v7, v0, Lcom/watabou/utils/PointF;->x:F

    iget v8, v6, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_1

    iget v7, v0, Lcom/watabou/utils/PointF;->y:F

    iget v6, v6, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_1

    .line 8
    iget p1, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->select(I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 10
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    if-eqz v3, :cond_3

    iget v5, v0, Lcom/watabou/utils/PointF;->x:F

    iget v6, v0, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {v3, v5, v6}, Lcom/watabou/noosa/Visual;->overlapsPoint(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v3

    .line 12
    iget v5, v0, Lcom/watabou/utils/PointF;->x:F

    iget v6, v3, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gtz v5, :cond_3

    iget v5, v0, Lcom/watabou/utils/PointF;->y:F

    iget v3, v3, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 13
    iget p1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->select(I)V

    return-void

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/watabou/noosa/PointerArea;->target:Lcom/watabou/noosa/Visual;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    float-to-int p1, p1

    .line 15
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/watabou/noosa/Camera;->screenToCamera(II)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 16
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->point()Lcom/watabou/utils/PointF;

    move-result-object v1

    .line 17
    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    neg-float v2, v2

    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 18
    iget v2, v1, Lcom/watabou/utils/PointF;->y:F

    neg-float v2, v2

    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 19
    invoke-virtual {p1, v1}, Lcom/watabou/utils/PointF;->offset(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    const/high16 v1, 0x41800000    # 16.0f

    .line 20
    invoke-virtual {p1, v1}, Lcom/watabou/utils/PointF;->invScale(F)Lcom/watabou/utils/PointF;

    .line 21
    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 22
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    int-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    sub-float/2addr v2, v3

    const/4 v4, 0x0

    .line 23
    invoke-static {v4, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v1

    iput v1, p1, Lcom/watabou/utils/PointF;->x:F

    .line 24
    iget v1, p1, Lcom/watabou/utils/PointF;->y:F

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 25
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    .line 26
    invoke-static {v4, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v1

    iput v1, p1, Lcom/watabou/utils/PointF;->y:F

    .line 27
    iget v2, p1, Lcom/watabou/utils/PointF;->x:F

    float-to-int v2, v2

    float-to-int v1, v1

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 28
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    .line 29
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    if-eqz v2, :cond_5

    aget v2, v2, v1

    .line 30
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31
    iget v2, v0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v2, v1

    iget v3, v0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge v2, v3, :cond_5

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    rem-float/2addr p1, v3

    const/high16 v3, 0x3f400000    # 0.75f

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_5

    iget-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    aget p1, p1, v2

    .line 32
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 33
    iget p1, v0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v1, p1

    .line 34
    :cond_5
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->select(I)V

    :goto_1
    return-void
.end method

.method public onDrag(Lcom/watabou/input/PointerEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->pinching:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->another:Lcom/watabou/input/PointerEvent;

    iget-object v0, v0, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    invoke-static {p1, v0}, Lcom/watabou/utils/PointF;->distance(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)F

    move-result p1

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->startZoom:F

    mul-float v0, v0, p1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->startSpan:F

    div-float/2addr v0, p1

    .line 4
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->minZoom:F

    const v2, 0x3dcccccd    # 0.1f

    rem-float v2, v0, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxZoom:F

    invoke-static {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Camera;->zoom(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragging:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget-object v1, p1, Lcom/watabou/input/PointerEvent;->start:Lcom/watabou/utils/PointF;

    invoke-static {v0, v1}, Lcom/watabou/utils/PointF;->distance(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)F

    move-result v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragging:Z

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->lastPos:Lcom/watabou/utils/PointF;

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    invoke-virtual {v0, p1}, Lcom/watabou/utils/PointF;->set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragging:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->lastPos:Lcom/watabou/utils/PointF;

    iget-object v2, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    invoke-static {v1, v2}, Lcom/watabou/utils/PointF;->diff(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget v2, v2, Lcom/watabou/noosa/Camera;->zoom:F

    invoke-virtual {v1, v2}, Lcom/watabou/utils/PointF;->invScale(F)Lcom/watabou/utils/PointF;

    .line 10
    iget-object v2, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    invoke-virtual {v2, v1}, Lcom/watabou/utils/PointF;->offset(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/watabou/noosa/Camera;->panIntensity:F

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->lastPos:Lcom/watabou/utils/PointF;

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    invoke-virtual {v0, p1}, Lcom/watabou/utils/PointF;->set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    :cond_2
    :goto_0
    return-void
.end method

.method public onPointerDown(Lcom/watabou/input/PointerEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->another:Lcom/watabou/input/PointerEvent;

    if-nez v1, :cond_1

    .line 2
    iget-boolean v1, v0, Lcom/watabou/input/PointerEvent;->down:Z

    if-nez v1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    .line 4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->onPointerDown(Lcom/watabou/input/PointerEvent;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->pinching:Z

    .line 6
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->another:Lcom/watabou/input/PointerEvent;

    .line 7
    iget-object v0, v0, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    invoke-static {v0, p1}, Lcom/watabou/utils/PointF;->distance(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->startSpan:F

    .line 8
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget p1, p1, Lcom/watabou/noosa/Camera;->zoom:F

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->startZoom:F

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragging:Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    if-eq p1, v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->reset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPointerUp(Lcom/watabou/input/PointerEvent;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->pinching:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->another:Lcom/watabou/input/PointerEvent;

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->pinching:Z

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->zoom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->zoom(F)F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->dragging:Z

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->another:Lcom/watabou/input/PointerEvent;

    iput-object p1, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->another:Lcom/watabou/input/PointerEvent;

    .line 8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->lastPos:Lcom/watabou/utils/PointF;

    iget-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    iget-object v0, v0, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    invoke-virtual {p1, v0}, Lcom/watabou/utils/PointF;->set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    :cond_2
    return-void
.end method

.method public onScroll(Lcom/watabou/input/ScrollEvent;)V
    .locals 3

    .line 1
    iget p1, p1, Lcom/watabou/input/ScrollEvent;->amount:I

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->zoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v2, v0, v1

    div-float/2addr v2, v0

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 3
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->minZoom:F

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->mouseZoom:F

    sub-float/2addr v1, p1

    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxZoom:F

    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->mouseZoom:F

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->zoom(F)F

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->another:Lcom/watabou/input/PointerEvent;

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->pinching:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->pinching:Z

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->zoom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->zoom(F)F

    :cond_0
    return-void
.end method

.method public resetKeyHold()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NONE:Lcom/watabou/input/GameAction;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldAction:Lcom/watabou/input/GameAction;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldTurns:I

    const v0, 0x3dcccccd    # 0.1f

    .line 3
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->moveInterval:F

    return-void
.end method

.method public select(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;->onSelect(Ljava/lang/Integer;)V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ready()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cancel()Z

    :goto_0
    return-void
.end method

.method public final zoom(F)F
    .locals 3

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->minZoom:F

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxZoom:F

    invoke-static {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result p1

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-int v0, v0

    const-string v1, "zoom"

    .line 3
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Camera;->zoom(F)V

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 6
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->isMoving:Z

    if-nez v2, :cond_0

    .line 7
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    goto :goto_0

    :cond_1
    return p1
.end method
