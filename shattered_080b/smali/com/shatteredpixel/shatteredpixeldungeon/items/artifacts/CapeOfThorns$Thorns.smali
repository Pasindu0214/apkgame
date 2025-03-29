.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "CapeOfThorns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Thorns"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "inert"

    .line 4
    invoke-static {p0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v2
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->dispTurns(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public detach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;

    const/4 v1, 0x0

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    .line 2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    return-void
.end method

.method public icon()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    if-nez v0, :cond_0

    const/16 v0, 0x3f

    return v0

    :cond_0
    const/16 v0, 0x1f

    return v0
.end method

.method public proc(ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 2
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    int-to-double v6, v4

    int-to-double v8, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 3
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    int-to-double v12, v4

    const-wide v14, 0x3fa999999999999aL    # 0.05

    .line 4
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    add-double/2addr v12, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v6

    double-to-int v6, v12

    iput v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 5
    iget v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-lt v6, v7, :cond_0

    .line 6
    iput v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    add-int/lit8 v4, v4, 0xa

    .line 7
    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "radiating"

    .line 8
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 10
    :cond_0
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->cooldown:I

    if-eqz v3, :cond_2

    .line 11
    invoke-static {v5, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v3

    sub-int/2addr v1, v3

    if-eqz v2, :cond_1

    .line 12
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    move-object/from16 v7, p3

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v4, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v2, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 14
    :cond_1
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns$Thorns;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 15
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v6, v6, 0x5

    if-lt v4, v6, :cond_2

    .line 16
    iget v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge v3, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v4, v3

    .line 17
    iput v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 18
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "levelup"

    .line 19
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return v1
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
