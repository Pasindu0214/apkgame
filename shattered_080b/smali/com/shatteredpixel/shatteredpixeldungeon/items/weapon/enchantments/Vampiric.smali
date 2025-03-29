.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Vampiric;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Vampiric.java"


# static fields
.field public static RED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x660022

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Vampiric;->RED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;-><init>()V

    return-void
.end method


# virtual methods
.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Vampiric;->RED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 4

    .line 1
    iget p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int p3, p1, p3

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    const/high16 p1, 0x3e800000    # 0.25f

    mul-float p3, p3, p1

    const p1, 0x3d4ccccd    # 0.05f

    add-float/2addr p3, p1

    .line 2
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result p1

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    int-to-float p1, p4

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p1, p1, p3

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 4
    iget p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr p3, v0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    iget p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 7
    iget-object p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x1

    invoke-virtual {p3, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 8
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const p3, 0xff00

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p4
.end method
