.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;
.source "BrokenSeal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarriorShield"
.end annotation


# instance fields
.field public armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

.field public partialShield:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;-><init>()V

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

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->setShield(I)V

    move v1, p1

    :goto_0
    return v1
.end method

.method public declared-synchronized act()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->maxShield()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->partialShield:F

    const v1, 0x3d088889

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->partialShield:F

    .line 4
    :cond_0
    :goto_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->partialShield:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->partialShield:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->partialShield:F

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    if-gtz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->maxShield()I

    move-result v0

    if-gtz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->detach()V

    .line 11
    :cond_2
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized maxShield()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->tier:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setArmor(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized supercharge(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    if-le p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
