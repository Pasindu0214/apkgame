.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gloves;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;
.source "Gloves.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GLOVES:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->DLY:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method


# virtual methods
.method public max(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    add-int/lit8 v1, v0, 0x1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    mul-int p1, p1, v0

    add-int/2addr p1, v1

    return p1
.end method
