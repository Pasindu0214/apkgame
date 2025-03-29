.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "FireImbue.java"


# instance fields
.field public left:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->POSITIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->announced:Z

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v1, v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/16 v1, 0x9

    .line 2
    invoke-static {v2, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 5
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;->left:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;->left:F

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;->left:F

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->dispTurns(F)Ljava/lang/String;

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

    const/4 v0, 0x2

    return v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    .line 3
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    .line 5
    :goto_0
    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    const/high16 v1, 0x41000000    # 8.0f

    .line 6
    iput v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "left"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;->left:F

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;->left:F

    const-string v1, "left"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    return-void
.end method

.method public tintIcon(Lcom/watabou/noosa/Image;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;->left:F

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;->greyIcon(Lcom/watabou/noosa/Image;FF)V

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
