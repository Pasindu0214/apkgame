.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.super Ljava/lang/Object;
.source "Weapon.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Enchantment"
.end annotation


# static fields
.field public static final common:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final curses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final rare:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final typeChances:[F

.field public static final uncommon:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blazing;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Chilling;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Shocking;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->common:[Ljava/lang/Class;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blocking;

    aput-object v7, v2, v3

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blooming;

    aput-object v7, v2, v4

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Elastic;

    aput-object v7, v2, v5

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky;

    aput-object v7, v2, v6

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Projecting;

    aput-object v7, v2, v0

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Unstable;

    const/4 v8, 0x5

    aput-object v7, v2, v8

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->uncommon:[Ljava/lang/Class;

    new-array v2, v6, [Ljava/lang/Class;

    .line 3
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Corrupting;

    aput-object v7, v2, v3

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Grim;

    aput-object v7, v2, v4

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Vampiric;

    aput-object v7, v2, v5

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->rare:[Ljava/lang/Class;

    new-array v2, v6, [F

    .line 4
    fill-array-data v2, :array_0

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->typeChances:[F

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    .line 5
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Annoying;

    aput-object v7, v2, v3

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Displacing;

    aput-object v3, v2, v4

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Exhausting;

    aput-object v3, v2, v5

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Fragile;

    aput-object v3, v2, v6

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Sacrificial;

    aput-object v3, v2, v0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Wayward;

    aput-object v0, v2, v8

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Polarized;

    aput-object v0, v2, v1

    const/4 v0, 0x7

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Friendly;

    aput-object v1, v2, v0

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curses:[Ljava/lang/Class;

    return-void

    :array_0
    .array-data 4
        0x42480000    # 50.0f
        0x42200000    # 40.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->typeChances:[F

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->randomCommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->rare:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    .line 6
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    :goto_0
    return-object p0

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->randomUncommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object p0

    return-object p0
.end method

.method public static varargs randomCommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->common:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    .line 4
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    return-object p0
.end method

.method public static varargs randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curses:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    .line 4
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    return-object p0
.end method

.method public static varargs randomUncommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->uncommon:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    .line 4
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    return-object p0
.end method


# virtual methods
.method public curse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curse()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "enchant"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "curse"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "name"

    .line 4
    invoke-static {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 0

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 0

    return-void
.end method
