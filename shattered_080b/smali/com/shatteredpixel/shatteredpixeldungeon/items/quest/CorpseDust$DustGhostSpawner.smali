.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust$DustGhostSpawner;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "CorpseDust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DustGhostSpawner"
.end annotation


# instance fields
.field public spawnPower:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust$DustGhostSpawner;->spawnPower:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust$DustGhostSpawner;->spawnPower:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust$DustGhostSpawner;->spawnPower:I

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 3
    instance-of v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x19

    mul-int v2, v2, v2

    .line 4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust$DustGhostSpawner;->spawnPower:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-gt v0, v2, :cond_4

    sub-int/2addr v2, v0

    .line 6
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust$DustGhostSpawner;->spawnPower:I

    const/16 v0, 0x14

    .line 7
    :cond_2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 9
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_3

    .line 10
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_3
    if-lez v0, :cond_4

    .line 11
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->spawnAt(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;

    .line 12
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_cursed.mp3"

    .line 13
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 14
    :cond_4
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "spawnpower"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust$DustGhostSpawner;->spawnPower:I

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust$DustGhostSpawner;->spawnPower:I

    const-string v1, "spawnpower"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
