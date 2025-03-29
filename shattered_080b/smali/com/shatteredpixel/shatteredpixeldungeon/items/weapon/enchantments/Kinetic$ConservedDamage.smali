.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Kinetic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConservedDamage"
.end annotation


# instance fields
.field public preservedDamage:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->preservedDamage:F

    const v1, 0x3ccccccd    # 0.025f

    mul-float v1, v1, v0

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->preservedDamage:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public damageBonus()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->preservedDamage:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->damageBonus()I

    move-result v1

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

    const/16 v0, 0x2d

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "preserve_damage"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->preservedDamage:F

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->preservedDamage:F

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    :goto_0
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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->preservedDamage:F

    const-string v1, "preserve_damage"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    return-void
.end method

.method public tintIcon(Lcom/watabou/noosa/Image;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic$ConservedDamage;->preservedDamage:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 2
    invoke-virtual {p1, v2, v1, v1}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    :cond_0
    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v5, v0, v4

    if-ltz v5, :cond_1

    sub-float/2addr v0, v4

    mul-float v0, v0, v3

    sub-float v0, v2, v0

    .line 3
    invoke-virtual {p1, v2, v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    :cond_1
    mul-float v0, v0, v3

    sub-float v0, v2, v0

    .line 4
    invoke-virtual {p1, v2, v2, v0}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    :goto_0
    return-void
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
