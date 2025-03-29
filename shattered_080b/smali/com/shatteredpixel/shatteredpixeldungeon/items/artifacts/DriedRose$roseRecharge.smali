.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "DriedRose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "roseRecharge"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 3
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 7
    iput-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 9
    iput v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 11
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    const-string v3, "DIRECT"

    .line 12
    iput-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 13
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ge v3, v2, :cond_2

    .line 14
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 15
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 16
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    .line 17
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    .line 18
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-float/2addr v2, v0

    .line 19
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    goto :goto_1

    .line 20
    :cond_2
    iput v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    :cond_3
    :goto_1
    return v5

    :cond_4
    const-string v2, "SUMMON"

    .line 21
    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    .line 23
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    iget v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v7, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge v6, v7, :cond_6

    iget-boolean v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v2, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->regenOn()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24
    :cond_5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const v6, 0x3e4ccccd    # 0.2f

    add-float/2addr v2, v6

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    cmpl-float v6, v2, v0

    if-lez v6, :cond_a

    .line 25
    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    add-int/2addr v6, v5

    iput v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-float/2addr v2, v0

    .line 26
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 27
    iget v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ne v6, v0, :cond_a

    .line 28
    iput v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 29
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "charged"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 30
    :cond_6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$roseRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_a

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :goto_2
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v4, v2

    if-ge v3, v4, :cond_9

    .line 33
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v2, v2, v3

    add-int/2addr v4, v2

    .line 34
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v6, v6, v4

    if-nez v6, :cond_7

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_8

    .line 35
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 36
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 37
    invoke-static {v1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->spawnAt(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;

    .line 38
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_cursed.mp3"

    .line 39
    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 40
    :cond_a
    :goto_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return v5
.end method
