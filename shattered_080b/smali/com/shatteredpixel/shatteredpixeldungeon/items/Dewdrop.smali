.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Dewdrop;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Dewdrop.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->DEWDROP:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->dropsDownHeap:Z

    return-void
.end method


# virtual methods
.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;->isFull()Z

    move-result v4

    if-nez v4, :cond_1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "collected"

    .line 3
    invoke-static {v1, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;->volume:I

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;->volume:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_0

    .line 5
    iput v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/DewVial;->volume:I

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "full"

    .line 6
    invoke-static {v0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 10
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr v1, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 12
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v4

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v1, v4, v5, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 14
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v4, 0xff00

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "value"

    invoke-static {p0, v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v3, "snd_dewdrop.mp3"

    .line 16
    invoke-virtual {v0, v3, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 17
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return v2

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "already_full"

    .line 18
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-object p0
.end method
