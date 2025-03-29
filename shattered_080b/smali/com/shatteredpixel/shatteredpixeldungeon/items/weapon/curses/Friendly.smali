.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Friendly;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Friendly.java"


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
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Friendly;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;-><init>()V

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Friendly;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 6

    .line 1
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    add-int/lit8 v2, v0, 0xa

    int-to-float v2, v2

    .line 3
    invoke-static {p2, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v3

    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;->object:I

    .line 4
    iget-object v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v4

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v4, v5, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 5
    invoke-static {p3, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result p2

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;->object:I

    .line 6
    iget-object p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p2

    invoke-virtual {p1, p2, v5, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_0
    return p4
.end method
