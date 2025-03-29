.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;
.source "WarriorArmor.java"


# instance fields
.field public leaper:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_WARRIOR:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor;->leaper:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method

.method public static synthetic access$500()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    return-object v0
.end method


# virtual methods
.method public doSpecial()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor;->leaper:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    return-void
.end method
