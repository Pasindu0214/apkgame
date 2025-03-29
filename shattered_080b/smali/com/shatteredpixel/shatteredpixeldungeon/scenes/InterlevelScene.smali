.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "InterlevelScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;,
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;
    }
.end annotation


# static fields
.field public static error:Ljava/lang/Exception; = null

.field public static fadeTime:F = 0.0f

.field public static fallIntoPit:Z = false

.field public static mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode; = null

.field public static noStory:Z = false

.field public static returnDepth:I

.field public static returnPos:I

.field public static thread:Ljava/lang/Thread;


# instance fields
.field public message:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public phase:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

.field public timeLeft:F

.field public waitingTime:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    return-void
.end method

.method public static synthetic access$300(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 1
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    if-nez p0, :cond_d

    .line 2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->heldAllies:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 3
    sget p0, Lcom/watabou/noosa/Game;->versionCode:I

    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->version:I

    .line 4
    invoke-static {}, La/b/a/e;->challenges()I

    move-result p0

    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    .line 5
    invoke-static {}, Lcom/watabou/utils/Random;->Long()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gez p0, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    add-long/2addr v2, v4

    :cond_0
    const-wide v4, 0x4f027a35a00L

    .line 6
    rem-long/2addr v2, v4

    .line 7
    sput-wide v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->clear()V

    .line 9
    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->nextID:I

    .line 10
    sget-wide v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->pushGenerator(J)V

    .line 11
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->scrolls:[Ljava/lang/Class;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->runes:Ljava/util/HashMap;

    invoke-direct {p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;-><init>([Ljava/lang/Class;Ljava/util/HashMap;)V

    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 12
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->potions:[Ljava/lang/Class;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->colors:Ljava/util/HashMap;

    invoke-direct {p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;-><init>([Ljava/lang/Class;Ljava/util/HashMap;)V

    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 13
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->rings:[Ljava/lang/Class;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->gems:Ljava/util/HashMap;

    invoke-direct {p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;-><init>([Ljava/lang/Class;Ljava/util/HashMap;)V

    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 14
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->ALL_SPEC:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    const/4 v2, -0x1

    .line 15
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    .line 16
    invoke-static {p0}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->initForRun()V

    .line 18
    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object p0, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    .line 19
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 20
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    .line 21
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    .line 22
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    .line 23
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    .line 24
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    .line 25
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->piranhasKilled:I

    .line 26
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->ankhsUsed:I

    .line 27
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->upgradesUsed:I

    .line 28
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->sneakAttacks:I

    .line 29
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->thrownAssists:I

    .line 30
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->spawnersAlive:I

    const/4 v2, 0x0

    .line 31
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->duration:F

    .line 32
    sput-boolean p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->qualifiedForNoKilling:Z

    .line 33
    sput-boolean p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    .line 35
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->reset()V

    .line 36
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->reset()V

    .line 37
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 38
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    .line 39
    new-instance v2, Lcom/watabou/utils/SparseArray;

    invoke-direct {v2}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->droppedItems:Lcom/watabou/utils/SparseArray;

    .line 40
    new-instance v2, Lcom/watabou/utils/SparseArray;

    invoke-direct {v2}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->portedItems:Lcom/watabou/utils/SparseArray;

    .line 41
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 42
    iput p0, v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->chapters:Ljava/util/HashSet;

    .line 44
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reset()V

    .line 45
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reset2()V

    .line 46
    invoke-static {}, La/b/a/e;->reset()V

    .line 47
    sput-boolean p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->spawned1:Z

    .line 48
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reward:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 49
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->reset()V

    .line 50
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 51
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->INITIAL_ARTIFACT_PROBS:[F

    .line 52
    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->spawnedArtifacts:Ljava/util/ArrayList;

    .line 54
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;-><init>()V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 55
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Regeneration;

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 56
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    .line 57
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 59
    :goto_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 60
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->loadGlobal()V

    .line 61
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->selectedClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v2, :cond_c

    .line 62
    iput-object v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 63
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClothArmor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClothArmor;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 64
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 65
    :cond_3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;-><init>()V

    .line 66
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 67
    :cond_4
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/SmallRation;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/SmallRation;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 69
    :cond_5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_6

    goto/16 :goto_2

    .line 71
    :cond_6
    iget-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gloves;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gloves;-><init>()V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 72
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;-><init>()V

    .line 73
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 74
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v2, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 75
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 76
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->VELVET_POUCH:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    .line 77
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 78
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 79
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfLullaby;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfLullaby;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto/16 :goto_2

    .line 80
    :cond_7
    iget-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Dagger;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Dagger;-><init>()V

    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 81
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;-><init>()V

    .line 82
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 83
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    invoke-virtual {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 84
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingKnife;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingKnife;-><init>()V

    .line 85
    iput v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 86
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 87
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v2, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 88
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 89
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 90
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->VELVET_POUCH:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    .line 91
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 92
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 93
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto/16 :goto_2

    .line 94
    :cond_8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfMagicMissile;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfMagicMissile;-><init>()V

    invoke-direct {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V

    .line 95
    iget-object v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 96
    iget-object v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 97
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v2, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 98
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 99
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->SCROLL_HOLDER:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    .line 100
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 101
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 102
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_2

    .line 103
    :cond_9
    iget-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/WornShortsword;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/WornShortsword;-><init>()V

    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 104
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingStone;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingStone;-><init>()V

    .line 105
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 106
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 107
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v2, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 108
    iget-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_a

    .line 109
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;-><init>()V

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->affixSeal(Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;)V

    .line 110
    :cond_a
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 111
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->POTION_BANDOLIER:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    .line 112
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 113
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 114
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRage;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRage;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 115
    :goto_2
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->noStory:Z

    if-eqz v0, :cond_b

    .line 116
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->chapters:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sput-boolean p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->noStory:Z

    .line 118
    :cond_b
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 119
    :cond_c
    throw v0

    .line 120
    :cond_d
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->holdAllies(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 121
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V

    .line 122
    :goto_3
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    if-lt p0, v0, :cond_e

    .line 123
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->newLevel()Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object p0

    goto :goto_4

    .line 124
    :cond_e
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr p0, v1

    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 125
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->loadLevel(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object p0

    .line 126
    :goto_4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V

    return-void

    .line 127
    :cond_f
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static synthetic access$500(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->heldAllies:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 3
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->loadGame(I)V

    .line 4
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 5
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 6
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->loadLevel(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V

    goto :goto_0

    .line 7
    :cond_0
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->loadLevel(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public static synthetic access$600(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->holdAllies(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-boolean p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resurrect(I)V

    .line 4
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr p0, v0

    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->newLevel()Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object p0

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resurrect(I)V

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->clear()V

    .line 9
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 11
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->reset()Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->createMobs()V

    .line 14
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V

    :goto_1
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 15
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static synthetic access$800(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->holdAllies(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$Falling;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V

    .line 4
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    if-lt p0, v0, :cond_0

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->newLevel()Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 7
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->loadLevel(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-result-object p0

    .line 8
    :goto_0
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fallIntoPit:Z

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->fallCell(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->switchLevel(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;I)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 9
    throw p0
.end method


# virtual methods
.method public create()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    const v0, 0x3f2b851f    # 0.67f

    .line 2
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_0

    .line 4
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v10, 0x0

    goto :goto_3

    .line 5
    :cond_0
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v0, v5

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v10, 0x42480000    # 50.0f

    goto :goto_3

    .line 6
    :cond_1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->returnDepth:I

    .line 7
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-le v0, v2, :cond_2

    const/high16 v2, 0x41700000    # 15.0f

    goto :goto_0

    :cond_2
    const/high16 v2, -0x3e900000    # -15.0f

    :goto_0
    move v10, v2

    goto :goto_3

    .line 8
    :cond_3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->check(I)Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    move-result-object v0

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->depth:I

    :goto_1
    const/high16 v10, 0x40a00000    # 5.0f

    goto :goto_3

    .line 9
    :cond_4
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    .line 10
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sub-int/2addr v0, v5

    const/high16 v2, -0x3f600000    # -5.0f

    const/high16 v10, -0x3f600000    # -5.0f

    goto :goto_3

    .line 11
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v0, :cond_6

    .line 12
    sput v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    goto :goto_2

    .line 13
    :cond_6
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v5, v0

    .line 14
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    if-lt v0, v5, :cond_7

    .line 15
    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    if-eq v5, v0, :cond_8

    const/16 v0, 0xb

    if-eq v5, v0, :cond_8

    const/16 v0, 0x10

    if-eq v5, v0, :cond_8

    const/16 v0, 0x15

    if-ne v5, v0, :cond_9

    .line 16
    :cond_8
    sput v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    :cond_9
    :goto_2
    move v0, v5

    goto :goto_1

    :goto_3
    if-gt v0, v4, :cond_a

    const-string v0, "loading_sewers.png"

    :goto_4
    move-object v9, v0

    goto :goto_5

    :cond_a
    const/16 v2, 0xa

    if-gt v0, v2, :cond_b

    const-string v0, "loading_prison.png"

    goto :goto_4

    :cond_b
    const/16 v2, 0xf

    if-gt v0, v2, :cond_c

    const-string v0, "loading_caves.png"

    goto :goto_4

    :cond_c
    const/16 v2, 0x14

    if-gt v0, v2, :cond_d

    const-string v0, "loading_city.png"

    goto :goto_4

    :cond_d
    const/16 v2, 0x19

    if-gt v0, v2, :cond_e

    const-string v0, "loading_halls.png"

    goto :goto_4

    :cond_e
    const-string v0, "shadow.png"

    goto :goto_4

    .line 17
    :goto_5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_f

    .line 18
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    div-float/2addr v0, v2

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    .line 19
    :cond_f
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$1;

    sget-object v5, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v6, v5, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v7, v6

    iget v5, v5, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v8, v5

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;FFLjava/lang/Object;F)V

    const/high16 v5, 0x40800000    # 4.0f

    .line 20
    iput v5, v0, Lcom/watabou/noosa/SkinnedBlock;->scaleX:F

    .line 21
    iput v5, v0, Lcom/watabou/noosa/SkinnedBlock;->scaleY:F

    .line 22
    invoke-virtual {v0}, Lcom/watabou/noosa/SkinnedBlock;->updateFrame()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 24
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$2;

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v4}, Lcom/watabou/gltextures/TextureCache;->createGradient([I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;Ljava/lang/Object;)V

    const/high16 v4, 0x42b40000    # 90.0f

    .line 25
    iput v4, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 26
    sget-object v4, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v5, v4, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v6, v5

    iput v6, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 27
    iget-object v6, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v4, v4, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    iput v4, v6, Lcom/watabou/utils/PointF;->x:F

    int-to-float v3, v5

    .line 28
    iput v3, v6, Lcom/watabou/utils/PointF;->y:F

    .line 29
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 30
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    .line 31
    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->message:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 32
    sget-object v3, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v4, v3, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v4, v4

    .line 33
    iget v5, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    .line 34
    iget v3, v3, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v3, v3

    .line 35
    iget v5, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v2

    .line 36
    invoke-virtual {v0, v4, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 37
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->message:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 38
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->message:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 39
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;->FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    .line 40
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    .line 41
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_10

    .line 42
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->thread:Ljava/lang/Thread;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    :cond_10
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->waitingTime:F

    return-void

    :array_0
    .array-data 4
        -0x56000000
        -0x45000000    # -0.001953125f
        -0x34000000    # -3.3554432E7f
        -0x23000000
        -0x1000000
    .end array-data
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Scene;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->waitingTime:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->waitingTime:F

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    div-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->message:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->alpha(F)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_9

    .line 7
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    .line 8
    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->thread:Ljava/lang/Thread;

    .line 9
    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->error:Ljava/lang/Exception;

    goto/16 :goto_2

    .line 10
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->error:Ljava/lang/Exception;

    const-string v1, " depth:"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 11
    instance-of v3, v0, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "file_not_found"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_2
    instance-of v3, v0, Ljava/io/IOException;

    const-string v5, "io_error"

    if-eqz v3, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->error:Ljava/lang/Exception;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "old save"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_0
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$4;

    invoke-direct {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 16
    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->thread:Ljava/lang/Thread;

    .line 17
    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->error:Ljava/lang/Exception;

    goto/16 :goto_2

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "fatal error occured while moving between floors. Seed:"

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->error:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 19
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->waitingTime:F

    float-to-int v3, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_9

    const/high16 v3, 0x41300000    # 11.0f

    .line 20
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->waitingTime:F

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v3, v0

    const-string v4, ""

    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v5, v0, v2

    const-string v6, "\n"

    .line 22
    invoke-static {v4, v6}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-static {v4}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "waited more than 10 seconds on levelgen. Seed:"

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trace:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 25
    :cond_7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->message:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->alpha(F)V

    .line 26
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_9

    .line 27
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->error:Ljava/lang/Exception;

    if-nez v0, :cond_8

    .line 28
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;->FADE_OUT:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    .line 29
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    goto :goto_2

    .line 30
    :cond_8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;->STATIC:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    :cond_9
    :goto_2
    return-void
.end method
