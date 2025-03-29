.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Grim;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Grim.java"


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
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Grim;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Grim;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    iget v1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr v1, p4

    if-gtz v1, :cond_0

    return p4

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3d4ccccd    # 0.05f

    int-to-float v0, v0

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    .line 3
    iget v2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    sub-int v1, v2, v1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    .line 4
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 5
    iget v0, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    invoke-virtual {p3, v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 8
    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result p3

    if-nez p3, :cond_1

    instance-of p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz p3, :cond_1

    const-class p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Grim;

    .line 9
    invoke-virtual {p1, p3, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GRIM_WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GRIM_WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 12
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_1
    return p4
.end method
