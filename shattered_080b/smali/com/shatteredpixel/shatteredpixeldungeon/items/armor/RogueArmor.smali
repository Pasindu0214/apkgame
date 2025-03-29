.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/RogueArmor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;
.source "RogueArmor.java"


# instance fields
.field public teleporter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_ROGUE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/RogueArmor$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/RogueArmor$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/RogueArmor;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/RogueArmor;->teleporter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method


# virtual methods
.method public doSpecial()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/RogueArmor;->teleporter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    return-void
.end method
