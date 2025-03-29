.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;
    }
.end annotation


# instance fields
.field public avoid:[Z

.field public blobs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;",
            ">;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;",
            ">;"
        }
    .end annotation
.end field

.field public color1:I

.field public color2:I

.field public customTiles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;",
            ">;"
        }
    .end annotation
.end field

.field public customWalls:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;",
            ">;"
        }
    .end annotation
.end field

.field public discoverable:[Z

.field public entrance:I

.field public exit:I

.field public feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

.field public flamable:[Z

.field public heaps:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;",
            ">;"
        }
    .end annotation
.end field

.field public height:I

.field public heroFOV:[Z

.field public itemsToSpawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public length:I

.field public locked:Z

.field public losBlocking:[Z

.field public map:[I

.field public mapped:[Z

.field public mobs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;"
        }
    .end annotation
.end field

.field public mobsToSpawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;>;"
        }
    .end annotation
.end field

.field public openSpace:[Z

.field public passable:[Z

.field public pit:[Z

.field public plants:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;",
            ">;"
        }
    .end annotation
.end field

.field public secret:[Z

.field public solid:[Z

.field public traps:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;",
            ">;"
        }
    .end annotation
.end field

.field public version:I

.field public viewDistance:I

.field public visited:[Z

.field public visuals:Lcom/watabou/noosa/Group;

.field public water:[Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->itemsToSpawn:Ljava/util/ArrayList;

    const/16 v0, 0x4400

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0x88cc44

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobsToSpawn:Ljava/util/ArrayList;

    return-void
.end method

.method public static set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

    .line 1
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput p1, v0, p0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p0}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    aget v0, v0, p1

    .line 4
    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    aput-boolean v2, v1, p0

    .line 5
    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    aput-boolean v2, v1, p0

    .line 6
    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    aput-boolean v2, v1, p0

    .line 7
    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->secret:[Z

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    aput-boolean v2, v1, p0

    .line 8
    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    aput-boolean v2, v1, p0

    .line 9
    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    aput-boolean v2, v1, p0

    .line 10
    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    aput-boolean v0, v1, p0

    .line 11
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    const/16 v1, 0x1d

    if-ne p1, v1, :cond_8

    const/4 p1, 0x1

    goto :goto_7

    :cond_8
    const/4 p1, 0x0

    :goto_7
    aput-boolean p1, v0, p0

    .line 12
    iget-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/SmokeScreen;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/SmokeScreen;

    if-eqz p1, :cond_b

    .line 13
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v0, :cond_b

    .line 14
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    aget-boolean v1, v0, p0

    if-nez v1, :cond_a

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget p1, p1, p0

    if-lez p1, :cond_9

    goto :goto_8

    :cond_9
    const/4 p1, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 p1, 0x1

    :goto_9
    aput-boolean p1, v0, p0

    .line 15
    :cond_b
    sget-object p1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_10

    aget v2, p1, v1

    add-int/2addr v2, p0

    .line 16
    iget-object v5, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_c

    .line 17
    iget-object v5, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aput-boolean v3, v5, v2

    goto :goto_d

    :cond_c
    const/4 v5, 0x1

    .line 18
    :goto_b
    sget-object v6, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    array-length v7, v6

    if-ge v5, v7, :cond_f

    .line 19
    iget-object v7, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget v8, v6, v5

    add-int/2addr v8, v2

    aget-boolean v8, v7, v8

    if-eqz v8, :cond_d

    .line 20
    iget-object v6, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aput-boolean v3, v6, v2

    goto :goto_c

    :cond_d
    add-int/lit8 v8, v5, 0x1

    .line 21
    rem-int/lit8 v8, v8, 0x8

    aget v8, v6, v8

    add-int/2addr v8, v2

    aget-boolean v8, v7, v8

    if-nez v8, :cond_e

    add-int/lit8 v8, v5, 0x2

    rem-int/lit8 v8, v8, 0x8

    aget v6, v6, v8

    add-int/2addr v6, v2

    aget-boolean v6, v7, v6

    if-nez v6, :cond_e

    .line 22
    iget-object v5, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aput-boolean v4, v5, v2

    goto :goto_d

    :cond_e
    :goto_c
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    :cond_f
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    return-void
.end method


# virtual methods
.method public addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->itemsToSpawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/watabou/noosa/Group;->clear()V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/watabou/noosa/Group;

    invoke-direct {v0}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    :goto_1
    const/4 v0, 0x0

    .line 5
    :goto_2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;

    invoke-direct {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WindParticle$Wind;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    if-lt v0, v1, :cond_2

    .line 9
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    sub-int v3, v0, v1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlowParticle$Flow;

    sub-int v1, v0, v1

    invoke-direct {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlowParticle$Flow;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public adjacent(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public abstract build()Z
.end method

.method public buildFlagMaps()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_8

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v4, v1

    aget v2, v2, v4

    .line 3
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v1

    .line 4
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    aput-boolean v5, v4, v1

    .line 5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    aput-boolean v5, v4, v1

    .line 6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->secret:[Z

    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    aput-boolean v5, v4, v1

    .line 7
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    aput-boolean v5, v4, v1

    .line 8
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    :goto_6
    aput-boolean v5, v4, v1

    .line 9
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_7

    :cond_6
    const/4 v5, 0x0

    :goto_7
    aput-boolean v5, v4, v1

    .line 10
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    :goto_8
    aput-boolean v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/SmokeScreen;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/SmokeScreen;

    if-eqz v1, :cond_b

    .line 12
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v2, :cond_b

    const/4 v2, 0x0

    .line 13
    :goto_9
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v2, v4, :cond_b

    .line 14
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    aget-boolean v5, v4, v2

    if-nez v5, :cond_a

    iget-object v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v5, v5, v2

    if-lez v5, :cond_9

    goto :goto_a

    :cond_9
    const/4 v5, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v5, 0x1

    :goto_b
    aput-boolean v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 15
    :cond_b
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Web;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Web;

    if-eqz v1, :cond_e

    .line 16
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v2, :cond_e

    const/4 v2, 0x0

    .line 17
    :goto_c
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v2, v4, :cond_e

    .line 18
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v5, v4, v2

    if-nez v5, :cond_d

    iget-object v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v5, v5, v2

    if-lez v5, :cond_c

    goto :goto_d

    :cond_c
    const/4 v5, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v5, 0x1

    :goto_e
    aput-boolean v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 19
    :cond_e
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 20
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 21
    :goto_f
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    if-ge v2, v4, :cond_f

    .line 22
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aput-boolean v0, v5, v2

    aput-boolean v0, v4, v2

    .line 23
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aput-boolean v3, v7, v2

    aput-boolean v3, v6, v2

    add-int v8, v1, v2

    .line 24
    aput-boolean v0, v5, v8

    aput-boolean v0, v4, v8

    .line 25
    aput-boolean v3, v7, v8

    aput-boolean v3, v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_f
    :goto_10
    if-ge v4, v1, :cond_10

    .line 26
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aput-boolean v0, v5, v4

    aput-boolean v0, v2, v4

    .line 27
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aput-boolean v3, v7, v4

    aput-boolean v3, v6, v4

    .line 28
    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int v9, v4, v8

    sub-int/2addr v9, v3

    add-int v10, v4, v8

    sub-int/2addr v10, v3

    .line 29
    aput-boolean v0, v5, v10

    aput-boolean v0, v2, v9

    add-int v2, v4, v8

    sub-int/2addr v2, v3

    add-int v5, v4, v8

    sub-int/2addr v5, v3

    .line 30
    aput-boolean v3, v7, v5

    aput-boolean v3, v6, v2

    add-int/2addr v4, v8

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    .line 31
    :goto_11
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v2, :cond_15

    .line 32
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_11

    .line 33
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aput-boolean v0, v2, v1

    goto :goto_14

    :cond_11
    const/4 v2, 0x1

    .line 34
    :goto_12
    sget-object v4, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    array-length v5, v4

    if-ge v2, v5, :cond_14

    .line 35
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget v6, v4, v2

    add-int/2addr v6, v1

    aget-boolean v6, v5, v6

    if-eqz v6, :cond_12

    .line 36
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aput-boolean v0, v4, v1

    goto :goto_13

    :cond_12
    add-int/lit8 v6, v2, 0x1

    .line 37
    rem-int/lit8 v6, v6, 0x8

    aget v6, v4, v6

    add-int/2addr v6, v1

    aget-boolean v6, v5, v6

    if-nez v6, :cond_13

    add-int/lit8 v6, v2, 0x2

    rem-int/lit8 v6, v6, 0x8

    aget v4, v4, v6

    add-int/2addr v4, v1

    aget-boolean v4, v5, v4

    if-nez v4, :cond_13

    .line 38
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aput-boolean v3, v2, v1

    goto :goto_14

    :cond_13
    :goto_13
    add-int/lit8 v2, v2, 0x2

    goto :goto_12

    :cond_14
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_15
    return-void
.end method

.method public cellToPoint(I)Lcom/watabou/utils/Point;
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/Point;

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    rem-int v2, p1, v1

    div-int/2addr p1, v1

    invoke-direct {v0, v2, p1}, Lcom/watabou/utils/Point;-><init>(II)V

    return-object v0
.end method

.method public cleanWalls()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 3
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v2, :cond_4

    const/4 v2, 0x0

    .line 5
    :goto_1
    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 6
    aget v3, v3, v2

    add-int/2addr v3, v1

    if-ltz v3, :cond_2

    .line 7
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v3, v4, :cond_2

    .line 8
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v4, v3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    aget v3, v4, v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 9
    :goto_2
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    aput-boolean v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public create()V
    .locals 14

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seedCurDepth()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->pushGenerator(J)V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/SmallRation;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/SmallRation;-><init>()V

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :goto_0
    const/16 v2, 0x20

    .line 6
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;-><init>()V

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 8
    :cond_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->STRENGTH_POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v4, v3, 0x5

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    rsub-int/lit8 v2, v2, 0x2

    if-gtz v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    rem-int/lit8 v3, v3, 0x5

    .line 10
    div-int/lit8 v4, v3, 0x2

    rsub-int/lit8 v4, v4, 0x2

    .line 11
    rem-int/2addr v3, v5

    if-ne v3, v0, :cond_3

    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v4, v4, -0x1

    :cond_3
    if-ge v4, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 12
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;-><init>()V

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 13
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->STRENGTH_POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    :cond_5
    const/16 v2, 0x40

    .line 14
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_6

    .line 15
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->UPGRADE_SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    int-to-float v2, v2

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float v4, v4, v6

    sub-float/2addr v2, v4

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_3

    .line 16
    :cond_6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->UPGRADE_SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v4, v4, 0x5

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v2, v4

    rsub-int/lit8 v2, v2, 0x3

    :goto_3
    if-gtz v2, :cond_7

    goto :goto_4

    .line 17
    :cond_7
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    rem-int/lit8 v4, v4, 0x5

    rsub-int/lit8 v4, v4, 0x5

    .line 18
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-ge v4, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_9

    .line 19
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;-><init>()V

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 20
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->UPGRADE_SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 21
    :cond_9
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->ARCANE_STYLI:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v6, v4, 0x5

    sub-int/2addr v2, v6

    rsub-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_a

    goto :goto_6

    .line 22
    :cond_a
    rem-int/lit8 v4, v4, 0x5

    rsub-int/lit8 v4, v4, 0x5

    .line 23
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-ge v4, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_c

    .line 24
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Stylus;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Stylus;-><init>()V

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 25
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->ARCANE_STYLI:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 26
    :cond_c
    sget-wide v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3

    rem-long/2addr v6, v8

    long-to-int v2, v6

    add-int/2addr v2, v0

    .line 27
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v4, v4, 0x5

    const-wide/16 v6, 0x1

    if-ne v4, v2, :cond_d

    sget-wide v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    const-wide/16 v12, 0x4

    rem-long/2addr v10, v12

    add-long/2addr v10, v6

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    rem-int/lit8 v2, v2, 0x5

    int-to-long v12, v2

    cmp-long v2, v10, v12

    if-nez v2, :cond_d

    .line 28
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 29
    :cond_d
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    int-to-long v10, v2

    sget-wide v12, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    rem-long/2addr v12, v8

    add-long/2addr v12, v6

    cmp-long v2, v10, v12

    if-nez v2, :cond_e

    .line 30
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;-><init>()V

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 31
    :cond_e
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-le v2, v0, :cond_13

    const/16 v2, 0xa

    .line 32
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-eqz v2, :cond_12

    if-eq v2, v0, :cond_11

    if-eq v2, v5, :cond_10

    if-eq v2, v3, :cond_f

    goto :goto_8

    .line 33
    :cond_f
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->DARK:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    .line 34
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;-><init>()V

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 35
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    goto :goto_8

    .line 36
    :cond_10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->GRASS:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    goto :goto_8

    .line 37
    :cond_11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->WATER:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    goto :goto_8

    .line 38
    :cond_12
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 39
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->CHASM:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    .line 40
    :cond_13
    :goto_8
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    .line 42
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    .line 44
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    .line 45
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    .line 48
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->build()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->buildFlagMaps()V

    .line 50
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cleanWalls()V

    .line 51
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->createMobs()V

    .line 52
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->createItems()V

    .line 53
    invoke-static {}, Lcom/watabou/utils/Random;->popGenerator()V

    return-void
.end method

.method public abstract createItems()V
.end method

.method public createMob()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobsToSpawn:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-static {v0}, La/b/a/e;->getMobRotation(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobsToSpawn:Ljava/util/ArrayList;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobsToSpawn:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    return-object v0
.end method

.method public abstract createMobs()V
.end method

.method public destroy(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    return-void
.end method

.method public discover(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->discover(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    return-void
.end method

.method public distance(II)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 2
    rem-int v1, p1, v0

    .line 3
    div-int/2addr p1, v0

    .line 4
    rem-int v2, p2, v0

    .line 5
    div-int/2addr p2, v0

    sub-int/2addr v1, v2

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    .line 1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-nez v1, :cond_4

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;-><init>()V

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    if-ne v2, p0, :cond_1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v2, v2, p2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->seen:Z

    .line 5
    iput p2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    .line 6
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 7
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v2, v2, p2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v2, v2, p2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p2, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->addHeapSprite(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    goto :goto_2

    .line 11
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->dropToChasm(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 12
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->discard(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    goto :goto_2

    .line 13
    :cond_4
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v2, v3, :cond_8

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v2, v3, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 15
    :cond_6
    :goto_2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    if-eqz p1, :cond_7

    .line 16
    sget-object p1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object p1, p1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 17
    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p0, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    :cond_7
    return-object v1

    .line 19
    :cond_8
    :goto_3
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    aget v0, v0, v1

    add-int/2addr v0, p2

    .line 20
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_8

    .line 21
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    return-object p1

    .line 22
    :cond_a
    :goto_4
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;-><init>()V

    .line 23
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-direct {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>()V

    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 24
    iput-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 25
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 26
    iput-boolean v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->renderShadow:Z

    .line 27
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    return-object p1
.end method

.method public fallCell(Z)I
    .locals 1

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v0

    if-nez v0, :cond_0

    return p1
.end method

.method public findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 2
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPrizeItem()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findPrizeItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    return-object v0
.end method

.method public findPrizeItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->itemsToSpawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->itemsToSpawn:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->itemsToSpawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->itemsToSpawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->itemsToSpawn:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object v2

    :cond_3
    return-object v1
.end method

.method public insideMap(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_0

    rem-int v2, p1, v0

    if-eqz v2, :cond_0

    rem-int/2addr p1, v0

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nMobs()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Web;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Web;->affectChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v0, :cond_6

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_1

    .line 7
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;->heroFall(I)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;->mobFall(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    :cond_2
    :goto_0
    return-void

    .line 10
    :cond_3
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-nez v0, :cond_5

    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    goto :goto_3

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v0, v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 12
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->enter(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;
    .locals 9

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->wither()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v0, p2

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    aget v1, v0, p2

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_2

    aget v1, v0, p2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    aget v1, v0, p2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    aget v0, v0, p2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x2

    .line 5
    invoke-static {p2, v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 6
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 7
    :cond_3
    invoke-virtual {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;->couch(ILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p2, p1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_5

    .line 10
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrainFeatures:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    .line 11
    iget-object v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    aget v0, v0, p2

    invoke-static {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->tile(II)Lcom/watabou/noosa/Image;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, v6, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v3, 0x41400000    # 12.0f

    .line 13
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 14
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    .line 15
    iget-object v0, v6, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 17
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 18
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 19
    iget-object v0, v2, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    iget-object v0, v2, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap$1;

    new-instance v4, Lcom/watabou/utils/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v1}, Lcom/watabou/utils/PointF;-><init>(FF)V

    const v5, 0x3e4ccccd    # 0.2f

    move-object v1, v8

    move-object v3, v6

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;Lcom/watabou/noosa/Visual;Lcom/watabou/utils/PointF;FLcom/watabou/noosa/Image;I)V

    invoke-virtual {v0, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_5
    :goto_0
    return-object p1
.end method

.method public pointToCell(Lcom/watabou/utils/Point;)I
    .locals 2

    .line 1
    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int p1, p1, v1

    add-int/2addr p1, v0

    return p1
.end method

.method public final pressCell(IZ)V
    .locals 11

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Web;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, p1

    const/4 v2, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_d

    const/16 v2, 0xf

    const/4 v4, 0x1

    const/16 v5, 0x1e

    const/16 v6, 0x18

    const/4 v7, 0x0

    if-eq v1, v2, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_3

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    goto/16 :goto_4

    :cond_1
    if-eqz p2, :cond_e

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 5
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string v5, "hidden_trap"

    invoke-static {v2, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 6
    :cond_2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;->affectCell(I)V

    goto/16 :goto_3

    .line 7
    :cond_3
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/HighGrass;->freezeTrample:Z

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 8
    :cond_4
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v2, v2, p1

    const/4 v8, 0x2

    if-ne v2, v5, :cond_6

    .line 10
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-ne v1, v2, :cond_5

    .line 11
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/HighGrass;->freezeTrample:Z

    goto/16 :goto_2

    .line 12
    :cond_5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p1, v8, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    goto/16 :goto_2

    .line 13
    :cond_6
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v2, :cond_7

    move-object v9, v1

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-ne v9, v10, :cond_7

    .line 14
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p1, v5, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 15
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/HighGrass;->freezeTrample:Z

    goto :goto_0

    .line 16
    :cond_7
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p1, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    :goto_0
    if-eqz v1, :cond_9

    .line 17
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$Naturalism;

    invoke-virtual {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$Naturalism;

    if-eqz v5, :cond_9

    .line 18
    iget-object v8, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    iget-boolean v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v9, :cond_8

    .line 19
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/2addr v8, v4

    .line 20
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$Naturalism;->charge()V

    goto :goto_1

    :cond_8
    const/4 v8, -0x1

    goto :goto_1

    :cond_9
    const/4 v8, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ltz v8, :cond_b

    mul-int/lit8 v5, v8, 0x4

    rsub-int/lit8 v5, v5, 0x14

    .line 21
    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    if-nez v5, :cond_a

    .line 22
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v5

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :cond_a
    mul-int/lit8 v8, v8, 0x3

    sub-int/2addr v6, v8

    .line 23
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    if-gt v5, v4, :cond_b

    .line 24
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Dewdrop;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Dewdrop;-><init>()V

    invoke-virtual {p0, v5, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v5

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :cond_b
    if-eqz v2, :cond_c

    .line 25
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 26
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v2, :cond_c

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Camouflage;

    invoke-virtual {v2, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 27
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Camouflage$Camo;

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Camouflage$Camo;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->buffedLvl()I

    move-result v1

    add-int/2addr v1, v4

    .line 28
    iput v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Camouflage$Camo;->left:I

    .line 29
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Camouflage$Camo;->pos:I

    .line 30
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_meld.mp3"

    .line 31
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 32
    :cond_c
    :goto_2
    sput-boolean v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/HighGrass;->freezeTrample:Z

    .line 33
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 34
    instance-of v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v1, :cond_e

    .line 35
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 36
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->LEVEL_SPECIFIC:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 37
    invoke-virtual {v1, v2, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 38
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    goto :goto_3

    .line 39
    :cond_d
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->enter(I)V

    :cond_e
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_12

    .line 40
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    .line 41
    invoke-virtual {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    .line 42
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    .line 43
    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    const-string v5, "snd_trap.mp3"

    if-eqz v4, :cond_f

    .line 44
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 45
    invoke-virtual {v1, v5, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 46
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discover(I)V

    .line 47
    iget-object v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;->presses:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 48
    iget-object v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;->presses:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    if-eqz v2, :cond_10

    .line 49
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 50
    invoke-virtual {v1, v5, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 51
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discover(I)V

    .line 52
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;->presses:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 53
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;->presses:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 54
    :cond_10
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v3, p1, :cond_11

    .line 55
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 56
    :cond_11
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->trigger()V

    .line 57
    :cond_12
    :goto_5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    if-eqz v1, :cond_14

    .line 58
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    .line 59
    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v3, :cond_13

    .line 60
    move-object v3, v2

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 61
    :cond_13
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->wither()V

    .line 62
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_14
    if-eqz p2, :cond_15

    .line 63
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result p2

    if-lez p2, :cond_15

    .line 64
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    :cond_15
    return-void
.end method

.method public randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 4
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    :cond_1
    return v0
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 4
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 5
    :cond_2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_0

    return v0
.end method

.method public respawnTime()F
    .locals 2

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41c80000    # 25.0f

    return v0

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->DARK:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v0, v1, :cond_1

    const v0, 0x42055555

    return v0

    :cond_1
    const/high16 v0, 0x42480000    # 50.0f

    return v0
.end method

.method public respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 4

    const-string v0, "version"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->version:I

    const/16 v1, 0x108

    if-lt v0, v1, :cond_e

    const-string v0, "width"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    .line 4
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    .line 6
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    .line 7
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    const-string v0, "map"

    .line 10
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const-string v0, "visited"

    .line 11
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    const-string v0, "mapped"

    .line 12
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    const-string v0, "entrance"

    .line 13
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const-string v0, "exit"

    .line 14
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    const-string v0, "locked"

    .line 15
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    const-string v0, "heaps"

    .line 16
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    .line 18
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 19
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v2, v3, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "plants"

    .line 21
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    .line 23
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 24
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    invoke-virtual {v2, v3, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "traps"

    .line 25
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    .line 27
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 28
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-virtual {v2, v3, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v0, "customTiles"

    .line 29
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    .line 31
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;

    .line 32
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const-string v0, "customWalls"

    .line 33
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    .line 35
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;

    .line 36
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    const-string v0, "mobs"

    .line 37
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    .line 39
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v1, :cond_6

    .line 40
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    const-string v0, "blobs"

    .line 41
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    .line 43
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    .line 44
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 45
    :cond_8
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const-string v1, "feeling"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    .line 46
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->DARK:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v0, v1, :cond_9

    .line 47
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    :cond_9
    const-string v0, "mobs_to_spawn"

    .line 48
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 49
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getClassArray(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_b

    aget-object v2, p1, v1

    if-eqz v2, :cond_a

    .line 50
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobsToSpawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 51
    :cond_b
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->buildFlagMaps()V

    .line 52
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cleanWalls()V

    .line 53
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 54
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->MIMIC:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v1, v2, :cond_c

    .line 55
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v1, v2}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    .line 57
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    invoke-static {v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->spawnAt(ILjava/util/List;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    return-void

    .line 59
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "old save"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public seal()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    :cond_0
    return-void
.end method

.method public setCellToWater(ZI)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 2
    rem-int v1, p2, v0

    div-int v0, p2, v0

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;

    .line 4
    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    sub-int v5, v1, v5

    .line 5
    iget v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    sub-int v6, v0, v6

    if-ltz v5, :cond_0

    if-ltz v6, :cond_0

    .line 6
    iget v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    if-ge v5, v7, :cond_0

    iget v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    if-ge v6, v7, :cond_0

    .line 7
    invoke-virtual {v3, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->image(II)Lcom/watabou/noosa/Image;

    move-result-object v3

    if-eqz v3, :cond_0

    return v4

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, v0, p2

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_5

    const/16 v3, 0xe

    if-eq v0, v3, :cond_5

    const/16 v3, 0xf

    if-eq v0, v3, :cond_5

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_5

    const/16 v3, 0x14

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    const/16 p1, 0x11

    if-eq v0, p1, :cond_3

    const/16 p1, 0x12

    if-eq v0, p1, :cond_3

    const/16 p1, 0x13

    if-ne v0, p1, :cond_4

    .line 9
    :cond_3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p2, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 10
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p2}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    return v2

    :cond_4
    return v4

    .line 12
    :cond_5
    :goto_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p2, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 13
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    return v2
.end method

.method public setSize(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 2
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    mul-int v0, p1, p2

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->CHASM:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    .line 7
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    .line 8
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    .line 9
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    .line 10
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    .line 11
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    .line 12
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->secret:[Z

    .line 13
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    .line 14
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    .line 15
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    .line 16
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    .line 17
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    .line 18
    invoke-static {p1, p2}, Lcom/watabou/utils/PathFinder;->setMapSize(II)V

    return-void
.end method

.method public setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p2}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 3
    :cond_0
    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p2, p1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    return-object p1
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    sget v0, Lcom/watabou/noosa/Game;->versionCode:I

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const-string v1, "width"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    const-string v1, "height"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const-string v1, "map"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[I)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    const-string v1, "visited"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Z)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    const-string v1, "mapped"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Z)V

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const-string v1, "entrance"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 8
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    const-string v1, "exit"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 9
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    const-string v1, "locked"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    const-string v1, "heaps"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    const-string v1, "plants"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    const-string v1, "traps"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    const-string v1, "customTiles"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    const-string v1, "customWalls"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const-string v1, "mobs"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "blobs"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const-string v1, "feeling"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Enum;)V

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobsToSpawn:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    const-string v1, "mobs_to_spawn"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/16 v2, 0xd

    if-eq p1, v2, :cond_3

    const/16 v2, 0xf

    if-eq p1, v2, :cond_2

    const/16 v2, 0x13

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string p1, ""

    return-object p1

    :pswitch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "water_desc"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "alchemy_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "sign_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "locked_exit_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "locked_door_desc"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "embers_desc"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "exit_desc"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "entrance_desc"

    .line 9
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "statue_desc"

    .line 10
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "inactive_trap_desc"

    .line 11
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :pswitch_8
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "high_grass_desc"

    .line 12
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "barricade_desc"

    .line 13
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "empty_well_desc"

    .line 14
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "chasm_desc"

    .line 15
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_6
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "default_name"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "furrowed_grass_name"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "water_name"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "alchemy_name"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "bookshelf_name"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "statue_name"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "well_name"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "sign_name"

    .line 9
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "unlocked_exit_name"

    .line 10
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "locked_exit_name"

    .line 11
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "inactive_trap_name"

    .line 12
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "high_grass_name"

    .line 13
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_c
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "barricade_name"

    .line 14
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "pedestal_name"

    .line 15
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_e
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "locked_door_name"

    .line 16
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_f
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "embers_name"

    .line 17
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_10
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "exit_name"

    .line 18
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_11
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "entrace_name"

    .line 19
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_12
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "open_door_name"

    .line 20
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_13
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "closed_door_name"

    .line 21
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_14
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "wall_name"

    .line 22
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_15
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "empty_well_name"

    .line 23
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_16
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "grass_name"

    .line 24
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_17
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "floor_name"

    .line 25
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_18
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "chasm_name"

    .line 26
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_14
        :pswitch_c
        :pswitch_17
        :pswitch_b
        :pswitch_14
        :pswitch_17
        :pswitch_0
        :pswitch_a
        :pswitch_17
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public trueDistance(II)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 2
    rem-int v1, p1, v0

    .line 3
    div-int/2addr p1, v0

    .line 4
    rem-int v2, p2, v0

    .line 5
    div-int/2addr p2, v0

    sub-int/2addr v1, v2

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public tunnelTile()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->CHASM:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    if-ne v0, v1, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public unseal()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    :cond_0
    return-void
.end method

.method public updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V
    .locals 13

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MindVision;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    rem-int v3, v1, v2

    .line 4
    div-int/2addr v1, v2

    .line 5
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Blindness;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Shadows;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-nez v2, :cond_0

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;

    .line 6
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v6, 0x3fc00000    # 1.5f

    if-eqz v2, :cond_8

    .line 7
    instance-of v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v7, :cond_1

    move-object v8, p1

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-eq v8, v9, :cond_2

    :cond_1
    instance-of v8, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$SoiledFist;

    if-eqz v8, :cond_5

    .line 8
    :cond_2
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    invoke-virtual {v8}, [Z->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Z

    const/4 v9, 0x0

    .line 9
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_6

    .line 10
    aget-boolean v10, v8, v9

    if-eqz v10, :cond_4

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v11, v10, v9

    const/16 v12, 0xf

    if-eq v11, v12, :cond_3

    aget v10, v10, v9

    const/16 v11, 0x1e

    if-ne v10, v11, :cond_4

    .line 11
    :cond_3
    aput-boolean v4, v8, v9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 12
    :cond_5
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    .line 13
    :cond_6
    iget v9, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    if-eqz v7, :cond_7

    .line 14
    move-object v7, p1

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->SNIPER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v7, v10, :cond_7

    int-to-float v7, v9

    mul-float v7, v7, v6

    float-to-int v9, v7

    .line 15
    :cond_7
    invoke-static {v3, v1, p2, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->castShadow(II[Z[ZI)V

    goto :goto_2

    .line 16
    :cond_8
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setFalse([Z)V

    .line 17
    :goto_2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v7, :cond_b

    .line 18
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 19
    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MindVision;

    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MindVision;->distance:I

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_3

    .line 20
    :cond_9
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicalSight;

    invoke-virtual {p1, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v7

    if-eqz v7, :cond_a

    const/16 v8, 0x8

    .line 21
    :cond_a
    move-object v7, p1

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->SNIPER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v7, v9, :cond_c

    int-to-float v7, v8

    mul-float v7, v7, v6

    float-to-int v8, v7

    goto :goto_4

    :cond_b
    const/4 v8, 0x1

    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    if-le v8, v5, :cond_10

    .line 22
    :cond_d
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->rounding:[[I

    sub-int v6, v1, v8

    .line 23
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 24
    :goto_5
    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    sub-int/2addr v7, v5

    add-int v9, v1, v8

    .line 25
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-gt v6, v7, :cond_10

    .line 26
    aget-object v7, v2, v8

    sub-int v9, v1, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    aget v7, v7, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v7, v10, :cond_f

    .line 27
    aget-object v7, v2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aget v7, v7, v9

    :cond_e
    sub-int v7, v3, v7

    goto :goto_7

    :cond_f
    move v7, v8

    .line 28
    :goto_6
    aget-object v10, v2, v8

    aget v10, v10, v7

    aget-object v11, v2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v12

    aget v11, v11, v12

    if-ge v10, v11, :cond_e

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 29
    :goto_7
    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v9, v5

    add-int v10, v3, v3

    sub-int/2addr v10, v7

    .line 30
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 31
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 32
    iget v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v10, v10, v6

    add-int/2addr v10, v7

    .line 33
    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    sub-int/2addr v9, v7

    add-int/2addr v9, v5

    invoke-static {v11, v10, p2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 34
    :cond_10
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v1, :cond_1e

    .line 35
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 36
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 37
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 38
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 39
    aget-boolean v2, p2, v2

    if-nez v2, :cond_11

    .line 40
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 41
    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-ne v0, v1, :cond_14

    .line 42
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 43
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 44
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_13

    .line 45
    aget-boolean v2, p2, v2

    if-nez v2, :cond_13

    .line 46
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 47
    :cond_14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 48
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v3, v2

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v3, :cond_15

    aget v7, v2, v6

    .line 49
    iget v8, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v8, v7

    aput-boolean v5, p2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 50
    :cond_16
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Awareness;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 51
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 52
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    .line 53
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v3, v2

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v3, :cond_17

    aget v7, v2, v6

    add-int/2addr v7, v1

    .line 54
    aput-boolean v5, p2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 55
    :cond_18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 56
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    if-eqz v2, :cond_19

    .line 57
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    if-eqz v2, :cond_1a

    array-length v2, v2

    .line 58
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-eq v2, v3, :cond_1b

    .line 59
    :cond_1a
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 60
    new-array v2, v2, [Z

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 61
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v3, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    .line 62
    :cond_1b
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 63
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_1c

    aget-boolean v6, p2, v7

    if-nez v6, :cond_1c

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 65
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 66
    :cond_1d
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 67
    array-length v2, p2

    invoke-static {p2, v1, v4, v2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[ZII[Z)[Z

    goto :goto_c

    .line 68
    :cond_1e
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_20

    .line 69
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 70
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->seen:Z

    if-nez v1, :cond_1f

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    aget-boolean v1, p2, v1

    if-eqz v1, :cond_1f

    .line 71
    iput-boolean v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->seen:Z

    goto :goto_e

    :cond_20
    return-void
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
