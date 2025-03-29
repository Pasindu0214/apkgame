.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$upgradeKit;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.source "AlchemistsToolkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "upgradeKit"
.end annotation


# static fields
.field public static lastCost:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;-><init>()V

    return-void
.end method


# virtual methods
.method public brew(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$upgradeKit;->lastCost:I

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;->absorbEnergy(I)V

    return-object p1
.end method

.method public cost(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->availableEnergy()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sput p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$upgradeKit;->lastCost:I

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
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    .line 4
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 5
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 6
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 7
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 8
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->availableEnergy()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;->absorbEnergy(I)V

    return-object v0
.end method

.method public testIngredients(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->provider:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;

    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$kitEnergy;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
