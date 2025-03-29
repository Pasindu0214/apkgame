.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfEarthenArmor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;
.source "PotionOfEarthenArmor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;-><init>()V

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->initials:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->setKnown()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    div-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    const/16 v1, 0x32

    invoke-virtual {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barkskin;->set(II)V

    return-void
.end method
