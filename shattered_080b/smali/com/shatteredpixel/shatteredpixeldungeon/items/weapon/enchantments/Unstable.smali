.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Unstable;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Unstable.java"


# static fields
.field public static GREY:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

.field public static randomEnchants:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x999999

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Unstable;->GREY:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 4
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blazing;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blocking;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blooming;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Chilling;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Corrupting;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Elastic;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Grim;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Shocking;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Vampiric;

    aput-object v2, v0, v1

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Unstable;->randomEnchants:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;-><init>()V

    return-void
.end method


# virtual methods
.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Unstable;->GREY:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;

    .line 2
    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->damageBonus()I

    move-result v1

    .line 4
    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Unstable;->randomEnchants:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/watabou/utils/Random;->oneOf([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method
