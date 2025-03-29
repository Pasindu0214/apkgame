.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Kinetic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;
    }
.end annotation


# static fields
.field public static YELLOW:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0xffff00

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic;->YELLOW:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic;->YELLOW:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 2

    .line 1
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;

    .line 2
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->damageBonus()I

    move-result v0

    .line 4
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget p3, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-le p4, p3, :cond_1

    sub-int p3, p4, p3

    .line 6
    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;

    int-to-float p2, p3

    .line 7
    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->preservedDamage:F

    :cond_1
    add-int/2addr p4, v0

    return p4
.end method
