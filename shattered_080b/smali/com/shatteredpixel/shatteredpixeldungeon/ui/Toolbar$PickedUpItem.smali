.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickedUpItem"
.end annotation


# instance fields
.field public endX:F

.field public endY:F

.field public left:F

.field public startScale:F

.field public startX:F

.field public startY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->originToCenter()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    return-void
.end method


# virtual methods
.method public reset(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;IFF)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 3
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Lcom/watabou/noosa/Camera;->cameraToScreen(FF)Lcom/watabou/utils/Point;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object p2

    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p2, v0, p1}, Lcom/watabou/noosa/Camera;->screenToCamera(II)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 6
    iget p2, p1, Lcom/watabou/utils/PointF;->x:F

    const/high16 v0, 0x41000000    # 8.0f

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->startX:F

    iput p2, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 7
    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->startY:F

    iput p1, p0, Lcom/watabou/noosa/Visual;->y:F

    sub-float/2addr p3, v0

    .line 8
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->endX:F

    sub-float/2addr p4, v0

    .line 9
    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->endY:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 10
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->left:F

    .line 11
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    sget-object p2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget p2, p2, Lcom/watabou/noosa/Camera;->zoom:F

    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object p3

    iget p3, p3, Lcom/watabou/noosa/Camera;->zoom:F

    div-float/2addr p2, p3

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->startScale:F

    .line 12
    iput p2, p1, Lcom/watabou/utils/PointF;->x:F

    .line 13
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->left:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->left:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v1, :cond_1

    iput-boolean v0, v1, Lcom/watabou/noosa/particles/Emitter;->on:Z

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->startScale:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    .line 6
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 8
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->startX:F

    mul-float v1, v1, v0

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->endX:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    iput v2, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 9
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->startY:F

    mul-float v1, v1, v0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->endY:F

    mul-float v0, v0, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    :cond_1
    :goto_0
    return-void
.end method
