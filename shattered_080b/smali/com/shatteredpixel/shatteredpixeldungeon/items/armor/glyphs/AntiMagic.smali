.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
.source "AntiMagic.java"


# static fields
.field public static final RESISTS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static TEAL:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x88eeff

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->TEAL:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    .line 5
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Weakness;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vulnerable;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hex;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Degrade;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DisintegrationTrap;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfDisintegration;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFrost;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfMagicMissile;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfPrismaticLight;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfTransfusion;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM100$LightningBolt;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Shaman$EarthenBolt;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Warlock$DarkBolt;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye$DeathGaze;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$BurningFist$DarkBolt;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$BrightFist$LightBeam;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$DarkFist$DarkBolt;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;-><init>()V

    return-void
.end method

.method public static drRoll(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x4

    .line 1
    invoke-static {p0, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->TEAL:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 0

    return p4
.end method
