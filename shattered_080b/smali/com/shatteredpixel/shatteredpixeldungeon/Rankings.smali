.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;
.super Ljava/lang/Enum;
.source "Rankings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

.field public static final enum INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

.field public static final scoreComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public lastRecord:I

.field public records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;",
            ">;"
        }
    .end annotation
.end field

.field public totalNumber:I

.field public wonNumber:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    aput-object v0, v2, v1

    .line 2
    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->scoreComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    return-object v0
.end method


# virtual methods
.method public load()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    :try_start_0
    const-string v0, "rankings.dat"

    .line 3
    invoke-static {v0}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    const-string v1, "records"

    .line 4
    invoke-virtual {v0, v1}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/utils/Bundlable;

    .line 5
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "latest"

    .line 6
    invoke-virtual {v0, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->lastRecord:I

    const-string v1, "total"

    .line 7
    invoke-virtual {v0, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    :cond_2
    const-string v1, "won"

    .line 9
    invoke-virtual {v0, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->wonNumber:I

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    .line 11
    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->win:Z

    if-eqz v1, :cond_3

    .line 12
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->wonNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->wonNumber:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    return-void
.end method

.method public loadGameData(Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->clear()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->reset()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->records:Ljava/util/ArrayList;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->reset()V

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->reset()V

    const-string v0, "handlers"

    .line 9
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->scrolls:[Ljava/lang/Class;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->runes:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;-><init>([Ljava/lang/Class;Ljava/util/HashMap;Lcom/watabou/utils/Bundle;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 11
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->potions:[Ljava/lang/Class;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->colors:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;-><init>([Ljava/lang/Class;Ljava/util/HashMap;Lcom/watabou/utils/Bundle;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 12
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->rings:[Ljava/lang/Class;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->gems:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;-><init>([Ljava/lang/Class;Ljava/util/HashMap;Lcom/watabou/utils/Bundle;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    const-string v0, "badges"

    .line 13
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->restore(Lcom/watabou/utils/Bundle;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    const-string v0, "hero"

    .line 15
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 16
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-string v0, "stats"

    .line 17
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "challenges"

    .line 18
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    return-void
.end method

.method public save()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    const-string v2, "records"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    .line 3
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->lastRecord:I

    const-string v2, "latest"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    const-string v2, "total"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->wonNumber:I

    const-string v2, "won"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    :try_start_0
    const-string v1, "rankings.dat"

    .line 6
    invoke-static {v1, v0}, Lcom/watabou/utils/FileUtils;->bundleToFile(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public submit(ZLjava/lang/Class;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->load()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;-><init>()V

    .line 3
    iput-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->cause:Ljava/lang/Class;

    .line 4
    iput-boolean p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->win:Z

    .line 5
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 6
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->tier()I

    move-result p2

    iput p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->armorTier:I

    .line 7
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iput p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->herolevel:I

    .line 8
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    iput p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->depth:I

    .line 9
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    if-eqz p1, :cond_0

    const/16 v2, 0x1a

    goto :goto_0

    :cond_0
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    :goto_0
    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v1, p2

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    mul-int v1, v1, p2

    .line 10
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->score:I

    .line 11
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    const/4 v1, 0x0

    if-eqz p2, :cond_12

    .line 12
    new-instance p2, Lcom/watabou/utils/Bundle;

    invoke-direct {p2}, Lcom/watabou/utils/Bundle;-><init>()V

    iput-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    .line 13
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 14
    iget-object v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 15
    iget-object v3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    .line 16
    instance-of v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-eqz v8, :cond_4

    .line 17
    move-object v8, v7

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    new-array v4, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v8, v4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_3

    aget-object v10, v4, v9

    .line 18
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 19
    :cond_3
    iget-object v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 21
    iget-object v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 22
    :cond_6
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-string v5, "hero"

    invoke-virtual {v3, v5, v4}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 23
    new-instance v3, Lcom/watabou/utils/Bundle;

    invoke-direct {v3}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 24
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 25
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    const-string v5, "stats"

    invoke-virtual {v4, v5, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    .line 26
    new-instance v3, Lcom/watabou/utils/Bundle;

    invoke-direct {v3}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 27
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->store(Lcom/watabou/utils/Bundle;Ljava/util/HashSet;)V

    .line 28
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    const-string v5, "badges"

    invoke-virtual {v4, v5, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    .line 29
    new-instance v3, Lcom/watabou/utils/Bundle;

    invoke-direct {v3}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 30
    iget-object v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->saveSelectively(Lcom/watabou/utils/Bundle;Ljava/util/ArrayList;)V

    .line 31
    iget-object v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->saveSelectively(Lcom/watabou/utils/Bundle;Ljava/util/ArrayList;)V

    .line 32
    iget-object v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz v4, :cond_7

    iget-object v5, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_7
    iget-object v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz v4, :cond_8

    iget-object v5, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_8
    iget-object v4, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    .line 35
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 36
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->items:[Ljava/lang/Class;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 37
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 38
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 39
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 40
    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "_label"

    .line 41
    invoke-static {v8, v9}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->itemLabels:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_known"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v3, v8, v7}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    goto :goto_5

    .line 43
    :cond_a
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    const-string v5, "handlers"

    invoke-virtual {v4, v5, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    .line 44
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iput-object v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    .line 45
    iget-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    const-string v3, "challenges"

    invoke-virtual {p2, v3, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameID:Ljava/lang/String;

    .line 47
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->scoreComparator:Ljava/util/Comparator;

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->lastRecord:I

    .line 50
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_6
    const/16 v0, 0xb

    if-le p2, v0, :cond_c

    .line 51
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->lastRecord:I

    add-int/lit8 v2, p2, -0x1

    if-ne v0, v2, :cond_b

    .line 52
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->lastRecord:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->lastRecord:I

    goto :goto_7

    .line 54
    :cond_b
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55
    :goto_7
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->records:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_6

    .line 56
    :cond_c
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    if-eqz p1, :cond_d

    .line 57
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->wonNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->wonNumber:I

    .line 58
    :cond_d
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    const/16 p2, 0xa

    if-lt p1, p2, :cond_e

    .line 59
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GAMES_PLAYED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 60
    :cond_e
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    const/16 p2, 0x32

    if-lt p1, p2, :cond_f

    .line 61
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GAMES_PLAYED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 62
    :cond_f
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    const/16 p2, 0xfa

    if-lt p1, p2, :cond_10

    .line 63
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GAMES_PLAYED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 64
    :cond_10
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->totalNumber:I

    const/16 p2, 0x3e8

    if-lt p1, p2, :cond_11

    .line 65
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GAMES_PLAYED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 66
    :cond_11
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 67
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->save()V

    return-void

    .line 68
    :cond_12
    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method
