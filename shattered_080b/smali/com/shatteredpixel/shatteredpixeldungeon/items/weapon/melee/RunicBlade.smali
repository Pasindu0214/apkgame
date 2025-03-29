.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/RunicBlade;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;
.source "RunicBlade.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RUNIC_BLADE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    return-void
.end method


# virtual methods
.method public max(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v0, v0, 0x2

    mul-int v0, v0, p1

    int-to-float p1, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method
