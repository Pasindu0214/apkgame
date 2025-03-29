.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "WandOfLivingEarth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RockArmor"
.end annotation


# instance fields
.field public armor:I

.field public wandLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->wandLevel:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->wandLevel:I

    .line 2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armorToGuardian()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    return-void
.end method


# virtual methods
.method public absorb(I)I
    .locals 2

    .line 1
    div-int/lit8 v0, p1, 0x2

    sub-int v0, p1, v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    if-gt v1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    :goto_0
    sub-int/2addr p1, v0

    return p1

    :cond_0
    sub-int/2addr v1, v0

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    goto :goto_0
.end method

.method public final armorToGuardian()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->wandLevel:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armorToGuardian()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "wand_level"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->wandLevel:I

    const-string v0, "armor"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->wandLevel:I

    const-string v1, "wand_level"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->armor:I

    const-string v1, "armor"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

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
