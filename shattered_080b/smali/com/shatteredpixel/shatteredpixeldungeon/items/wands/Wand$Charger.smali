.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Wand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Charger"
.end annotation


# instance fields
.field public scalingFactor:F

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    const/high16 p1, 0x3f600000    # 0.875f

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->scalingFactor:F

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v1, v0, :cond_3

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->scalingFactor:F

    float-to-double v4, v1

    int-to-double v0, v0

    .line 4
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    mul-double v0, v0, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v0, v4

    double-to-float v0, v0

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->regenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    div-float v0, v3, v0

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEnergy;->wandChargeMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v5

    mul-float v5, v5, v0

    add-float/2addr v5, v4

    iput v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Recharging;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Recharging;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    .line 10
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    const/high16 v6, 0x3e800000    # 0.25f

    .line 11
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v1, v1, v6

    add-float/2addr v1, v5

    .line 12
    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_4

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    iget v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    if-ge v4, v5, :cond_4

    sub-float/2addr v1, v3

    .line 14
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    add-int/lit8 v4, v4, 0x1

    .line 15
    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    .line 16
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    if-ne v1, v4, :cond_5

    .line 18
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    .line 19
    :cond_5
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    const/4 p1, 0x1

    return p1
.end method
