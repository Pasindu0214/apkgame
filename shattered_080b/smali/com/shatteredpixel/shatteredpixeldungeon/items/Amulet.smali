.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Amulet.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->AMULET:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

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
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "END"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateVictory()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 6
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;)V

    const/high16 v0, -0x3f600000    # -5.0f

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string p1, "END"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;->showAmuletScene(Z)V

    :cond_0
    return-void
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final showAmuletScene(Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    sput-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->noText:Z

    .line 3
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;

    invoke-static {p1}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
