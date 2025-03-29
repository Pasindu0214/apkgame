.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;
.source "RingOfMight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight$Might;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;-><init>()V

    return-void
.end method

.method public static HTMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight$Might;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3ff08f5c28f5c28fL    # 1.035

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static strengthBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight$Might;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public buff()Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight$Might;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight$Might;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight;)V

    return-object v0
.end method

.method public doEquip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->doEquip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->updateHT(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->updateHT(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

.method public level(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->updateHT(Z)V

    :cond_0
    return-void
.end method

.method public statsInfo()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isIdentified()Z

    move-result v0

    const-string v1, "#.##"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->soloBonus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    const-wide v7, 0x3ff08f5c28f5c28fL    # 1.035

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->soloBuffedBonus()I

    move-result v1

    int-to-double v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v9

    mul-double v7, v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "stats"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    invoke-virtual {v2, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "typical_stats"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->updateHT(Z)V

    :cond_0
    return-object p0
.end method
