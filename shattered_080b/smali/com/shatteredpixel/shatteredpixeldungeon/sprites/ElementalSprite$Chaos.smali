.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Chaos;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;
.source "ElementalSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chaos"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;-><init>()V

    return-void
.end method


# virtual methods
.method public blood()I
    .locals 1

    const v0, -0x1c1c1d

    return v0
.end method

.method public createEmitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/RainbowParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x0

    const v3, 0x3ccccccd    # 0.025f

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-object v0
.end method

.method public texOffset()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public zap(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;

    .line 4
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->zap()V

    .line 5
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    .line 6
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_zap.mp3"

    .line 7
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method
