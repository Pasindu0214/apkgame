.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$hourglassRecharge;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "TimekeepersHourglass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "hourglassRecharge"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$hourglassRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$hourglassRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_1

    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->regenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$hourglassRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-int v7, v3, v6

    int-to-float v7, v7

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v7, v7, v8

    sub-float/2addr v2, v7

    div-float v2, v5, v2

    add-float/2addr v2, v1

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    cmpl-float v1, v2, v5

    if-ltz v1, :cond_2

    sub-float/2addr v2, v5

    .line 4
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    add-int/2addr v6, v4

    .line 5
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-ne v6, v3, :cond_2

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$hourglassRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 9
    :cond_2
    :goto_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 10
    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v4
.end method
