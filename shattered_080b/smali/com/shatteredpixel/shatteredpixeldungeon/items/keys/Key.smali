.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Key.java"


# instance fields
.field public depth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    return-void
.end method


# virtual methods
.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pickUpJournal(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)V

    const/4 v0, 0x2

    .line 2
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->last_index:I

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)V

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    .line 8
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    .line 9
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 10
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/2addr v1, v2

    .line 11
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 12
    :goto_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_item.mp3"

    .line 13
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 14
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    .line 15
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateKeyDisplay()V

    const/4 p1, 0x1

    return p1
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->depth:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->depth:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "depth"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->depth:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->depth:I

    const-string v1, "depth"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
