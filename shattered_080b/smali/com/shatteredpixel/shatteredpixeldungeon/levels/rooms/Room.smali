.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;
.super Lcom/watabou/utils/Rect;
.source "Room.java"

# interfaces
.implements Lcom/watabou/utils/Graph$Node;
.implements Lcom/watabou/utils/Bundlable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;
    }
.end annotation


# instance fields
.field public connected:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;",
            ">;"
        }
    .end annotation
.end field

.field public distance:I

.field public neigbours:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation
.end field

.field public price:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->price:I

    return-void
.end method


# virtual methods
.method public addNeigbour(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/watabou/utils/Rect;->intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->width()I

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->height()I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->height()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    if-lt v0, v3, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public canConnect(I)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->curConnections(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxConnections(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxConnections(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->curConnections(I)I

    move-result p1

    sub-int/2addr v1, p1

    :goto_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public canConnect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z
    .locals 6

    .line 4
    invoke-virtual {p0, p1}, Lcom/watabou/utils/Rect;->intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/utils/Point;

    .line 6
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(Lcom/watabou/utils/Point;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(Lcom/watabou/utils/Point;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return v4

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->width()I

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v1, v2, :cond_4

    .line 8
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 9
    :cond_4
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->height()I

    move-result v1

    if-nez v1, :cond_6

    iget v1, v0, Lcom/watabou/utils/Rect;->top:I

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v1, v2, :cond_6

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3

    .line 11
    :cond_6
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->width()I

    move-result v1

    if-nez v1, :cond_8

    iget v1, v0, Lcom/watabou/utils/Rect;->right:I

    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v1, v2, :cond_8

    const/4 v0, 0x3

    .line 12
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    return v3

    .line 13
    :cond_8
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->height()I

    move-result v1

    if-nez v1, :cond_a

    iget v0, v0, Lcom/watabou/utils/Rect;->bottom:I

    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x4

    .line 14
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    return v3

    :cond_a
    return v4
.end method

.method public canConnect(Lcom/watabou/utils/Point;)Z
    .locals 4

    .line 3
    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    if-eq p1, v1, :cond_3

    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eq v0, p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public canPlaceCharacter(Lcom/watabou/utils/Point;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result p1

    return p1
.end method

.method public canPlaceGrass(Lcom/watabou/utils/Point;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result p1

    return p1
.end method

.method public canPlaceTrap(Lcom/watabou/utils/Point;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result p1

    return p1
.end method

.method public canPlaceWater(Lcom/watabou/utils/Point;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result p1

    return p1
.end method

.method public center()Lcom/watabou/utils/Point;
    .locals 8

    .line 1
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    add-int v3, v1, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sub-int/2addr v2, v1

    rem-int/2addr v2, v4

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 2
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v3, v2

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int v7, v2, v6

    div-int/2addr v7, v4

    sub-int/2addr v6, v2

    rem-int/2addr v6, v4

    if-ne v6, v5, :cond_1

    .line 3
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    :cond_1
    add-int/2addr v7, v1

    invoke-direct {v0, v3, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    return-object v0
.end method

.method public clearConnections()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 2
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 5
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->addNeigbour(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public curConnections(I)I
    .locals 5

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 3
    invoke-virtual {p0, v2}, Lcom/watabou/utils/Rect;->intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 4
    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->width()I

    move-result v3

    if-nez v3, :cond_2

    iget v3, v2, Lcom/watabou/utils/Rect;->left:I

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v3, v4, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 5
    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->height()I

    move-result v3

    if-nez v3, :cond_3

    iget v3, v2, Lcom/watabou/utils/Rect;->top:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 6
    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->width()I

    move-result v3

    if-nez v3, :cond_4

    iget v3, v2, Lcom/watabou/utils/Rect;->right:I

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->height()I

    move-result v3

    if-nez v3, :cond_1

    iget v2, v2, Lcom/watabou/utils/Rect;->bottom:I

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public distance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->distance:I

    return v0
.end method

.method public distance(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->distance:I

    return-void
.end method

.method public edges()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 3
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->EMPTY:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->TUNNEL:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->UNLOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    if-ne v3, v4, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public height()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/utils/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public inside(Lcom/watabou/utils/Point;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    if-le v0, v1, :cond_0

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    if-le p1, v1, :cond_0

    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maxConnections(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x10

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1
.end method

.method public maxHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public maxWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public minHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onLevelLoad(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 0

    return-void
.end method

.method public abstract paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->price:I

    return v0
.end method

.method public random()Lcom/watabou/utils/Point;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random(I)Lcom/watabou/utils/Point;

    move-result-object v0

    return-object v0
.end method

.method public random(I)Lcom/watabou/utils/Point;
    .locals 4

    .line 2
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, p1

    .line 3
    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/watabou/utils/Point;-><init>(II)V

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    const-string v0, "left"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/watabou/utils/Rect;->left:I

    const-string v0, "top"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/watabou/utils/Rect;->top:I

    const-string v0, "right"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/watabou/utils/Rect;->right:I

    const-string v0, "bottom"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/watabou/utils/Rect;->bottom:I

    return-void
.end method

.method public setSize()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->minWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->minHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxHeight()I

    move-result v3

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->minWidth()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxWidth()I

    move-result v4

    if-gt v1, v4, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->minHeight()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxHeight()I

    move-result v4

    if-gt v3, v4, :cond_1

    if-gt v0, v1, :cond_1

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 7
    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    sub-int/2addr v2, v1

    .line 8
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v0, v3

    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v4, v0, v2}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    const-string v1, "left"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    iget v0, p0, Lcom/watabou/utils/Rect;->top:I

    const-string v1, "top"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/watabou/utils/Rect;->right:I

    const-string v1, "right"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    const-string v1, "bottom"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public width()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
