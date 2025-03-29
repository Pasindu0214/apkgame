.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Brimstone$BrimstoneShield;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;
.source "Brimstone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Brimstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrimstoneShield"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->POSITIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Brimstone;

    invoke-virtual {v1, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->detach()V

    :goto_0
    return v2

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->detach()V

    return v2
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "added"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->setShield(I)V

    :cond_0
    return-void
.end method
