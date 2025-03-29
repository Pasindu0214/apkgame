.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Dagger;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;
.source "Dagger.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->DAGGER:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method


# virtual methods
.method public damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 3
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 4
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->surprisedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->max()I

    move-result p1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->min()I

    move-result v1

    sub-int/2addr p1, v1

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->min()I

    move-result v2

    int-to-float p1, p1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float p1, p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v2

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->max()I

    move-result v2

    .line 9
    invoke-static {p1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->damageFactor(I)I

    move-result p1

    .line 10
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    return p1

    .line 12
    :cond_1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    return p1
.end method

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
