.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.source "Scroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollToStone"
.end annotation


# static fields
.field public static amnts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static stones:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTerror;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRage;

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMirrorImage;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;

    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfLullaby;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    .line 2
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    .line 3
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDeepenedSleep;

    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfClairvoyance;

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfFlock;

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfBlast;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAggression;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfShock;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfBlink;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAffection;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;-><init>()V

    return-void
.end method


# virtual methods
.method public brew(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 3
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-object v0
.end method

.method public cost(Ljava/util/ArrayList;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->amnts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-object v0
.end method

.method public testIngredients(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->stones:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2
.end method
