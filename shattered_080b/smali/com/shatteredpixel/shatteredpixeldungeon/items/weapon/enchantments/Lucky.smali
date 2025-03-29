.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Lucky.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky$LuckProc;
    }
.end annotation


# static fields
.field public static GREEN:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0xff00

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky;->GREEN:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;-><init>()V

    return-void
.end method

.method public static genLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    .line 1
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object v0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 7
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 8
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->STONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 9
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10
    :cond_2
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 11
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 12
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky;->GREEN:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget p2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-gt p2, p4, :cond_0

    add-int/lit8 p1, p1, 0x28

    .line 3
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    const/16 p2, 0x24

    if-lt p1, p2, :cond_0

    .line 4
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky$LuckProc;

    invoke-static {p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    :cond_0
    return p4
.end method
