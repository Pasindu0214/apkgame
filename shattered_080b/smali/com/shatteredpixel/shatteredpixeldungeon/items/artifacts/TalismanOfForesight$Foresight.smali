.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "TalismanOfForesight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Foresight"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 14

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 4
    rem-int v3, v1, v2

    .line 5
    div-int/2addr v1, v2

    add-int/lit8 v2, v3, -0x3

    const/4 v4, 0x0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    const/4 v5, 0x3

    add-int/2addr v3, v5

    .line 6
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 7
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const/4 v7, 0x1

    if-lt v3, v6, :cond_1

    add-int/lit8 v3, v6, -0x1

    :cond_1
    add-int/lit8 v6, v1, -0x3

    if-gez v6, :cond_2

    const/4 v6, 0x0

    :cond_2
    add-int/2addr v1, v5

    .line 8
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 9
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    if-lt v1, v8, :cond_3

    add-int/lit8 v1, v8, -0x1

    :cond_3
    const/4 v8, 0x0

    :goto_0
    if-gt v6, v1, :cond_6

    .line 10
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 11
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v9, v9, v6

    add-int/2addr v9, v2

    move v10, v2

    :goto_1
    if-gt v10, v3, :cond_5

    .line 12
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v12, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v12, v12, v9

    if-eqz v12, :cond_4

    iget-object v12, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->secret:[Z

    aget-boolean v12, v12, v9

    if-eqz v12, :cond_4

    iget-object v12, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v12, v12, v9

    const/16 v13, 0x10

    if-eq v12, v13, :cond_4

    .line 13
    iget-object v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v11, v9}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v11, v9}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    iget-boolean v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->canBeSearched:Z

    if-eqz v11, :cond_4

    const/4 v8, 0x1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-eqz v8, :cond_8

    .line 14
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    iget-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v2, :cond_8

    .line 15
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;->warn:I

    if-nez v1, :cond_7

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "uneasy"

    .line 16
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v2, :cond_7

    .line 18
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    .line 20
    iput v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;->warn:I

    goto :goto_2

    .line 21
    :cond_8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    .line 22
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;->warn:I

    if-lez v2, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 23
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;->warn:I

    .line 24
    :cond_9
    :goto_2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 25
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    .line 26
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge v3, v5, :cond_c

    iget-boolean v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v2, :cond_c

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->regenOn()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    :cond_a
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    float-to-double v2, v2

    const-wide v5, 0x3fa999999999999aL    # 0.05

    .line 28
    iget v8, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    int-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    .line 29
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    add-double/2addr v8, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v2

    double-to-float v2, v8

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_b

    .line 30
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge v3, v5, :cond_b

    sub-float/2addr v2, v0

    .line 31
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    add-int/2addr v3, v7

    .line 32
    iput v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 33
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_3

    .line 34
    :cond_b
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-lt v1, v2, :cond_c

    const/4 v1, 0x0

    .line 35
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "full_charge"

    .line 36
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_3
    return v7
.end method

.method public desc()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icon()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight$Foresight;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    .line 2
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;->warn:I

    if-nez v0, :cond_0

    const/16 v0, 0x3f

    return v0

    :cond_0
    const/16 v0, 0x20

    return v0
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
