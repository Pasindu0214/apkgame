.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/HandAxe;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;
.source "HandAxe.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->HAND_AXE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    const v0, 0x3fa8f5c3    # 1.32f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->ACC:F

    return-void
.end method


# virtual methods
.method public max(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, v1}, La/a/a/a/a;->a(IIII)I

    move-result p1

    return p1
.end method
