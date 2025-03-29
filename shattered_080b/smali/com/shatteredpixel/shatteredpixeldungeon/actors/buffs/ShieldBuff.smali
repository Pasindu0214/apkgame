.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "ShieldBuff.java"


# instance fields
.field public shielding:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method


# virtual methods
.method public absorbDamage(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    .line 3
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    move v1, p1

    .line 4
    :goto_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->detach()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    return v1
.end method

.method public attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public detach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "shielding"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    return-void
.end method

.method public setShield(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    const-string v1, "shielding"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
