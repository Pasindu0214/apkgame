.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;
.source "WandOfCorruption.java"


# static fields
.field public static final MAJOR_DEBUFFS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINOR_DEBUFFS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Weakness;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vulnerable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Blindness;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Roots;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vertigo;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Drowsy;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    .line 16
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Slow;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hex;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicalSleep;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SoulMark;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corrosion;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Doom;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_CORRUPTION:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public final corruptEnemy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Doom;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 4
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 5
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->NEGATIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    if-ne v4, v5, :cond_2

    instance-of v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SoulMark;

    if-nez v4, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PinCushion;

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v0, v2, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->rollToDropLoot()V

    .line 11
    :cond_4
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 12
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    .line 13
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateMonstersSlain()V

    .line 14
    sput-boolean v3, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->qualifiedForNoKilling:Z

    .line 15
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    if-lez v0, :cond_5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iget v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    if-gt v4, v5, :cond_5

    .line 16
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v4, 0xff00

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "exp"

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->earnExp(ILjava/lang/Class;)V

    goto :goto_1

    .line 18
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->earnExp(ILjava/lang/Class;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    :goto_1
    return-void

    :cond_7
    :goto_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "already_corrupted"

    .line 20
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final debuffEnemy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;",
            ">;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_2

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {v0}, Lcom/watabou/utils/Random;->chances(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    add-int/lit8 p2, p2, 0x6

    int-to-float p2, p2

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_2

    .line 10
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    if-ne p2, v0, :cond_5

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->debuffEnemy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;Ljava/util/HashMap;)V

    goto :goto_2

    .line 11
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    if-ne p2, v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->corruptEnemy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x7

    .line 3
    invoke-static {v1, v2, v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "snd_zap.mp3"

    .line 5
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_0

    .line 2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x4

    int-to-float p2, p2

    invoke-static {p3, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_0
    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 2
    instance-of p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    move-object p1, v0

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v2, v4

    .line 5
    iget v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    .line 6
    instance-of v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    if-nez v6, :cond_9

    instance-of v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;

    if-eqz v6, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    instance-of v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_8

    instance-of v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bee;

    if-eqz v6, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;

    if-eqz v3, :cond_3

    .line 9
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    div-float v5, v3, v4

    goto :goto_4

    .line 10
    :cond_3
    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$BurningFist;

    if-nez v3, :cond_7

    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$RottingFist;

    if-eqz v3, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$Larva;

    if-nez v3, :cond_6

    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/King$Undead;

    if-eqz v3, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;

    if-eqz v3, :cond_a

    const/high16 v5, 0x40800000    # 4.0f

    goto :goto_4

    :cond_6
    :goto_0
    const/high16 v5, 0x40c00000    # 6.0f

    goto :goto_4

    :cond_7
    :goto_1
    const/high16 v5, 0x41f80000    # 31.0f

    goto :goto_4

    .line 13
    :cond_8
    :goto_2
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float v5, v4, v7

    goto :goto_4

    .line 14
    :cond_9
    :goto_3
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v3, v1

    int-to-float v5, v3

    :cond_a
    :goto_4
    float-to-double v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 15
    iget v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v7, v7

    iget v8, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v9

    add-double/2addr v7, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    double-to-float v3, v7

    .line 16
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 17
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    goto :goto_5

    .line 18
    :cond_c
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v7, 0x3f400000    # 0.75f

    if-eqz v6, :cond_d

    :goto_6
    mul-float v3, v3, v7

    goto :goto_5

    .line 19
    :cond_d
    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->NEGATIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    if-ne v5, v6, :cond_b

    goto :goto_6

    .line 20
    :cond_e
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    if-nez v4, :cond_f

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Doom;

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    if-eqz v4, :cond_10

    :cond_f
    const v2, 0x3a83126f    # 0.001f

    sub-float v2, v3, v2

    :cond_10
    cmpl-float v4, v2, v3

    if-lez v4, :cond_11

    .line 21
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->corruptEnemy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    goto :goto_7

    :cond_11
    div-float/2addr v2, v3

    .line 22
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_12

    .line 23
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MAJOR_DEBUFFS:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->debuffEnemy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;Ljava/util/HashMap;)V

    goto :goto_7

    .line 24
    :cond_12
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->MINOR_DEBUFFS:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;->debuffEnemy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;Ljava/util/HashMap;)V

    .line 25
    :goto_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result p1

    invoke-static {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    goto :goto_8

    .line 26
    :cond_13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    :goto_8
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const v0, 0x3f19999a    # 0.6f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 4
    iget-object v1, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/4 v2, 0x0

    const/high16 v3, 0x40a00000    # 5.0f

    .line 5
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v3, v1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 8
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->shuffleXY(F)V

    return-void
.end method
