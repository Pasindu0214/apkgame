.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Overgrowth;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
.source "Overgrowth.java"


# static fields
.field public static BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Overgrowth;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;-><init>()V

    return-void
.end method


# virtual methods
.method public curse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Overgrowth;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 2

    const/16 p1, 0x14

    .line 1
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    if-nez p1, :cond_2

    .line 2
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    .line 3
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush$Seed;

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;

    if-nez p2, :cond_0

    .line 4
    iget p2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;->couch(ILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    move-result-object p1

    .line 5
    instance-of p2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz p2, :cond_1

    move-object p2, p3

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    iput-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 7
    invoke-virtual {p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 8
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    iput-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 10
    :goto_0
    iget p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->LEVEL_SPECIFIC:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 p3, 0xa

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, p2, v0, p3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_2
    return p4
.end method
