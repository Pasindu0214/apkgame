.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Snake;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Snake.java"


# static fields
.field public static dodges:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SnakeSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x19

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/4 v0, 0x7

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const/high16 v0, 0x3e800000    # 0.25f

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    return-void
.end method


# virtual methods
.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0xa

    return p1
.end method

.method public damageRoll()I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public defenseVerb()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Snake;->dodges:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Snake;->dodges:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->isUnlocked(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "hint"

    .line 3
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Snake;->dodges:I

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseVerb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
