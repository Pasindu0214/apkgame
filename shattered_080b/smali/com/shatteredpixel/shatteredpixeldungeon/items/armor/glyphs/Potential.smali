.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Potential;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
.source "Potential.java"


# static fields
.field public static WHITE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v1, 0xffffff

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Potential;->WHITE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;-><init>()V

    return-void
.end method


# virtual methods
.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Potential;->WHITE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->buffedLvl()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    instance-of p2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    const/4 p2, 0x5

    if-lt p1, p2, :cond_0

    .line 3
    move-object p1, p3

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->charge(F)I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EnergyParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 p3, 0xa

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0, p3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_0
    return p4
.end method
