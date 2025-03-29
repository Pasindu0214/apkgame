.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;
.source "RingOfForce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce$Force;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;-><init>()V

    return-void
.end method

.method public static armedDamageBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce$Force;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public static damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)I
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce$Force;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result p0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->tier(I)F

    move-result p0

    .line 4
    invoke-static {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->min(IF)I

    move-result v1

    invoke-static {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->max(IF)I

    move-result p0

    invoke-static {v1, p0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result p0

    add-int/lit8 p0, p0, -0x8

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p0

    return p0
.end method

.method public static max(IF)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v0, v0, p1

    int-to-float p0, p0

    mul-float p0, p0, p1

    add-float/2addr p0, v0

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static min(IF)I
    .locals 0

    int-to-float p0, p0

    add-float/2addr p1, p0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static tier(I)F
    .locals 3

    add-int/lit8 p0, p0, -0x8

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    invoke-static {p0, v1, v0, v1}, La/a/a/a/a;->a(FFFF)F

    move-result p0

    :cond_0
    return p0
.end method


# virtual methods
.method public buff()Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce$Force;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce$Force;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;)V

    return-object v0
.end method

.method public statsInfo()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->tier(I)F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isIdentified()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->soloBuffedBonus()I

    move-result v1

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->min(IF)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->max(IF)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "stats"

    invoke-static {p0, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 5
    invoke-static {v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->min(IF)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;->max(IF)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "typical_stats"

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
