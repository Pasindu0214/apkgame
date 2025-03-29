.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute$BruteRage;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;
.source "Brute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BruteRage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->POSITIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->detach()V

    return v1

    :cond_0
    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->absorbDamage(I)I

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    if-gtz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->die(Ljava/lang/Object;)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v1
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
