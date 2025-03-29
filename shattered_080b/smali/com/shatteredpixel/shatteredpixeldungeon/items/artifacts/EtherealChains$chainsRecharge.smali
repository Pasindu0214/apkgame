.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "EtherealChains.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "chainsRecharge"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    .line 2
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v3, v0, :cond_1

    iget-boolean v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->regenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v3, 0x42200000    # 40.0f

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v0, v0, v5

    sub-float/2addr v3, v0

    div-float v0, v4, v3

    add-float/2addr v0, v2

    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/4 v2, 0x1

    cmpl-float v3, v1, v4

    if-ltz v3, :cond_3

    sub-float/2addr v1, v4

    .line 9
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 10
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 11
    :cond_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 12
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v2
.end method
