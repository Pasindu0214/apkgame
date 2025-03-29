.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Corrupting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Corrupting.java"


# static fields
.field public static BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x440066

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Corrupting;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Corrupting;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    invoke-virtual {p3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-nez v1, :cond_7

    instance-of v1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    iget v2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-lt p4, v2, :cond_7

    .line 4
    invoke-virtual {p3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 p1, p1, 0x1e

    .line 5
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    const/16 v2, 0x18

    if-lt p1, v2, :cond_7

    .line 6
    check-cast p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 7
    instance-of p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 8
    :goto_0
    iget p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 9
    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 10
    iget-object v2, p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->NEGATIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    if-ne v2, v3, :cond_3

    instance-of v2, p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SoulMark;

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {p4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_1

    .line 12
    :cond_3
    instance-of v2, p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PinCushion;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object p4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne p1, p4, :cond_5

    .line 15
    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->rollToDropLoot()V

    .line 16
    :cond_5
    invoke-static {p3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 17
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    const/4 p4, 0x1

    add-int/2addr p1, p4

    sput p1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    .line 18
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateMonstersSlain()V

    .line 19
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->qualifiedForNoKilling:Z

    .line 20
    iget p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    if-lez p1, :cond_6

    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iget v2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    if-gt v0, v2, :cond_6

    .line 21
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v2, 0xff00

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    const-string p1, "exp"

    invoke-static {p3, p1, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->earnExp(ILjava/lang/Class;)V

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->earnExp(ILjava/lang/Class;)V

    :goto_2
    return v1

    :cond_7
    :goto_3
    return p4
.end method
