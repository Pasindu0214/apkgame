.class public Lcom/watabou/noosa/PointerArea;
.super Lcom/watabou/noosa/Visual;
.source "PointerArea.java"

# interfaces
.implements Lcom/watabou/utils/Signal$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/watabou/noosa/Visual;",
        "Lcom/watabou/utils/Signal$Listener<",
        "Lcom/watabou/input/PointerEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public blockWhenInactive:Z

.field public curEvent:Lcom/watabou/input/PointerEvent;

.field public target:Lcom/watabou/noosa/Visual;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/watabou/noosa/PointerArea;->blockWhenInactive:Z

    .line 9
    iput-object p0, p0, Lcom/watabou/noosa/PointerArea;->target:Lcom/watabou/noosa/Visual;

    .line 10
    iput-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 11
    sget-object p1, Lcom/watabou/input/PointerEvent;->pointerSignal:Lcom/watabou/utils/Signal;

    invoke-virtual {p1, p0}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method

.method public constructor <init>(Lcom/watabou/noosa/Visual;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/watabou/noosa/PointerArea;->blockWhenInactive:Z

    .line 4
    iput-object p1, p0, Lcom/watabou/noosa/PointerArea;->target:Lcom/watabou/noosa/Visual;

    .line 5
    sget-object p1, Lcom/watabou/input/PointerEvent;->pointerSignal:Lcom/watabou/utils/Signal;

    invoke-virtual {p1, p0}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/watabou/input/PointerEvent;->pointerSignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v0, p0}, Lcom/watabou/utils/Signal;->remove(Lcom/watabou/utils/Signal$Listener;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    return-void
.end method

.method public onClick(Lcom/watabou/input/PointerEvent;)V
    .locals 0

    return-void
.end method

.method public onDrag(Lcom/watabou/input/PointerEvent;)V
    .locals 0

    return-void
.end method

.method public onPointerDown(Lcom/watabou/input/PointerEvent;)V
    .locals 0

    return-void
.end method

.method public onPointerUp(Lcom/watabou/input/PointerEvent;)V
    .locals 0

    return-void
.end method

.method public onSignal(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lcom/watabou/input/PointerEvent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/watabou/noosa/PointerArea;->target:Lcom/watabou/noosa/Visual;

    iget-object v3, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget v4, v3, Lcom/watabou/utils/PointF;->x:F

    float-to-int v4, v4

    iget v3, v3, Lcom/watabou/utils/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {v2, v4, v3}, Lcom/watabou/noosa/Visual;->overlapsScreenPoint(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/watabou/noosa/PointerArea;->blockWhenInactive:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 5
    iget-boolean v2, p1, Lcom/watabou/input/PointerEvent;->down:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 6
    :cond_5
    :goto_2
    iget-boolean v1, p1, Lcom/watabou/input/PointerEvent;->down:Z

    if-eqz v1, :cond_7

    .line 7
    iget-object v1, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    if-nez v1, :cond_6

    .line 8
    iput-object p1, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    .line 9
    :cond_6
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/PointerArea;->onPointerDown(Lcom/watabou/input/PointerEvent;)V

    goto :goto_1

    .line 10
    :cond_7
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/PointerArea;->onPointerUp(Lcom/watabou/input/PointerEvent;)V

    .line 11
    iget-object v1, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    if-ne v1, p1, :cond_2

    .line 12
    iput-object v3, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    .line 13
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/PointerArea;->onClick(Lcom/watabou/input/PointerEvent;)V

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    .line 14
    iget-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/PointerArea;->onDrag(Lcom/watabou/input/PointerEvent;)V

    goto :goto_3

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/watabou/input/PointerEvent;->down:Z

    if-nez v0, :cond_a

    .line 17
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/PointerArea;->onPointerUp(Lcom/watabou/input/PointerEvent;)V

    .line 18
    iput-object v3, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    :cond_a
    :goto_3
    return v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/watabou/noosa/PointerArea;->curEvent:Lcom/watabou/input/PointerEvent;

    return-void
.end method
