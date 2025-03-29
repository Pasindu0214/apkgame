.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfPolymorph;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;
.source "ScrollOfPolymorph.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;-><init>()V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doRead()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/4 v1, 0x5

    const/high16 v2, 0x42000000    # 32.0f

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    const v2, 0xffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    .line 5
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "snd_read.mp3"

    .line 6
    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 9
    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v5, v6, :cond_1

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v5

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 11
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v5

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;-><init>()V

    const/high16 v6, 0x41200000    # 10.0f

    .line 13
    iput v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;->lifespan:F

    .line 14
    iget v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 15
    iget v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    rem-int/lit8 v7, v6, 0x2

    const/4 v8, 0x2

    if-ne v7, v1, :cond_0

    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v7

    add-int/2addr v7, v6

    iput v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 16
    :cond_0
    iget v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    div-int/2addr v6, v8

    iput v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 17
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 18
    iget-object v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v6}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 19
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 21
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 22
    iget v4, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 23
    invoke-virtual {v4, v5, v7, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->setKnown()V

    .line 25
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->readAnimation()V

    return-void
.end method
