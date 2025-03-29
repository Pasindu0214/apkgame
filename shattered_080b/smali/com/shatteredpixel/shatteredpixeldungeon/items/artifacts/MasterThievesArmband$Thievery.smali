.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "MasterThievesArmband.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Thievery"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    if-lez v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    sub-int/2addr v0, v1

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v1

    :cond_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    return v1
.end method

.method public detach()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    int-to-double v1, v1

    const-wide v3, 0x3fee666666666666L    # 0.95

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    return-void
.end method

.method public stealChance(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    .line 2
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int/lit8 v1, v0, 0x32

    mul-int v0, v0, p1

    .line 3
    div-int/lit8 v0, v0, 0x1e

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    int-to-float v1, v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1
.end method
