.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;
.source "Hero.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$Doom;
    }
.end annotation


# instance fields
.field public HTBoost:I

.field public STR:I

.field public attackSkill:I

.field public belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

.field public berserk:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

.field public curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

.field public damageInterrupt:Z

.field public defenseSkill:I

.field public enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public exp:I

.field public heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public justMoved:Z

.field public lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

.field public lvl:I

.field public mindVisionEnemies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;"
        }
    .end annotation
.end field

.field public ready:Z

.field public resting:Z

.field public subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public visibleEnemies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;"
        }
    .end annotation
.end field

.field public walkingToVisibleTrapInFog:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/16 v1, 0xa

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackSkill:I

    const/4 v2, 0x5

    .line 7
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->defenseSkill:I

    .line 8
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->damageInterrupt:Z

    const/4 v3, 0x0

    .line 10
    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 11
    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 12
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    .line 13
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    .line 14
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->HTBoost:I

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    .line 17
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->walkingToVisibleTrapInFog:Z

    .line 18
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->justMoved:Z

    const/16 v0, 0x14

    .line 19
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 20
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    .line 21
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies:Ljava/util/ArrayList;

    return-void
.end method

.method public static maxExp(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public static preview(Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;Lcom/watabou/utils/Bundle;)V
    .locals 2

    const-string v0, "lvl"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->level:I

    const-string v0, "STR"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->str:I

    const-string v0, "exp"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->exp:I

    const-string v0, "HP"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->hp:I

    const-string v0, "HT"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->ht:I

    const-string v0, "SHLD"

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->shld:I

    .line 7
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->restoreInBundle(Lcom/watabou/utils/Bundle;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    const-string v0, "subClass"

    .line 8
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const-string v0, "armor"

    .line 11
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->tier:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->armorTier:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->armorTier:I

    :goto_0
    return-void
.end method

.method public static reallyDie(Ljava/lang/Object;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 3
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 4
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v1, :cond_1

    .line 6
    aget v7, v2, v5

    .line 7
    aget-boolean v8, v0, v5

    if-eqz v8, :cond_0

    .line 8
    aput-boolean v6, v3, v5

    .line 9
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    .line 10
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discover(I)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->depth:I

    .line 12
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    if-nez v0, :cond_3

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    add-int/lit8 v0, v0, -0x5

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->depth:I

    if-ge v0, v1, :cond_3

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    if-lez v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->pickItem(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 14
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 15
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->depth:I

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 16
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const-string v2, "item"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    :try_start_0
    const-string v1, "bones.dat"

    .line 17
    invoke-static {v1, v0}, Lcom/watabou/utils/FileUtils;->bundleToFile(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, -0x1

    .line 19
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->depth:I

    .line 20
    :goto_2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 21
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->identify()V

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v3, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_6

    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 26
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v0

    .line 27
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v9, v9, v7

    if-nez v9, :cond_4

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_5

    :cond_4
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v8, v7}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 29
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    .line 33
    :cond_7
    invoke-static {v2}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 34
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v3

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    .line 35
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 36
    :cond_8
    :goto_5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->GAME_OVER:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;)Lcom/watabou/noosa/Image;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;-><init>(Lcom/watabou/noosa/Image;)V

    .line 37
    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->color:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->fadeTime:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 39
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->showTime:F

    .line 40
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    .line 41
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->time:F

    .line 42
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->showBanner(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;)V

    .line 43
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_death.mp3"

    .line 44
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 45
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$Doom;

    if-eqz v0, :cond_9

    .line 46
    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$Doom;

    invoke-interface {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$Doom;->onDeath()V

    .line 47
    :cond_9
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {p0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->deleteGame(IZ)V

    return-void
.end method


# virtual methods
.method public STR()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight;->strengthBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    add-int/2addr v1, v0

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/AdrenalineSurge;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/AdrenalineSurge;

    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/AdrenalineSurge;->boost:I

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public act()Z
    .locals 12

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 2
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    if-nez v3, :cond_2

    .line 3
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    if-eqz v3, :cond_1

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MindVision;

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-nez v3, :cond_1

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Awareness;

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    invoke-virtual {v3, p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->checkVisibleMobs()V

    .line 7
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 9
    :cond_3
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez v3, :cond_4

    .line 10
    iput-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 11
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return v6

    .line 12
    :cond_4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-nez v3, :cond_6

    .line 13
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 15
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    goto/16 :goto_b

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 17
    :cond_6
    iput-boolean v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    .line 18
    iput-boolean v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 19
    instance-of v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Move;

    if-eqz v9, :cond_8

    .line 20
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Move;

    .line 21
    iget v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    const/4 v6, 0x1

    goto/16 :goto_b

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 23
    :cond_8
    instance-of v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Interact;

    if-eqz v9, :cond_b

    .line 24
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Interact;

    .line 25
    iget-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Interact;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 26
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->canInteract(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 27
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    .line 28
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 29
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v6

    goto/16 :goto_b

    .line 30
    :cond_9
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 31
    :cond_a
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 32
    :cond_b
    instance-of v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Buy;

    if-eqz v9, :cond_e

    .line 33
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Buy;

    .line 34
    iget v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    .line 35
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v1, v0, :cond_c

    .line 36
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    .line 37
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_41

    .line 38
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v1, v2, :cond_41

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->size()I

    move-result v1

    if-ne v1, v8, :cond_41

    .line 39
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$1;

    invoke-direct {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    invoke-static {v1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    goto/16 :goto_b

    .line 40
    :cond_c
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    .line 41
    :cond_d
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 42
    :cond_e
    instance-of v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$PickUp;

    if-eqz v9, :cond_1b

    .line 43
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$PickUp;

    .line 44
    iget v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    .line 45
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v1, v0, :cond_19

    .line 46
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, v1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_18

    .line 47
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 49
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 50
    instance-of v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Dewdrop;

    if-nez v0, :cond_14

    instance-of v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$sandBag;

    if-nez v0, :cond_14

    instance-of v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$Petal;

    if-nez v0, :cond_14

    instance-of v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    if-eqz v0, :cond_f

    goto :goto_4

    .line 51
    :cond_f
    instance-of v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    if-eqz v0, :cond_10

    move-object v0, v1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 52
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->isKnown()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    instance-of v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    if-eqz v0, :cond_12

    move-object v0, v1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 53
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v0, 0x1

    goto :goto_3

    :cond_12
    const/4 v0, 0x0

    :goto_3
    const-string v2, "you_now_have"

    if-eqz v0, :cond_13

    new-array v0, v8, [Ljava/lang/Object;

    .line 54
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_13
    new-array v0, v8, [Ljava/lang/Object;

    .line 55
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_14
    :goto_4
    iput-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto/16 :goto_b

    .line 57
    :cond_15
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Dewdrop;

    if-nez v2, :cond_17

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$sandBag;

    if-nez v2, :cond_17

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$Petal;

    if-nez v2, :cond_17

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    if-eqz v2, :cond_16

    goto :goto_5

    .line 58
    :cond_16
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 59
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ENGLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-ne v2, v3, :cond_17

    .line 60
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->newLine()V

    new-array v2, v8, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    .line 62
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-string v3, "you_cant_have"

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 63
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_17
    :goto_5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 65
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 66
    :cond_18
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 67
    :cond_19
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_2

    .line 68
    :cond_1a
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 69
    :cond_1b
    instance-of v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$OpenChest;

    const-string v10, "snd_unlock.mp3"

    const/4 v11, 0x7

    if-eqz v9, :cond_25

    .line 70
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$OpenChest;

    .line 71
    iget v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    .line 72
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v1

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v1, v0, :cond_1c

    goto :goto_6

    .line 73
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_2

    .line 74
    :cond_1d
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 75
    :cond_1e
    :goto_6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v1, :cond_24

    .line 76
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v2, v3, :cond_24

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v2, v3, :cond_24

    .line 77
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v2, v3, :cond_1f

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;-><init>(I)V

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->keyCount(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)I

    move-result v2

    if-lt v2, v8, :cond_20

    :cond_1f
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v2, v3, :cond_21

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/CrystalKey;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/CrystalKey;-><init>(I)V

    .line 78
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->keyCount(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)I

    move-result v2

    if-ge v2, v8, :cond_21

    :cond_20
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "locked_chest"

    .line 79
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 81
    :cond_21
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v7, :cond_22

    const/4 v2, 0x6

    if-eq v1, v2, :cond_23

    if-eq v1, v11, :cond_23

    .line 82
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 83
    invoke-virtual {v1, v10, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    goto :goto_7

    .line 84
    :cond_22
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_tomb.mp3"

    .line 85
    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 86
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4, v2}, Lcom/watabou/noosa/Camera;->shake(FF)V

    .line 87
    :cond_23
    :goto_7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    goto/16 :goto_b

    .line 88
    :cond_24
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 89
    :cond_25
    instance-of v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Unlock;

    if-eqz v9, :cond_2b

    .line 90
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Unlock;

    .line 91
    iget v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    .line 92
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 93
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_26

    .line 94
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    .line 95
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->keyCount(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)I

    move-result v2

    if-lez v2, :cond_26

    goto :goto_8

    :cond_26
    const/16 v2, 0x15

    if-ne v1, v2, :cond_27

    .line 96
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;-><init>(I)V

    .line 97
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->keyCount(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)I

    move-result v1

    if-lez v1, :cond_27

    :goto_8
    const/4 v1, 0x1

    goto :goto_9

    :cond_27
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_28

    .line 98
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 99
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 100
    invoke-virtual {v0, v10, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    goto/16 :goto_b

    :cond_28
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "locked_door"

    .line 101
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 103
    :cond_29
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto/16 :goto_2

    .line 104
    :cond_2a
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 105
    :cond_2b
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Descend;

    if-eqz v4, :cond_31

    .line 106
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Descend;

    .line 107
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    .line 108
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v10, v4, v9

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2e

    aget v4, v4, v9

    const/16 v9, 0x16

    if-ne v4, v9, :cond_2c

    goto :goto_a

    .line 109
    :cond_2c
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto/16 :goto_2

    .line 110
    :cond_2d
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 111
    :cond_2e
    :goto_a
    iput-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 112
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 113
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 114
    :cond_2f
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 115
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 116
    :cond_30
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->DESCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 117
    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    goto/16 :goto_b

    .line 118
    :cond_31
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Ascend;

    if-eqz v4, :cond_39

    .line 119
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Ascend;

    .line 120
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    .line 121
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v9, v9, v10

    if-ne v9, v11, :cond_37

    .line 122
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ne v3, v8, :cond_34

    .line 123
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-nez v0, :cond_32

    .line 124
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$2;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    .line 125
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 126
    :cond_32
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->HAPPY_END:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 127
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->HAPPY_END:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_33
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->win(Ljava/lang/Class;)V

    .line 129
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {v0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->deleteGame(IZ)V

    .line 130
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    goto/16 :goto_b

    .line 131
    :cond_34
    iput-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 132
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 133
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 134
    :cond_35
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 135
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 136
    :cond_36
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->ASCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 137
    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    goto/16 :goto_b

    .line 138
    :cond_37
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_2

    .line 139
    :cond_38
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto/16 :goto_b

    .line 140
    :cond_39
    instance-of v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Attack;

    if-eqz v0, :cond_3c

    .line 141
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Attack;

    .line 142
    iget-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Attack;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 143
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isCharmedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 144
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack(I)V

    goto/16 :goto_b

    .line 145
    :cond_3a
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3b

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto/16 :goto_2

    .line 146
    :cond_3b
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    goto :goto_b

    .line 147
    :cond_3c
    instance-of v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Alchemy;

    if-eqz v0, :cond_41

    .line 148
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Alchemy;

    .line 149
    iget v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    .line 150
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v1

    if-gt v1, v8, :cond_3f

    .line 151
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    .line 152
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$kitEnergy;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$kitEnergy;

    if-eqz v1, :cond_3d

    .line 153
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v1, :cond_3d

    .line 154
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "cursed"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 155
    :cond_3d
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Alchemy;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Alchemy;

    if-eqz v1, :cond_3e

    .line 156
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Alchemy;->alchPos:I

    .line 157
    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->provider:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;

    .line 158
    :cond_3e
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    goto :goto_b

    .line 159
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->getCloser(I)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_2

    .line 160
    :cond_40
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready()V

    .line 161
    :cond_41
    :goto_b
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v0, v1, :cond_42

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v0, v0, v1

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_42

    .line 162
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;->set(II)V

    :cond_42
    return v6
.end method

.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->heroMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    if-nez v0, :cond_2

    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vertigo;

    if-eqz p1, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 8
    :cond_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    return-void
.end method

.method public attackDelay()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfFuror;->attackDelayMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v0

    return v0
.end method

.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz v1, :cond_2

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$3;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 7
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    :cond_2
    :goto_0
    return p2
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy;->accuracyMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    .line 3
    instance-of v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz v2, :cond_1

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3fc00000    # 1.5f

    :goto_0
    mul-float v1, v1, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackSkill:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->accuracyFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1

    .line 6
    :cond_2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackSkill:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    return p1
.end method

.method public canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v3, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v1, :cond_2

    .line 4
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->canReach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public canSurpriseAttack()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v0

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Flail;

    if-eqz v0, :cond_2

    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public checkVisibleMobs()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v7, v1, v5

    .line 3
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v9, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v8, v9, :cond_2

    .line 4
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v6, 0x1

    .line 6
    :cond_0
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 7
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    invoke-static {v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->autoAim(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->distance(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v8

    invoke-virtual {p0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->distance(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v9

    if-le v8, v9, :cond_2

    :goto_1
    move-object v4, v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->lastTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v4, :cond_4

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_5

    :cond_4
    instance-of v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    :cond_5
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_6
    if-eqz v6, :cond_7

    .line 13
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 14
    iput-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    .line 15
    :cond_7
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies:Ljava/util/ArrayList;

    return-void
.end method

.method public className()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->title()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->title()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Drowsy;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Viscosity$DeferedDamage;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->damageInterrupt:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 4
    iput-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "pain_resist"

    .line 7
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;

    if-eqz v0, :cond_4

    .line 9
    instance-of v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;->proc(ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    :cond_4
    int-to-float p1, p1

    .line 10
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfTenacity;->damageMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v0

    mul-float v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_5

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;

    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->buffedLvl()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->drRoll(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 14
    :cond_5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v1

    add-int/2addr v1, v0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 16
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result p2

    add-int/2addr p2, p1

    sub-int p1, v1, p2

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    sub-int p2, v1, p2

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float p1, p1, p1

    mul-float p1, p1, p2

    div-float/2addr p1, v0

    const p2, 0x3d4ccccd    # 0.05f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_6

    const p2, 0x3eaaaaab

    .line 18
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x10

    const/4 p2, 0x1

    .line 19
    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    :cond_6
    return-void
.end method

.method public damageRoll()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    .line 3
    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->armedDamageBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)I

    move-result v1

    :cond_1
    :goto_0
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    :cond_2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->damageFactor(I)I

    move-result v1

    .line 7
    :cond_3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Fury;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_4

    int-to-float v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    float-to-int v1, v0

    :cond_4
    return v1
.end method

.method public defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 5

    if-lez p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->BERSERKER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v0, v1, :cond_1

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    .line 3
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->RECOVERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x3f8ccccd    # 1.1f

    .line 4
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    int-to-float v3, p2

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 8
    :cond_2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Earthroot$Armor;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Earthroot$Armor;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Earthroot$Armor;->absorb(I)I

    move-result p2

    .line 10
    :cond_3
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->absorb(I)I

    move-result p2

    :cond_4
    return p2
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->defenseSkill:I

    int-to-float p1, p1

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEvasion;->evasionMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v0

    mul-float v0, v0, p1

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    if-lez p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->evasionFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F

    move-result v0

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public die(Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_0
    :goto_0
    move-object v3, v1

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_1

    .line 4
    move-object v4, v3

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;

    .line 5
    iget-boolean v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;->blessed:Z

    if-eqz v4, :cond_0

    .line 6
    :cond_1
    move-object v2, v3

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    if-eqz v2, :cond_6

    .line 7
    iget-boolean v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;->blessed:Z

    if-eqz v3, :cond_6

    .line 8
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 9
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;->cure(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 10
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 12
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/16 v3, 0x8

    const/high16 v4, 0x42000000    # 32.0f

    invoke-direct {p1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v3, 0xffff66

    const/4 v4, 0x1

    .line 13
    iput-boolean v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 14
    invoke-virtual {p1, v3}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 15
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    .line 16
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x3

    invoke-virtual {p1, v3, v5, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 17
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 18
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "snd_teleport.mp3"

    .line 19
    invoke-virtual {p1, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "revive"

    .line 20
    invoke-static {p0, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->ankhsUsed:I

    add-int/2addr p1, v4

    sput p1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->ankhsUsed:I

    .line 22
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 23
    instance-of v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz v5, :cond_3

    .line 24
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz v3, :cond_4

    const-string p1, "blessed_ankh_"

    .line 25
    invoke-static {p1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v4, v6, p1}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v0, "snd_ghost.mp3"

    .line 27
    invoke-virtual {p1, v0, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void

    .line 28
    :cond_4
    throw v0

    :cond_5
    return-void

    .line 29
    :cond_6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->fixTime()V

    .line 30
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->die(Ljava/lang/Object;)V

    if-nez v2, :cond_7

    .line 31
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->reallyDie(Ljava/lang/Object;)V

    goto :goto_1

    .line 32
    :cond_7
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->deleteGame(IZ)V

    .line 33
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$4;

    invoke-direct {v0, p0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    :goto_1
    return-void
.end method

.method public drRoll()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMin()I

    move-result v0

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMax()I

    move-result v2

    invoke-static {v0, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v2

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq()I

    move-result v2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    :cond_0
    if-lez v0, :cond_1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->defenseFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v3

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 8
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v3

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    :cond_2
    if-lez v2, :cond_3

    add-int/2addr v0, v2

    .line 9
    :cond_3
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;

    if-eqz v2, :cond_4

    .line 10
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;->level:I

    .line 11
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12
    :cond_4
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blocking$BlockBuff;

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blocking$BlockBuff;

    if-eqz v2, :cond_5

    .line 13
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blocking$BlockBuff;->blocking:I

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public earnExp(ILjava/lang/Class;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    int-to-float v1, v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->maxExp()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 3
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    .line 4
    iget-object v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    iget-boolean v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v10, :cond_2

    cmpl-float v10, v1, v7

    if-nez v10, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float v11, v11, v1

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v11, v10

    iput v11, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 6
    iget-object v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    iget v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 7
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int/lit8 v11, v9, 0x2

    add-int/2addr v11, v6

    if-le v10, v11, :cond_1

    const/high16 v11, 0x40a00000    # 5.0f

    int-to-float v9, v9

    mul-float v9, v9, v4

    add-float/2addr v9, v11

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v9, v9, v1

    goto :goto_0

    :cond_1
    move v9, v1

    .line 8
    :goto_0
    iget-object v10, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    iget v11, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    mul-float v9, v9, v5

    add-float/2addr v9, v11

    iput v9, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 9
    iget v9, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 10
    iget v11, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int/lit8 v12, v11, 0x32

    add-int/lit8 v12, v12, 0x64

    if-le v9, v12, :cond_2

    .line 11
    iget v13, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge v11, v13, :cond_2

    sub-int/2addr v9, v12

    .line 12
    iput v9, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    new-array v9, v8, [Ljava/lang/Object;

    const-string v10, "levelup"

    .line 13
    invoke-static {v3, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 15
    :cond_2
    :goto_1
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;

    const-string v9, "full"

    const/4 v10, 0x1

    if-eqz v3, :cond_9

    .line 16
    iget-object v11, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    iget-boolean v12, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v12, :cond_3

    goto :goto_4

    .line 17
    :cond_3
    iget v12, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v13, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge v12, v13, :cond_8

    .line 18
    iget v12, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v13, 0x43e10000    # 450.0f

    mul-float v13, v13, v1

    const v14, 0x3e4ccccd    # 0.2f

    const v15, 0x3dcccccd    # 0.1f

    .line 19
    iget v4, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    int-to-float v4, v4

    mul-float v4, v4, v15

    add-float/2addr v4, v14

    mul-float v4, v4, v13

    add-float/2addr v4, v12

    .line 20
    iput v4, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 21
    :goto_2
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    iget v11, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v12, 0x42340000    # 45.0f

    cmpl-float v13, v11, v12

    if-ltz v13, :cond_9

    .line 22
    iget v13, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    add-int/2addr v13, v10

    iput v13, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-float/2addr v11, v12

    .line 23
    iput v11, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/16 v11, 0xf

    if-lt v13, v11, :cond_4

    .line 24
    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN4:I

    iput v11, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_3

    :cond_4
    const/16 v11, 0xa

    if-lt v13, v11, :cond_5

    .line 25
    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN3:I

    iput v11, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_3

    :cond_5
    if-lt v13, v6, :cond_6

    .line 26
    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN2:I

    iput v11, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_3

    .line 27
    :cond_6
    sget v11, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_HORN1:I

    iput v11, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 28
    :goto_3
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    iget v11, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ne v11, v4, :cond_7

    .line 29
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v4, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v4, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    iput v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 31
    :cond_7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_2

    .line 32
    :cond_8
    iput v7, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 33
    :cond_9
    :goto_4
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$kitEnergy;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$kitEnergy;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_d

    .line 34
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$kitEnergy;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    .line 35
    iput-boolean v10, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;->alchemyReady:Z

    .line 36
    iget-boolean v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v11, :cond_a

    goto :goto_6

    .line 37
    :cond_a
    iget v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v12, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge v11, v12, :cond_c

    .line 38
    iget v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    int-to-float v11, v11

    .line 39
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v6, v11

    invoke-static {v7, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v5

    .line 40
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$kitEnergy;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    iget v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    mul-float v5, v5, v4

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v5, v12

    mul-float v5, v5, v1

    add-float/2addr v5, v11

    iput v5, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 41
    :goto_5
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$kitEnergy;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    cmpl-float v11, v6, v4

    if-ltz v11, :cond_d

    .line 42
    iget v11, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    add-int/2addr v11, v10

    iput v11, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-float/2addr v6, v4

    .line 43
    iput v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 44
    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ne v11, v5, :cond_b

    .line 45
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v9, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$kitEnergy;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    iput v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 47
    :cond_b
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_5

    .line 48
    :cond_c
    iput v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 49
    :cond_d
    :goto_6
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    if-eqz v3, :cond_e

    .line 50
    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->levelRecovery:F

    cmpl-float v6, v5, v7

    if-lez v6, :cond_e

    sub-float/2addr v5, v1

    .line 51
    iput v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->levelRecovery:F

    .line 52
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 53
    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->levelRecovery:F

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_e

    .line 54
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->NORMAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    iput-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    .line 55
    iput v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->levelRecovery:F

    .line 56
    :cond_e
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    move-object/from16 v5, p2

    if-eq v5, v3, :cond_f

    .line 57
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    move-object v5, v3

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 58
    invoke-virtual {v5, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onHeroGainExp(FLcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    .line 59
    :goto_8
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->maxExp()I

    move-result v5

    const-string v6, "snd_levelup.mp3"

    if-lt v3, v5, :cond_12

    .line 60
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->maxExp()I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    .line 61
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    const/16 v5, 0x1e

    if-ge v3, v5, :cond_11

    add-int/lit8 v3, v3, 0x1

    .line 62
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    .line 63
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 64
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;

    .line 65
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;->left:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;->left:I

    if-gtz v3, :cond_10

    .line 66
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 67
    :cond_10
    invoke-virtual {v0, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->updateHT(Z)V

    .line 68
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackSkill:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackSkill:I

    .line 69
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->defenseSkill:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->defenseSkill:I

    const/4 v1, 0x1

    goto :goto_8

    .line 70
    :cond_11
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bless;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v0, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 71
    iput v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    .line 72
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->newLine()V

    new-array v3, v8, [Ljava/lang/Object;

    const-string v5, "level_cap"

    .line 73
    invoke-static {v0, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    sget-object v3, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 75
    invoke-virtual {v3, v6, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    goto :goto_8

    :cond_12
    if-eqz v1, :cond_18

    .line 76
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v1, :cond_13

    .line 77
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->newLine()V

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "new_level"

    .line 78
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v2, 0xff00

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v7, "level_up"

    invoke-static {v3, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 81
    invoke-virtual {v1, v6, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 82
    :cond_13
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->updateQuickslot()V

    .line 83
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_14

    .line 84
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 85
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    .line 86
    :goto_9
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_15

    .line 87
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 88
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_15
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_16

    .line 90
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 91
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_16
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_17

    .line 93
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 94
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_17
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_18
    return-void
.end method

.method public final getCloser(I)Z
    .locals 12

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->rooted:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    .line 3
    sget-object p1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    invoke-virtual {p1, v3, v3}, Lcom/watabou/noosa/Camera;->shake(FF)V

    return v1

    .line 4
    :cond_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v2, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    .line 5
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    .line 6
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_6

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v2, :cond_3

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_3

    .line 8
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;->jumpConfirmed:Z

    if-nez v0, :cond_2

    .line 9
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    invoke-static {p1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    .line 10
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;->heroFall(I)V

    :goto_0
    return v1

    .line 12
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_5

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    :goto_1
    move v0, p1

    .line 13
    :goto_2
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->walkingToVisibleTrapInFog:Z

    if-eqz v2, :cond_12

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    .line 14
    invoke-virtual {v2, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    .line 15
    invoke-virtual {v2, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    iget-boolean p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    if-eqz p1, :cond_12

    return v1

    :cond_6
    const/4 v0, -0x1

    goto/16 :goto_8

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_9

    goto :goto_3

    .line 18
    :cond_9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_10

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 20
    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 21
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    .line 22
    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    .line 23
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    .line 24
    new-array v9, v6, [Z

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_e

    .line 25
    aget-boolean v11, v7, v10

    if-eqz v11, :cond_d

    aget-boolean v11, v8, v10

    if-nez v11, :cond_c

    aget-boolean v11, v0, v10

    if-eqz v11, :cond_d

    :cond_c
    const/4 v11, 0x1

    goto :goto_6

    :cond_d
    const/4 v11, 0x0

    :goto_6
    aput-boolean v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 26
    :cond_e
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    invoke-static {p0, p1, v9, v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->findPath(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I[Z[ZZ)Lcom/watabou/utils/PathFinder$Path;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 27
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-le v0, v6, :cond_f

    .line 28
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    goto :goto_7

    .line 29
    :cond_f
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    .line 30
    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->path:Lcom/watabou/utils/PathFinder$Path;

    if-nez p1, :cond_11

    return v1

    .line 31
    :cond_11
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_12
    :goto_8
    if-eq v0, v4, :cond_14

    .line 32
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->speed()F

    move-result p1

    .line 33
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->move(II)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->move(I)V

    div-float/2addr v3, p1

    .line 35
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 36
    iput-boolean v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->justMoved:Z

    .line 37
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->search(Z)Z

    .line 38
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->FREERUNNER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne p1, v0, :cond_13

    .line 39
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;

    .line 40
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    add-int/2addr v0, v5

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    .line 41
    iput v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->turnsSinceMove:I

    .line 42
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 43
    :cond_13
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->FALL:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    if-eq p1, v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public handle(I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, p1

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq p1, v1, :cond_1

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Alchemy;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Alchemy;-><init>(I)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto/16 :goto_4

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v2, :cond_3

    .line 4
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq p1, v0, :cond_2

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Interact;

    invoke-direct {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Interact;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto/16 :goto_4

    .line 6
    :cond_2
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Attack;

    invoke-direct {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Attack;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto/16 :goto_4

    .line 7
    :cond_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq p1, v2, :cond_4

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v2, v4, :cond_8

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v2, v4, :cond_8

    .line 9
    :cond_4
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_5

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$OpenChest;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$OpenChest;-><init>(I)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto/16 :goto_4

    .line 11
    :cond_5
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->size()I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Buy;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Buy;-><init>(I)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$PickUp;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$PickUp;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto/16 :goto_4

    .line 12
    :cond_7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$PickUp;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$PickUp;-><init>(I)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto/16 :goto_4

    .line 13
    :cond_8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v2, p1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_f

    aget v4, v2, p1

    const/16 v5, 0x15

    if-ne v4, v5, :cond_9

    goto :goto_3

    .line 14
    :cond_9
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    if-eq p1, v1, :cond_a

    aget v1, v2, p1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_a

    aget v1, v2, p1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_b

    :cond_a
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_b

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Descend;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Descend;-><init>(I)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto :goto_4

    .line 16
    :cond_b
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq p1, v2, :cond_e

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v2, v2, p1

    const/4 v4, 0x7

    if-ne v2, v4, :cond_c

    goto :goto_2

    .line 17
    :cond_c
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_d

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    .line 18
    invoke-virtual {v1, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    if-eqz v1, :cond_d

    .line 19
    iput-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->walkingToVisibleTrapInFog:Z

    goto :goto_1

    .line 20
    :cond_d
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->walkingToVisibleTrapInFog:Z

    .line 21
    :goto_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Move;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Move;-><init>(I)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto :goto_4

    .line 23
    :cond_e
    :goto_2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Ascend;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Ascend;-><init>(I)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    goto :goto_4

    .line 24
    :cond_f
    :goto_3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Unlock;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Unlock;-><init>(I)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    :goto_4
    return v3
.end method

.method public interrupt()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Move;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Ascend;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Descend;

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    :cond_2
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->resetKeyHold()V

    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-gtz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->berserk:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    if-nez v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->berserk:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->berserk:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->berserking()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->berserk:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    .line 5
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isImmune(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_0

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Brimstone;

    .line 2
    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public maxExp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public move(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    .line 2
    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    const-string v2, "snd_water.mp3"

    invoke-virtual {p1, v2, v0, v0, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_step.mp3"

    .line 6
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_1
    :goto_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    :cond_0
    return-void
.end method

.method public onAttackComplete()V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->GLADIATOR:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->hit()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->miss()V

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackDelay()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 10
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method

.method public onMotionComplete()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldAction:Lcom/watabou/input/GameAction;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NONE:Lcom/watabou/input/GameAction;

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->enabled:Z

    .line 4
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldTurns:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldTurns:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->moveFromAction(Lcom/watabou/input/GameAction;)Z

    :cond_0
    return-void
.end method

.method public onOperateComplete()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Unlock;

    const/4 v2, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 2
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Unlock;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v5, v0

    .line 4
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v1

    if-gt v1, v4, :cond_10

    const/16 v1, 0x16

    const/16 v4, 0xa

    if-ne v5, v4, :cond_0

    .line 5
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v2, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;-><init>(I)V

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v1, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    :cond_1
    :goto_0
    if-eqz v6, :cond_10

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateKeyDisplay()V

    if-ne v5, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x16

    .line 10
    :goto_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 11
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 12
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    goto/16 :goto_6

    .line 13
    :cond_3
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$OpenChest;

    if-eqz v1, :cond_10

    .line 14
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$OpenChest;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    invoke-virtual {v1, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 15
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v1, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v1

    if-gt v1, v4, :cond_10

    .line 16
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v1, v5, :cond_6

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v1, v5, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v1, v5, :cond_5

    .line 18
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;-><init>(I)V

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)Z

    move-result v1

    goto :goto_3

    .line 19
    :cond_5
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v1, v5, :cond_7

    .line 20
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/CrystalKey;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/CrystalKey;-><init>(I)V

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)Z

    move-result v1

    goto :goto_3

    .line 21
    :cond_6
    :goto_2
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v5, "snd_bones.mp3"

    .line 22
    invoke-virtual {v1, v5, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_7
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_10

    .line 23
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateKeyDisplay()V

    .line 24
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x6

    const/16 v6, 0x8

    if-eq v1, v2, :cond_a

    if-eq v1, v5, :cond_9

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    if-eq v1, v6, :cond_8

    goto :goto_4

    .line 25
    :cond_8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    goto :goto_4

    .line 26
    :cond_9
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    const/16 v2, 0x69

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    const v7, 0x3dcccccd    # 0.1f

    const/4 v8, 0x3

    invoke-virtual {v1, v2, v7, v8}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_4

    .line 27
    :cond_a
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->spawnAround(I)V

    .line 28
    :goto_4
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->haunted:Z

    if-eqz v1, :cond_c

    .line 29
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->spawnAt(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;

    move-result-object v1

    if-nez v1, :cond_b

    .line 30
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->CURSE:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v7, 0x0

    .line 31
    invoke-virtual {v1, v2, v7, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 32
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->damage(ILjava/lang/Object;)V

    .line 33
    :cond_b
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_cursed.mp3"

    .line 34
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 35
    :cond_c
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->MIMIC:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v1, v2, :cond_f

    .line 36
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 37
    invoke-static {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->tryForBonusDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 39
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 40
    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->latestDropWasRare:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_d

    .line 41
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-direct {v1, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v6, 0xaa00ff

    .line 42
    iput-boolean v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 43
    invoke-virtual {v1, v6}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 44
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v1, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    .line 45
    sput-boolean v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->latestDropWasRare:Z

    goto :goto_5

    .line 46
    :cond_d
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {v1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v5, 0xffffff

    .line 47
    iput-boolean v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 48
    invoke-virtual {v1, v5}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 49
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v1, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    .line 50
    :cond_e
    :goto_5
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 51
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    .line 52
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 53
    :cond_f
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    :cond_10
    :goto_6
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 55
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method

.method public final ready()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 2
    iget-object v0, v0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/watabou/noosa/MovieClip$Animation;->looped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    .line 5
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->damageInterrupt:Z

    .line 6
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;->checkEnemies()V

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ready()V

    return-void
.end method

.method public remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    return-void
.end method

.method public rest(Z)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v1, 0xffffff

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "wait"

    invoke-static {p0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->restoreInBundle(Lcom/watabou/utils/Bundle;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    const-string v0, "subClass"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const-string v0, "attackSkill"

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackSkill:I

    const-string v0, "defenseSkill"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->defenseSkill:I

    const-string v0, "STR"

    .line 8
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    const-string v0, "lvl"

    .line 9
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    const-string v0, "exp"

    .line 10
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    const-string v0, "htboost"

    .line 11
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->HTBoost:I

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 13
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 14
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v1, "weapon"

    .line 16
    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v1

    .line 17
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v1, :cond_0

    .line 18
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_0
    const-string v1, "armor"

    .line 19
    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v1

    .line 20
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_1

    .line 21
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_1
    const-string v1, "misc1"

    .line 22
    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v1

    .line 23
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz v1, :cond_2

    .line 24
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_2
    const-string v1, "misc2"

    .line 25
    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 26
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    iput-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz p1, :cond_3

    .line 27
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_3
    return-void
.end method

.method public resurrect(I)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 5
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    new-array v3, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 6
    instance-of v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    if-eqz v6, :cond_0

    .line 7
    move-object v6, v5

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->depth:I

    if-ne v6, p1, :cond_4

    .line 8
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_2

    .line 9
    :cond_0
    iget-boolean v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    if-eqz v6, :cond_3

    .line 10
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 11
    instance-of v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-eqz v6, :cond_2

    .line 12
    move-object v6, v5

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 13
    iget-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    new-array v8, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 14
    iget-boolean v11, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    if-nez v11, :cond_1

    iget-object v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    goto :goto_2

    .line 16
    :cond_3
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 17
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_5
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz p1, :cond_6

    .line 19
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 20
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 21
    :cond_6
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz p1, :cond_7

    .line 22
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 23
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 24
    :cond_7
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz p1, :cond_8

    .line 25
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 26
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 27
    :cond_8
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz p1, :cond_9

    .line 28
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 29
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 30
    :cond_9
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Regeneration;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 31
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    .line 32
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_3

    .line 33
    :cond_a
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    :goto_3
    return-void
.end method

.method public search(Z)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 3
    :goto_0
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Foresight;

    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 4
    :cond_3
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 6
    rem-int v9, v7, v8

    .line 7
    div-int/2addr v7, v8

    sub-int v8, v9, v2

    if-gez v8, :cond_4

    const/4 v8, 0x0

    :cond_4
    add-int/2addr v9, v2

    .line 8
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 9
    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    if-lt v9, v10, :cond_5

    add-int/lit8 v9, v10, -0x1

    :cond_5
    sub-int v10, v7, v2

    if-gez v10, :cond_6

    const/4 v10, 0x0

    :cond_6
    add-int/2addr v7, v2

    .line 10
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 11
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    if-lt v7, v2, :cond_7

    add-int/lit8 v7, v2, -0x1

    .line 12
    :cond_7
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;

    if-eqz v2, :cond_8

    .line 13
    iget-object v11, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    iget-boolean v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x0

    :goto_3
    if-gt v10, v7, :cond_13

    .line 14
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 15
    iget v14, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v14, v14, v10

    add-int/2addr v14, v8

    move v15, v8

    :goto_4
    if-gt v15, v9, :cond_12

    .line 16
    iget-object v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_11

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v14, v13, :cond_11

    if-eqz p1, :cond_9

    .line 17
    iget-object v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v13, v13, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CheckedCell;

    invoke-direct {v3, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CheckedCell;-><init>(I)V

    invoke-virtual {v13, v3}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    :cond_9
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v13, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->secret:[Z

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_11

    .line 19
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v3, v14}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    const/4 v13, 0x0

    if-eqz v4, :cond_a

    :goto_5
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_a
    if-eqz v3, :cond_b

    .line 20
    iget-boolean v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->canBeSearched:Z

    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    if-eqz v11, :cond_d

    goto :goto_7

    .line 21
    :cond_d
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v3, v14

    const/16 v13, 0x11

    if-ne v3, v13, :cond_e

    const v3, 0x3ecccccd    # 0.4f

    .line 22
    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    int-to-float v13, v13

    const/high16 v16, 0x437a0000    # 250.0f

    goto :goto_6

    :cond_e
    const v3, 0x3e4ccccd    # 0.2f

    .line 23
    sget v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    int-to-float v13, v13

    const/high16 v16, 0x42c80000    # 100.0f

    :goto_6
    div-float v13, v13, v16

    sub-float v13, v3, v13

    .line 24
    :goto_7
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    cmpg-float v3, v3, v13

    if-gez v3, :cond_11

    .line 25
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v3, v14

    .line 26
    invoke-static {v14, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->discoverTile(II)V

    .line 27
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v3, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discover(I)V

    .line 28
    invoke-static {v14}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;->discover(I)V

    if-eqz v2, :cond_10

    .line 29
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    iget-boolean v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v3, :cond_10

    .line 30
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    iget v12, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 31
    iget v13, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 32
    div-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v5

    add-int/2addr v13, v12

    iget v12, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 33
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    iget v12, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    add-int/2addr v12, v6

    iput v12, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    const/4 v13, 0x4

    if-lt v12, v13, :cond_f

    .line 34
    iget v12, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 35
    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge v12, v5, :cond_f

    .line 36
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v12, "levelup"

    .line 37
    invoke-static {v2, v12, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v5, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    sub-int/2addr v5, v13

    iput v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 39
    :cond_f
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_10
    const/4 v12, 0x1

    :cond_11
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_4

    :cond_12
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_3

    :cond_13
    if-eqz p1, :cond_16

    .line 40
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v3, 0xffffff

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "search"

    invoke-static {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 42
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-boolean v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    if-nez v2, :cond_15

    if-eqz v11, :cond_14

    new-array v2, v4, [Ljava/lang/Object;

    .line 43
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-string v5, "search_distracted"

    invoke-static {v3, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 44
    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->reduceHunger(F)V

    goto :goto_8

    .line 46
    :cond_14
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    const/high16 v2, -0x3f800000    # -4.0f

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->reduceHunger(F)V

    :cond_15
    :goto_8
    const/high16 v1, 0x40000000    # 2.0f

    .line 47
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    :cond_16
    if-eqz v12, :cond_17

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "noticed_smth"

    .line 48
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_secret.mp3"

    const/high16 v3, 0x3f800000    # 1.0f

    .line 50
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    :cond_17
    return v12
.end method

.method public shoot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;)Z
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    .line 2
    iput-object p2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 5
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    .line 6
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->GLADIATOR:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne p2, v1, :cond_2

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    .line 9
    :goto_0
    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->hit()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->miss()V

    :cond_2
    :goto_1
    return p1
.end method

.method public speed()F
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfHaste;->speedMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v1

    mul-float v1, v1, v0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F

    move-result v1

    .line 5
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    const v3, 0x3d4ccccd    # 0.05f

    .line 7
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    int-to-float v4, v0

    mul-float v4, v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v4, v3

    .line 8
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    div-float v4, v3, v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    iput v4, v2, Lcom/watabou/noosa/MovieClip$Animation;->delay:F

    int-to-float v0, v0

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v3

    mul-float v1, v1, v0

    :cond_1
    return v1
.end method

.method public spend(F)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->justMoved:Z

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;->processTime(F)V

    return-void

    .line 4
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    if-eqz v0, :cond_2

    .line 5
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;->left:F

    sub-float/2addr v1, p1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;->left:F

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 7
    iget p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;->left:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;->detach()V

    :cond_1
    return-void

    .line 9
    :cond_2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return-void
.end method

.method public spendAndNext(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    return-void
.end method

.method public stealth()F
    .locals 2

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->stealthFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F

    move-result v0

    :cond_0
    return v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subClass"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackSkill:I

    const-string v1, "attackSkill"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->defenseSkill:I

    const-string v1, "defenseSkill"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 8
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    const-string v1, "STR"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 9
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    const-string v1, "lvl"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 10
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    const-string v1, "exp"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 11
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->HTBoost:I

    const-string v1, "htboost"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 13
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 14
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    const-string v2, "weapon"

    invoke-virtual {p1, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 15
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const-string v2, "armor"

    invoke-virtual {p1, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 16
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    const-string v2, "misc1"

    invoke-virtual {p1, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 17
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    const-string v1, "misc2"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    return-void
.end method

.method public tier()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->tier:I

    :goto_0
    return v0
.end method

.method public updateHT(Z)V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    .line 2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x14

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->HTBoost:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    .line 3
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight;->HTMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v2

    .line 4
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$HTBoost;->boost()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 8
    :cond_1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    return-void
.end method

.method public visibleEnemies()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public visibleEnemy(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    return-object p1
.end method
