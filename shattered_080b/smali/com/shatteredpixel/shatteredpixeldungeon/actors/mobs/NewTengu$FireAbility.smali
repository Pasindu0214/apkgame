.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "NewTengu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FireAbility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility$FireBlob;
    }
.end annotation


# instance fields
.field public curCells:[I

.field public direction:I

.field public toCells:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->toCells:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility$FireBlob;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->toCells:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->curCells:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [I

    .line 3
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->curCells:[I

    .line 4
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aput v4, v1, v3

    .line 5
    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->spreadFromCell(I)V

    goto :goto_1

    .line 6
    :cond_0
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->spreadFromCell(I)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->curCells:[I

    array-length v4, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 9
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->toCells:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->toCells:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_4

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->toCells:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->curCells:[I

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->toCells:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v5

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 15
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->curCells:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v3

    add-int/2addr v3, v2

    goto :goto_3

    :cond_5
    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v2
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "direction"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->direction:I

    const-string v0, "cur_cells"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->curCells:[I

    return-void
.end method

.method public final spreadFromCell(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    sget-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->direction:I

    const/4 v3, 0x7

    if-nez v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    :goto_0
    aget v1, v1, v2

    add-int/2addr v1, p1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->toCells:Ljava/util/HashSet;

    sget-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->direction:I

    if-nez v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    :goto_1
    aget v1, v1, v2

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    sget-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->direction:I

    aget v4, v1, v2

    add-int/2addr v4, p1

    aget-boolean v0, v0, v4

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->toCells:Ljava/util/HashSet;

    aget v1, v1, v2

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    sget-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->direction:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    :goto_2
    aget v1, v1, v2

    add-int/2addr v1, p1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_6

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->toCells:Ljava/util/HashSet;

    sget-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->direction:I

    if-ne v2, v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v2, 0x1

    :goto_3
    aget v1, v1, v4

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->direction:I

    const-string v1, "direction"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->curCells:[I

    const-string v1, "cur_cells"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[I)V

    return-void
.end method
