.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "NewTengu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BombAbility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombBlob;
    }
.end annotation


# instance fields
.field public bombPos:I

.field public timer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->timer:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->bombPos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->timer:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 3
    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->bombPos:I

    const v6, 0xffff00

    const-string v7, "3..."

    invoke-static {v1, v0, v5, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->show(FFILjava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->bombPos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    .line 5
    :goto_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v1, v0

    if-ge v3, v1, :cond_3

    .line 6
    aget v0, v0, v3

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    .line 7
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombBlob;

    invoke-static {v3, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 8
    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->bombPos:I

    const v3, 0xff8800

    const-string v5, "2..."

    invoke-static {v1, v0, v2, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->show(FFILjava/lang/String;I)V

    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_4

    .line 9
    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->bombPos:I

    const/high16 v3, 0xff0000

    const-string v5, "1..."

    invoke-static {v1, v0, v2, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->show(FFILjava/lang/String;I)V

    .line 10
    :cond_3
    :goto_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->timer:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->timer:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v4

    .line 12
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->bombPos:I

    invoke-virtual {v0, v1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_7

    .line 13
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    new-array v2, v3, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v5, v1, v3

    .line 14
    instance-of v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;

    if-eqz v6, :cond_6

    .line 15
    iget-object v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    goto :goto_3

    .line 18
    :cond_5
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    if-eqz v5, :cond_6

    .line 19
    invoke-virtual {v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    return v4
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "bomb_pos"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->bombPos:I

    const-string v0, "timer"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->timer:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->bombPos:I

    const-string v1, "bomb_pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;->timer:I

    const-string v1, "timer"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
