.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Combo.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;
    }
.end annotation


# instance fields
.field public comboTime:F

.field public count:I

.field public finisher:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

.field public misses:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->misses:I

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->finisher:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    .line 2
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 5
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 6
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public desc()Ljava/lang/String;
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "desc"

    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const-string v4, "\n\n"

    const/16 v5, 0xa

    if-lt v3, v5, :cond_0

    invoke-static {v2, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "fury_desc"

    .line 3
    invoke-static {v0, v3, v1, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    if-lt v3, v5, :cond_1

    .line 4
    invoke-static {v2, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "crush_desc"

    .line 5
    invoke-static {v0, v3, v1, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x6

    if-lt v3, v5, :cond_2

    .line 6
    invoke-static {v2, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "slam_desc"

    .line 7
    invoke-static {v0, v3, v1, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    if-lt v3, v5, :cond_3

    .line 8
    invoke-static {v2, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "cleave_desc"

    .line 9
    invoke-static {v0, v3, v1, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-lt v3, v5, :cond_4

    .line 10
    invoke-static {v2, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "clobber_desc"

    .line 11
    invoke-static {v0, v3, v1, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_0
    return-object v2
.end method

.method public detach()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    return-void
.end method

.method public doAction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->finisher:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    return-void
.end method

.method public getIcon()Lcom/watabou/noosa/Image;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-object v1, v0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;)V

    invoke-direct {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 4
    :goto_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Visual;->tint(I)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    const/16 v0, -0x3400

    .line 5
    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Visual;->tint(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x6

    if-lt v0, v2, :cond_3

    const/16 v0, -0x100

    .line 6
    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Visual;->tint(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    if-lt v0, v2, :cond_4

    const v0, -0x330100

    .line 7
    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Visual;->tint(I)V

    goto :goto_1

    :cond_4
    const v0, -0xff0100

    .line 8
    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Visual;->tint(I)V

    :goto_1
    return-object v1
.end method

.method public hit()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->misses:I

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 5
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 6
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->updateIcon()V

    .line 8
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    .line 9
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MASTERY_COMBO:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 10
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MASTERY_COMBO:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 11
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "combo"

    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public miss()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->misses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->misses:I

    const/high16 v1, 0x40800000    # 4.0f

    .line 2
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 4
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    :cond_0
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "count"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->updateIcon()V

    :cond_0
    const-string v0, "combotime"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    const-string v0, "misses"

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->misses:I

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const-string v1, "count"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    const-string v1, "combotime"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->misses:I

    const-string v1, "misses"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public tintIcon(Lcom/watabou/noosa/Image;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->comboTime:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->resetColor()V

    goto :goto_0

    :cond_0
    const v2, 0xb3b3b3

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v3, v3, v0

    div-float/2addr v3, v1

    add-float/2addr v3, v0

    .line 3
    invoke-virtual {p1, v2, v3}, Lcom/watabou/noosa/Visual;->tint(IF)V

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
