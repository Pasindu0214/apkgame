.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Momentum.java"


# instance fields
.field public stacks:I

.field public turnsSinceMove:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->POSITIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->turnsSinceMove:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->turnsSinceMove:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->turnsSinceMove:I

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 2
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v1
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "stacks"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    const-string v0, "turnsSinceMove"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->turnsSinceMove:I

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    const-string v1, "stacks"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->turnsSinceMove:I

    const-string v1, "turnsSinceMove"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public tintIcon(Lcom/watabou/noosa/Image;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x5

    if-gt v0, v4, :cond_0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 2
    invoke-virtual {p1, v0, v3, v1}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x6

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-float v0, v3, v0

    .line 3
    invoke-virtual {p1, v3, v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    :goto_0
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
