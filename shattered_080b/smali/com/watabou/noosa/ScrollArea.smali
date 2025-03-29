.class public Lcom/watabou/noosa/ScrollArea;
.super Lcom/watabou/noosa/PointerArea;
.source "ScrollArea.java"


# instance fields
.field public scrollListener:Lcom/watabou/utils/Signal$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/Signal$Listener<",
            "Lcom/watabou/input/ScrollEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/watabou/noosa/PointerArea;-><init>(FFFF)V

    .line 5
    new-instance p1, Lcom/watabou/noosa/ScrollArea$1;

    invoke-direct {p1, p0}, Lcom/watabou/noosa/ScrollArea$1;-><init>(Lcom/watabou/noosa/ScrollArea;)V

    iput-object p1, p0, Lcom/watabou/noosa/ScrollArea;->scrollListener:Lcom/watabou/utils/Signal$Listener;

    .line 6
    sget-object p2, Lcom/watabou/input/ScrollEvent;->scrollSignal:Lcom/watabou/utils/Signal;

    invoke-virtual {p2, p1}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method

.method public constructor <init>(Lcom/watabou/noosa/Visual;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/watabou/noosa/PointerArea;-><init>(Lcom/watabou/noosa/Visual;)V

    .line 2
    new-instance p1, Lcom/watabou/noosa/ScrollArea$1;

    invoke-direct {p1, p0}, Lcom/watabou/noosa/ScrollArea$1;-><init>(Lcom/watabou/noosa/ScrollArea;)V

    iput-object p1, p0, Lcom/watabou/noosa/ScrollArea;->scrollListener:Lcom/watabou/utils/Signal$Listener;

    .line 3
    sget-object v0, Lcom/watabou/input/ScrollEvent;->scrollSignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v0, p1}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/PointerArea;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/ScrollArea;->scrollListener:Lcom/watabou/utils/Signal$Listener;

    .line 3
    sget-object v1, Lcom/watabou/input/ScrollEvent;->scrollSignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v1, v0}, Lcom/watabou/utils/Signal;->remove(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method

.method public onScroll(Lcom/watabou/input/ScrollEvent;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method
