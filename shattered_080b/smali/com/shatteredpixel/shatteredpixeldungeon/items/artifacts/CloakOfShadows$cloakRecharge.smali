.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "CloakOfShadows.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "cloakRecharge"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    .line 4
    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->regenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 7
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    :cond_1
    const/high16 v0, 0x42340000    # 45.0f

    sub-float/2addr v0, v1

    .line 8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    div-float v0, v5, v0

    add-float/2addr v0, v2

    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    cmpl-float v2, v1, v5

    if-ltz v2, :cond_4

    .line 10
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-float/2addr v1, v5

    .line 11
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 12
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ne v2, v1, :cond_4

    .line 13
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    goto :goto_0

    .line 14
    :cond_3
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 15
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    if-lez v1, :cond_5

    sub-int/2addr v1, v4

    .line 16
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    .line 17
    :cond_5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 18
    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v4
.end method
