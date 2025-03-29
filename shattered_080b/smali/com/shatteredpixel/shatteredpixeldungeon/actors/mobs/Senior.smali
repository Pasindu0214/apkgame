.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Senior;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Monk;
.source "Senior.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Monk;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SeniorSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    return-void
.end method


# virtual methods
.method public damageRoll()I
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x19

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public move(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Monk;->focusCooldown:F

    const v1, 0x3fd47ae1    # 1.66f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Monk;->focusCooldown:F

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Monk;->move(I)V

    return-void
.end method
