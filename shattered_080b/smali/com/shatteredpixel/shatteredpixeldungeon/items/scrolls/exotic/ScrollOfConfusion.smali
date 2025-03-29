.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfConfusion;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;
.source "ScrollOfConfusion.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;-><init>()V

    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doRead()V
    .locals 6

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    .line 3
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vertigo;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 4
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Blindness;

    invoke-static {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->setKnown()V

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 7
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_read.mp3"

    .line 8
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 10
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->readAnimation()V

    return-void
.end method
