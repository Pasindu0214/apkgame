.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAffection;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;
.source "StoneOfAffection.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_AFFECTION:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public activate(I)V
    .locals 8

    .line 1
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    add-int/2addr v3, p1

    .line 2
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v5

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 3
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v4, v5, :cond_0

    .line 5
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v4

    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;->object:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_charms.mp3"

    .line 7
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method
