.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;
.source "WildEnergy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$Recipe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WILD_ENERGY:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public affectTarget(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;

    invoke-direct {v0, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    invoke-static {p0, p2, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedZap(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    return-void
.end method

.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;

    invoke-direct {v0, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    invoke-static {p0, p2, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedZap(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    return-void
.end method

.method public price()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
