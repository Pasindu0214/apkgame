.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "TimekeepersHourglass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "timeStasis"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->POSITIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;->detach()V

    const/4 v0, 0x1

    return v0
.end method

.method public attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    .line 3
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 4
    move-object v2, p1

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    .line 5
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    invoke-static {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->isStarving()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->satisfy(F)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 9
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public detach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeStasis;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    return-void
.end method

.method public fx(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->INVISIBLE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->add(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->INVISIBLE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    :cond_1
    :goto_0
    return-void
.end method
