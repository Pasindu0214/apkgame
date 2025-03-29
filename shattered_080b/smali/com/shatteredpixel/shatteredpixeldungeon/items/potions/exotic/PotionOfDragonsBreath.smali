.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;
.source "PotionOfDragonsBreath.java"


# instance fields
.field public affectedCells:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public direction:I

.field public targeter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

.field public visualCells:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;-><init>()V

    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->initials:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->direction:I

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->targeter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method

.method public static synthetic access$200()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    return-object v0
.end method


# virtual methods
.method public drink(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->setKnown()V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->targeter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    return-void
.end method

.method public final spreadFlames(IF)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->affectedCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x3fc00000    # 1.5f

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->visualCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->direction:I

    const/4 v3, 0x7

    if-nez v2, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    :goto_0
    aget v1, v1, v2

    add-int/2addr v1, p1

    sub-float/2addr p2, v0

    invoke-virtual {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->spreadFlames(IF)V

    .line 5
    sget-object v0, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->direction:I

    aget v0, v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->spreadFlames(IF)V

    .line 6
    sget-object v0, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->direction:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_1
    aget v0, v0, v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->spreadFlames(IF)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->visualCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_4
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_5

    .line 9
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->visualCells:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void
.end method
