.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Slime;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Slime.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SlimeSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v0, 0x9

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    const v0, 0x3dcccccd    # 0.1f

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    return-void
.end method


# virtual methods
.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0xc

    return p1
.end method

.method public createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T2:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-object v0
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 4

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x4

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-int p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x4

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    return-void
.end method

.method public damageRoll()I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method
