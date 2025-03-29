.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;
.source "HeavyBoomerang.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BOOMERANG:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->sticky:Z

    return-void
.end method


# virtual methods
.method public max(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    mul-int/lit8 v1, v0, 0x4

    mul-int v0, v0, p1

    add-int/2addr v0, v1

    return v0
.end method

.method public rangedHit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->decrementDurability()V

    .line 2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 4
    iput-object p0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 5
    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->thrownPos:I

    .line 6
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->returnPos:I

    .line 7
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->returnDepth:I

    const/4 p2, 0x3

    .line 8
    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->left:I

    :cond_0
    return-void
.end method

.method public rangedMiss(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    .line 3
    iput-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 4
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->thrownPos:I

    .line 5
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->returnPos:I

    .line 6
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->returnDepth:I

    const/4 p1, 0x3

    .line 7
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->left:I

    return-void
.end method
