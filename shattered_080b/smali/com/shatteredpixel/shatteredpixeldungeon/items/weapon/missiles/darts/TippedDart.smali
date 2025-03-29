.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;
.source "TippedDart.java"


# static fields
.field public static types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Blindweed$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/BlindingDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Dreamfoil$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Earthroot$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/ParalyticDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Fadeleaf$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/DisplacingDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Firebloom$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/IncendiaryDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Icecap$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/ChillingDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Rotberry$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/RotDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sorrowmoss$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/PoisonDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/HolyDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Stormvine$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/ShockingDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/HealingDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/AdrenalineDart;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    const v0, 0x3f266666    # 0.65f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->baseUses:F

    return-void
.end method

.method public static getTipped(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-object p0
.end method

.method public static randomTipped(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;
    .locals 3

    .line 1
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->types:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->getTipped(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "TIP"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "CLEAN"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public durabilityPerUse()F
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durabilityPerUse()F

    move-result v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 9

    const-string v0, "CLEAN"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "clean_title"

    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "clean_desc"

    invoke-static {v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "clean_all"

    invoke-static {v6, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "clean_one"

    invoke-static {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "cancel"

    invoke-static {v6, v7, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 8
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public rangedHit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->rangedHit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 2
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_1

    .line 3
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    invoke-direct {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->sticky:Z

    if-eqz v0, :cond_0

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PinCushion;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PinCushion;

    .line 6
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-ne v1, p1, :cond_0

    .line 7
    invoke-virtual {v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PinCushion;->stick(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;)V

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :cond_1
    return-void
.end method
