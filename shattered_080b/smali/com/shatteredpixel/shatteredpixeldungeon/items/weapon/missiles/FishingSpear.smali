.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/FishingSpear;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;
.source "FishingSpear.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->FISHING_SPEAR:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    return-void
.end method


# virtual methods
.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1
.end method
