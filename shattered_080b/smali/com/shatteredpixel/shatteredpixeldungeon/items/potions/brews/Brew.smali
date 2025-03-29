.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/Brew;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;
.source "Brew.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;-><init>()V

    return-void
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
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "DRINK"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public doThrow(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->thrower:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    return-void
.end method

.method public isKnown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAction()V
    .locals 1

    const-string v0, "THROW"

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    return-void
.end method
