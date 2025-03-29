.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Exhausting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Exhausting.java"


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
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Exhausting;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Exhausting;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 1

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p2, p1, :cond_0

    const/16 p1, 0xf

    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Weakness;

    const/4 p3, 0x5

    const/16 v0, 0x14

    invoke-static {p3, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_0
    return p4
.end method
