.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;
.source "StoneOfIntuition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;
    }
.end annotation


# static fields
.field public static curGuess:Ljava/lang/Class;

.field public static potions:[Ljava/lang/Class;

.field public static scrolls:[Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHaste;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;->potions:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;

    aput-object v1, v0, v3

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfLullaby;

    aput-object v1, v0, v4

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;

    aput-object v1, v0, v5

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMirrorImage;

    aput-object v1, v0, v6

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;

    aput-object v1, v0, v7

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRage;

    aput-object v1, v0, v8

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;

    aput-object v1, v0, v9

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;

    aput-object v1, v0, v10

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    aput-object v1, v0, v11

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTerror;

    aput-object v1, v0, v12

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;

    aput-object v1, v0, v13

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    aput-object v1, v0, v14

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;->scrolls:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNIDED_POTION_OR_SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_INTUITION:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method
