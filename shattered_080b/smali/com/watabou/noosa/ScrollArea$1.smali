.class public Lcom/watabou/noosa/ScrollArea$1;
.super Ljava/lang/Object;
.source "ScrollArea.java"

# interfaces
.implements Lcom/watabou/utils/Signal$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/watabou/noosa/ScrollArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/watabou/utils/Signal$Listener<",
        "Lcom/watabou/input/ScrollEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/watabou/noosa/ScrollArea;


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/ScrollArea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/watabou/noosa/ScrollArea$1;->this$0:Lcom/watabou/noosa/ScrollArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignal(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lcom/watabou/input/ScrollEvent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/watabou/noosa/ScrollArea$1;->this$0:Lcom/watabou/noosa/ScrollArea;

    iget-object v2, v2, Lcom/watabou/noosa/PointerArea;->target:Lcom/watabou/noosa/Visual;

    iget-object v3, p1, Lcom/watabou/input/ScrollEvent;->pos:Lcom/watabou/utils/PointF;

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
    iget-object v3, p0, Lcom/watabou/noosa/ScrollArea$1;->this$0:Lcom/watabou/noosa/ScrollArea;

    invoke-virtual {v3}, Lcom/watabou/noosa/Gizmo;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/watabou/noosa/ScrollArea$1;->this$0:Lcom/watabou/noosa/ScrollArea;

    iget-boolean p1, p1, Lcom/watabou/noosa/PointerArea;->blockWhenInactive:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/watabou/noosa/ScrollArea$1;->this$0:Lcom/watabou/noosa/ScrollArea;

    invoke-virtual {v1, p1}, Lcom/watabou/noosa/ScrollArea;->onScroll(Lcom/watabou/input/ScrollEvent;)V

    :goto_1
    return v0
.end method
