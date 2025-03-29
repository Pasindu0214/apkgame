.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Flail;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;
.source "Flail.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->FLAIL:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    const v0, 0x3f666666    # 0.9f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->ACC:F

    return-void
.end method


# virtual methods
.method public max(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const v2, 0x3fcccccd    # 1.6f

    mul-float v1, v1, v2

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int v1, v1, p1

    add-int/2addr v1, v0

    return v1
.end method
