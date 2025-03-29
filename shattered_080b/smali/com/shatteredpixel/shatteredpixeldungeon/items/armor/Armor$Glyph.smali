.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
.super Ljava/lang/Object;
.source "Armor.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Glyph"
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
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Obfuscation;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Swiftness;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Viscosity;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Potential;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->common:[Ljava/lang/Class;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Brimstone;

    aput-object v7, v2, v3

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;

    aput-object v7, v2, v4

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Entanglement;

    aput-object v7, v2, v5

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Repulsion;

    aput-object v7, v2, v6

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Camouflage;

    aput-object v7, v2, v0

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Flow;

    const/4 v8, 0x5

    aput-object v7, v2, v8

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->uncommon:[Ljava/lang/Class;

    new-array v2, v6, [Ljava/lang/Class;

    .line 3
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Affection;

    aput-object v7, v2, v3

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;

    aput-object v7, v2, v4

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Thorns;

    aput-object v7, v2, v5

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->rare:[Ljava/lang/Class;

    new-array v2, v6, [F

    .line 4
    fill-array-data v2, :array_0

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->typeChances:[F

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    .line 5
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/AntiEntropy;

    aput-object v7, v2, v3

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Corrosion;

    aput-object v3, v2, v4

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Displacement;

    aput-object v3, v2, v5

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Metabolism;

    aput-object v3, v2, v6

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Multiplicity;

    aput-object v3, v2, v0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Stench;

    aput-object v0, v2, v8

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Overgrowth;

    aput-object v0, v2, v1

    const/4 v0, 0x7

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Bulk;

    aput-object v1, v2, v0

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curses:[Ljava/lang/Class;

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

.method public static varargs random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->typeChances:[F

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->randomCommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->rare:[Ljava/lang/Class;

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
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    :goto_0
    return-object p0

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->randomUncommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object p0

    return-object p0
.end method

.method public static varargs randomCommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->common:[Ljava/lang/Class;

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
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    return-object p0
.end method

.method public static varargs randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curses:[Ljava/lang/Class;

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
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    return-object p0
.end method

.method public static varargs randomUncommon([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->uncommon:[Ljava/lang/Class;

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
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

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
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curse()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "glyph"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "curse"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->name(Ljava/lang/String;)Ljava/lang/String;

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

.method public abstract proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 0

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 0

    return-void
.end method
