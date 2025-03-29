.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfAntiMagic;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;
.source "ScrollOfAntiMagic.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;-><init>()V

    const/4 v0, 0x7

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doRead()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicImmune;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/4 v1, 0x5

    const/high16 v2, 0x42000000    # 32.0f

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    const/high16 v1, 0xff0000

    .line 5
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->setKnown()V

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->readAnimation()V

    return-void
.end method
