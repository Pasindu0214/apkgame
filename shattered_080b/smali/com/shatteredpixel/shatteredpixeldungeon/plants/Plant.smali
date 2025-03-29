.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;
.super Ljava/lang/Object;
.source "Plant.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;
    }
.end annotation


# instance fields
.field public image:I

.field public plantName:Ljava/lang/String;

.field public pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->plantName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    const-string v0, "pos"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    const-string v1, "pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public wither()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, v1}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 3
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->GENERAL:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_0
    return-void
.end method
