.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gauntlet;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;
.source "Gauntlet.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GAUNTLETS:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->DLY:F

    return-void
.end method


# virtual methods
.method public defenseFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method public max(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int v1, v1, p1

    add-int/2addr v1, v0

    return v1
.end method
