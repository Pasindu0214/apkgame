.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Ghoul.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GhoulLifeLink"
.end annotation


# instance fields
.field public ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

.field public turnsToRevive:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method

.method public static searchForHost(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;
    .locals 5

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eq v1, p0, :cond_0

    .line 2
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    if-nez v2, :cond_1

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 6
    new-array v3, v3, [Z

    iput-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 7
    invoke-virtual {v2, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    .line 8
    :cond_1
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_2

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 9
    :cond_2
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public act()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v3, v0

    iput-boolean v0, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    if-nez v1, :cond_0

    .line 3
    iget v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 4
    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v1, v1, v2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->detach()V

    return v3

    .line 8
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->turnsToRevive:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->turnsToRevive:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_6

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v2, v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    .line 13
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v7, v6

    .line 14
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_2

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v6

    if-nez v6, :cond_2

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 17
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {v1, v2, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 19
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v3

    .line 21
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    .line 22
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 23
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->access$500(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;F)V

    .line 24
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 26
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    .line 27
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    return v3

    .line 28
    :cond_6
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v3
.end method

.method public detach()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->searchForHost(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->die(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public fx(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->addMobSprite(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhoulSprite;

    .line 4
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhoulSprite;->crumple:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    :cond_1
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "ghoul"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    const-string v0, "left"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->turnsToRevive:I

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
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    const-string v1, "ghoul"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->turnsToRevive:I

    const-string v1, "left"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
