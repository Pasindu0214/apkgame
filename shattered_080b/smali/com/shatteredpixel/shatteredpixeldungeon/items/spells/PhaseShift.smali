.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/PhaseShift;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;
.source "PhaseShift.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/PhaseShift$Recipe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->PHASE_SHIFT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public affectTarget(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    if-ne p1, p2, :cond_0

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->teleportChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_7

    const/16 v0, 0xa

    .line 4
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eq v1, v3, :cond_6

    :goto_1
    const/4 p2, 0x0

    if-eq v1, v3, :cond_5

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array p1, p2, [Ljava/lang/Object;

    const-string v0, "tele_fail"

    .line 7
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 8
    :cond_3
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 9
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v2, :cond_4

    .line 10
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 11
    :cond_4
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 12
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean p2, p2, v1

    iput-boolean p2, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_3

    .line 13
    :cond_5
    :goto_2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "no_tele"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method public price()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v0, v0

    const/high16 v1, 0x410c0000    # 8.75f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
