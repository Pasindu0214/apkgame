.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Potion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$PlaceHolder;
    }
.end annotation


# static fields
.field public static final canThrowPots:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final colors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;",
            ">;"
        }
    .end annotation
.end field

.field public static final mustThrowPots:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final potions:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public anonymous:Z

.field public color:Ljava/lang/String;

.field public initials:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v7, 0x4

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v3, v6, v7

    const/4 v7, 0x6

    aput-object v2, v6, v7

    const/4 v7, 0x7

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    aput-object v1, v6, v7

    const/16 v7, 0x9

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHaste;

    aput-object v8, v6, v7

    const/16 v7, 0xb

    aput-object v0, v6, v7

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->potions:[Ljava/lang/Class;

    .line 2
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$1;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$1;-><init>()V

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->colors:Ljava/util/HashMap;

    .line 3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfCorrosiveGas;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfSnapFreeze;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfShroudingFog;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfStormClouds;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->canThrowPots:Ljava/util/HashSet;

    .line 13
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->canThrowPots:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->canThrowPots:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->canThrowPots:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfCleansing;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->canThrowPots:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfHoneyedHealing;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    const-string v0, "DRINK"

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymous:Z

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->reset()V

    return-void
.end method

.method public static saveSelectively(Lcom/watabou/utils/Bundle;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/watabou/utils/Bundle;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;

    if-eqz v2, :cond_1

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->saveClassesSelectively(Lcom/watabou/utils/Bundle;Ljava/util/ArrayList;)V

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

    const-string v0, "DRINK"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public anonymize()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_HOLDER:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymous:Z

    return-void
.end method

.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->shatter(I)V

    return-void
.end method

.method public cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V

    return-void
.end method

.method public collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setAction()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public doThrow(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->canThrowPots:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$3;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "beneficial"

    .line 5
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "sure_throw"

    .line 6
    invoke-static {v0, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "yes"

    .line 7
    invoke-static {v0, v7, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v3, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "no"

    invoke-static {v0, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 8
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->thrower:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    :goto_0
    return-void
.end method

.method public drink(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 5
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_drink.mp3"

    .line 6
    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 7
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    return-void
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v1, "CHOOSE"

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Z)V

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    :cond_0
    const-string v1, "DRINK"

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$2;

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "harmful"

    .line 7
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "sure_drink"

    .line 8
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "yes"

    .line 9
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "no"

    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    move-object v3, p2

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 10
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->drink(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setKnown()V

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method

.method public info()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown_desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isIdentified()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    return v0
.end method

.method public isKnown()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymous:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->color:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onThrow(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, p1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->shatter(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    :goto_1
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->reset()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->image(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->itemLabels:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->color:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setAction()V

    return-void
.end method

.method public setAction()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->mustThrowPots:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "THROW"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->canThrowPots:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CHOOSE"

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "DRINK"

    .line 5
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setKnown()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymous:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setAction()V

    .line 8
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setAction()V

    .line 11
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->setSeen(Ljava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public shatter(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "shatter"

    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_shatter.mp3"

    .line 4
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->splash(I)V

    :cond_0
    return-void
.end method

.method public splash(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->splashColor()I

    move-result v0

    .line 4
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    .line 5
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-static {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 6
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    invoke-static {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 7
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-static {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(Lcom/watabou/utils/PointF;II)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(III)V

    :goto_0
    return-void
.end method

.method public splashColor()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymous:Z

    if-eqz v0, :cond_0

    const v0, 0xaaff

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const-string v1, "items.png"

    .line 2
    invoke-static {v1}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v1

    .line 3
    iget v2, v1, Lcom/watabou/gltextures/SmartTexture;->width:I

    div-int/lit8 v2, v2, 0x10

    .line 4
    div-int v3, v0, v2

    .line 5
    rem-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x9

    .line 6
    iget-object v1, v1, Lcom/watabou/gltextures/SmartTexture;->bitmap:La/b/a/o/g;

    .line 7
    iget-object v1, v1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 8
    iget-wide v1, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v1, v2, v0, v3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixel(JII)I

    move-result v0

    :goto_0
    return v0
.end method
