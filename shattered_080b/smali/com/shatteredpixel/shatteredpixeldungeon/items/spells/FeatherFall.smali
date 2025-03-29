.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;
.source "FeatherFall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall$Recipe;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall$FeatherBuff;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->FEATHER_FALL:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public onCast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall$FeatherBuff;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 2
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_read.mp3"

    .line 4
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v2, 0x6a

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0, v2, v4, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "light"

    .line 7
    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 10
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return-void
.end method

.method public price()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v0, v0

    const/high16 v1, 0x420c0000    # 35.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
